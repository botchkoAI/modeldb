package ai.verta.modeldb.config;

import ai.verta.modeldb.ModelDBConstants;
import ai.verta.modeldb.common.CommonUtils;
import ai.verta.modeldb.common.config.DatabaseConfig;
import ai.verta.modeldb.common.config.InvalidConfigException;
import ai.verta.modeldb.common.config.RdbConfig;
import ai.verta.modeldb.common.exceptions.InternalErrorException;
import ai.verta.modeldb.common.exceptions.ModelDBException;
import ai.verta.modeldb.common.futures.FutureGrpc;
import ai.verta.modeldb.common.futures.FutureJdbi;
import com.zaxxer.hikari.HikariDataSource;
import com.zaxxer.hikari.metrics.prometheus.PrometheusMetricsTrackerFactory;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.Executor;
import org.jdbi.v3.core.Jdbi;
import org.yaml.snakeyaml.Yaml;
import org.yaml.snakeyaml.constructor.Constructor;

public class Config extends ai.verta.modeldb.common.config.Config {

  private static Config config = null;
  public String starterProject;
  public ArtifactStoreConfig artifactStoreConfig;
  public TelemetryConfig telemetry;
  public TrialConfig trial;
  public List<MigrationConfig> migrations;
  private FutureJdbi jdbi;
  public int jdbi_retry_time = 100; // Time in ms

  public static Config getInstance() throws InternalErrorException {
    if (config == null) {
      try {
        Yaml yaml = new Yaml(new Constructor(Config.class));
        String filePath = System.getenv(ModelDBConstants.VERTA_MODELDB_CONFIG);
        filePath = CommonUtils.appendOptionalTelepresencePath(filePath);
        InputStream inputStream = new FileInputStream(filePath);
        config = yaml.loadAs(inputStream, Config.class);
        config.Validate();
      } catch (ModelDBException ex) {
        throw ex;
      } catch (NullPointerException ex) {
        throw ex;
      } catch (Exception ex) {
        throw new InternalErrorException(ex.getMessage());
      }
    }
    return config;
  }

  public void Validate() throws InvalidConfigException {
    super.Validate();

    if (artifactStoreConfig == null)
      throw new InvalidConfigException("artifactStoreConfig", MISSING_REQUIRED);
    artifactStoreConfig.Validate("artifactStoreConfig");

    if (service_user != null) {
      service_user.Validate("service_user");
    }

    if (telemetry == null) telemetry = new TelemetryConfig();
    telemetry.Validate("telemetry");

    if (trial != null) {
      trial.Validate("trial");
    }

    if (migrations != null) {
      for (MigrationConfig migrationConfig : migrations) {
        migrationConfig.Validate("migration");
      }
    }
  }

  @Override
  public boolean hasServiceAccount() {
    return service_user != null;
  }

  public FutureJdbi getJdbi() {
    if (this.jdbi == null) {
      // Initialize HikariCP and jdbi
      final var databaseConfig = config.database;
      this.jdbi = initializeJdbi(databaseConfig);
    }
    return this.jdbi;
  }

  public FutureJdbi getTestJdbi() {
    if (this.jdbi == null) {
      // Initialize HikariCP and jdbi
      final var databaseConfig = config.test.database;
      this.jdbi = initializeJdbi(databaseConfig);
    }
    return this.jdbi;
  }

  private FutureJdbi initializeJdbi(DatabaseConfig databaseConfig) {
    final var hikariDataSource = new HikariDataSource();
    final var dbUrl = RdbConfig.buildDatabaseConnectionString(databaseConfig.RdbConfiguration);
    hikariDataSource.setJdbcUrl(dbUrl);
    hikariDataSource.setUsername(databaseConfig.RdbConfiguration.RdbUsername);
    hikariDataSource.setPassword(databaseConfig.RdbConfiguration.RdbPassword);
    hikariDataSource.setMinimumIdle(Integer.parseInt(databaseConfig.minConnectionPoolSize));
    hikariDataSource.setMaximumPoolSize(Integer.parseInt(databaseConfig.maxConnectionPoolSize));
    hikariDataSource.setRegisterMbeans(true);
    hikariDataSource.setMetricsTrackerFactory(new PrometheusMetricsTrackerFactory());
    hikariDataSource.setPoolName("modeldb");

    final Jdbi jdbi = Jdbi.create(hikariDataSource);
    final Executor dbExecutor = FutureGrpc.initializeExecutor(databaseConfig.threadCount);
    return new FutureJdbi(jdbi, dbExecutor);
  }
}
