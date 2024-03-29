# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test ModeldbGetSummaryResponse")

model.instance <- ModeldbGetSummaryResponse$new()

test_that("name", {
  # tests for the property `name` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`name`, "EXPECTED_RESULT")
})

test_that("last_updated_time", {
  # tests for the property `last_updated_time` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`last_updated_time`, "EXPECTED_RESULT")
})

test_that("total_experiment", {
  # tests for the property `total_experiment` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`total_experiment`, "EXPECTED_RESULT")
})

test_that("total_experiment_runs", {
  # tests for the property `total_experiment_runs` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`total_experiment_runs`, "EXPECTED_RESULT")
})

test_that("last_modified_experimentRun_summary", {
  # tests for the property `last_modified_experimentRun_summary` (ModeldbLastModifiedExperimentRunSummary)

  # uncomment below to test the property 
  #expect_equal(model.instance$`last_modified_experimentRun_summary`, "EXPECTED_RESULT")
})

test_that("metrics", {
  # tests for the property `metrics` (array[ModeldbMetricsSummary])

  # uncomment below to test the property 
  #expect_equal(model.instance$`metrics`, "EXPECTED_RESULT")
})

