context("landscape level lsm_l_np metric")

landscapemetrics_landscape_landscape_value <- lsm_l_np(landscape)

test_that("lsm_l_np is typestable", {
    expect_is(lsm_l_np(landscape), "tbl_df")
    expect_is(lsm_l_np(landscape_stack), "tbl_df")
    expect_is(lsm_l_np(landscape_brick), "tbl_df")
    expect_is(lsm_l_np(landscape_list), "tbl_df")
})

test_that("lsm_l_np returns the desired number of columns", {
    expect_equal(ncol(landscapemetrics_landscape_landscape_value), 6)
})

test_that("lsm_l_np returns in every column the correct type", {
    expect_type(landscapemetrics_landscape_landscape_value$layer, "integer")
    expect_type(landscapemetrics_landscape_landscape_value$level, "character")
    expect_type(landscapemetrics_landscape_landscape_value$class, "integer")
    expect_type(landscapemetrics_landscape_landscape_value$id, "integer")
    expect_type(landscapemetrics_landscape_landscape_value$metric, "character")
    expect_type(landscapemetrics_landscape_landscape_value$value, "double")
})

