package ai.verta.modeldb;

import ai.verta.modeldb.artifactStore.ArtifactStoreDAO;
import ai.verta.modeldb.artifactStore.ArtifactStoreDAODisabled;
import ai.verta.modeldb.artifactStore.ArtifactStoreDAORdbImpl;
import ai.verta.modeldb.audit_log.AuditLogLocalDAO;
import ai.verta.modeldb.audit_log.AuditLogLocalDAODisabled;
import ai.verta.modeldb.audit_log.AuditLogLocalDAORdbImpl;
import ai.verta.modeldb.authservice.PublicAuthServiceUtils;
import ai.verta.modeldb.comment.CommentDAO;
import ai.verta.modeldb.comment.CommentDAORdbImpl;
import ai.verta.modeldb.common.futures.FutureJdbi;
import ai.verta.modeldb.config.Config;
import ai.verta.modeldb.dataset.DatasetDAO;
import ai.verta.modeldb.dataset.DatasetDAORdbImpl;
import ai.verta.modeldb.datasetVersion.DatasetVersionDAO;
import ai.verta.modeldb.datasetVersion.DatasetVersionDAORdbImpl;
import ai.verta.modeldb.experiment.ExperimentDAO;
import ai.verta.modeldb.experiment.ExperimentDAORdbImpl;
import ai.verta.modeldb.experimentRun.ExperimentRunDAO;
import ai.verta.modeldb.experimentRun.ExperimentRunDAORdbImpl;
import ai.verta.modeldb.experimentRun.FutureExperimentRunDAO;
import ai.verta.modeldb.lineage.LineageDAO;
import ai.verta.modeldb.lineage.LineageDAORdbImpl;
import ai.verta.modeldb.metadata.MetadataDAO;
import ai.verta.modeldb.metadata.MetadataDAORdbImpl;
import ai.verta.modeldb.project.FutureProjectDAO;
import ai.verta.modeldb.project.ProjectDAO;
import ai.verta.modeldb.project.ProjectDAORdbImpl;
import ai.verta.modeldb.versioning.*;
import java.util.concurrent.Executor;

public class DAOSet {
  public AuditLogLocalDAO auditLogLocalDAO;
  public ArtifactStoreDAO artifactStoreDAO;
  public BlobDAO blobDAO;
  public CommentDAO commentDAO;
  public CommitDAO commitDAO;
  public DatasetDAO datasetDAO;
  public DatasetVersionDAO datasetVersionDAO;
  public ExperimentDAO experimentDAO;
  public ExperimentRunDAO experimentRunDAO;
  public FutureExperimentRunDAO futureExperimentRunDAO;
  public FutureProjectDAO futureProjectDAO;
  public LineageDAO lineageDAO;
  public MetadataDAO metadataDAO;
  public ProjectDAO projectDAO;
  public RepositoryDAO repositoryDAO;
  private static Config config = Config.getInstance();

  public static DAOSet fromServices(
      ServiceSet services, FutureJdbi jdbi, Executor executor, Config config) {
    DAOSet set = new DAOSet();

    set.metadataDAO = new MetadataDAORdbImpl();
    set.commitDAO = new CommitDAORdbImpl(services.authService, services.roleService);
    set.repositoryDAO =
        new RepositoryDAORdbImpl(
            services.authService, services.roleService, set.commitDAO, set.metadataDAO);
    set.blobDAO = new BlobDAORdbImpl(services.authService, services.roleService);

    set.experimentDAO = new ExperimentDAORdbImpl(services.authService, services.roleService);
    set.experimentRunDAO =
        new ExperimentRunDAORdbImpl(
            services.authService,
            services.roleService,
            set.repositoryDAO,
            set.commitDAO,
            set.blobDAO,
            set.metadataDAO);
    set.projectDAO =
        new ProjectDAORdbImpl(
            services.authService, services.roleService, set.experimentDAO, set.experimentRunDAO);
    set.futureProjectDAO = new FutureProjectDAO(executor, jdbi, services.uac);
    if (services.artifactStoreService != null) {
      set.artifactStoreDAO = new ArtifactStoreDAORdbImpl(services.artifactStoreService);
    } else {
      set.artifactStoreDAO = new ArtifactStoreDAODisabled();
    }

    set.commentDAO = new CommentDAORdbImpl(services.authService);
    set.datasetDAO = new DatasetDAORdbImpl(services.authService, services.roleService);
    set.lineageDAO = new LineageDAORdbImpl();
    set.datasetVersionDAO =
        new DatasetVersionDAORdbImpl(services.authService, services.roleService);
    if ((services.authService instanceof PublicAuthServiceUtils) || config.disabled_audits) {
      set.auditLogLocalDAO = new AuditLogLocalDAODisabled();
    } else {
      set.auditLogLocalDAO = new AuditLogLocalDAORdbImpl();
    }

    set.futureExperimentRunDAO =
        new FutureExperimentRunDAO(
            executor,
            jdbi,
            config,
            services.uac,
            set.artifactStoreDAO,
            set.datasetVersionDAO,
            set.repositoryDAO,
            set.commitDAO,
            set.blobDAO);

    return set;
  }

  private DAOSet() {}
}
