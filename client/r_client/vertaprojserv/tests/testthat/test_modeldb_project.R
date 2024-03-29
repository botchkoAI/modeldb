# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ModeldbProject")

model.instance <- ModeldbProject$new()

test_that("id", {
  # tests for the property `id` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`id`, "EXPECTED_RESULT")
})

test_that("name", {
  # tests for the property `name` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("description", {
  # tests for the property `description` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`description`, "EXPECTED_RESULT")
})

test_that("date_created", {
  # tests for the property `date_created` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`date_created`, "EXPECTED_RESULT")
})

test_that("date_updated", {
  # tests for the property `date_updated` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`date_updated`, "EXPECTED_RESULT")
})

test_that("short_name", {
  # tests for the property `short_name` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`short_name`, "EXPECTED_RESULT")
})

test_that("readme_text", {
  # tests for the property `readme_text` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`readme_text`, "EXPECTED_RESULT")
})

test_that("project_visibility", {
  # tests for the property `project_visibility` (ModeldbProjectVisibility)

  # uncomment below to test the property 
  #expect_equal(model.instance$`project_visibility`, "EXPECTED_RESULT")
})

test_that("workspace_id", {
  # tests for the property `workspace_id` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`workspace_id`, "EXPECTED_RESULT")
})

test_that("workspace_type", {
  # tests for the property `workspace_type` (WorkspaceTypeEnumWorkspaceType)

  # uncomment below to test the property 
  #expect_equal(model.instance$`workspace_type`, "EXPECTED_RESULT")
})

test_that("workspace_service_id", {
  # tests for the property `workspace_service_id` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`workspace_service_id`, "EXPECTED_RESULT")
})

test_that("custom_permission", {
  # tests for the property `custom_permission` (UacCollaboratorPermissions)

  # uncomment below to test the property 
  #expect_equal(model.instance$`custom_permission`, "EXPECTED_RESULT")
})

test_that("visibility", {
  # tests for the property `visibility` (UacResourceVisibility)

  # uncomment below to test the property 
  #expect_equal(model.instance$`visibility`, "EXPECTED_RESULT")
})

test_that("attributes", {
  # tests for the property `attributes` (array[CommonKeyValue])

  # uncomment below to test the property 
  #expect_equal(model.instance$`attributes`, "EXPECTED_RESULT")
})

test_that("tags", {
  # tests for the property `tags` (array[character])

  # uncomment below to test the property 
  #expect_equal(model.instance$`tags`, "EXPECTED_RESULT")
})

test_that("owner", {
  # tests for the property `owner` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`owner`, "EXPECTED_RESULT")
})

test_that("code_version_snapshot", {
  # tests for the property `code_version_snapshot` (ModeldbCodeVersion)

  # uncomment below to test the property 
  #expect_equal(model.instance$`code_version_snapshot`, "EXPECTED_RESULT")
})

test_that("artifacts", {
  # tests for the property `artifacts` (array[CommonArtifact])

  # uncomment below to test the property 
  #expect_equal(model.instance$`artifacts`, "EXPECTED_RESULT")
})

