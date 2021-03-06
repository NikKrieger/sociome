context("Test tidycensus-related functions")

test_that("get_adi(), calculate_adi() works", {
  
  skip_if(Sys.getenv("CENSUS_API_KEY") == "")
  
  expect_equivalent(
    get_adi(
      geography = "county",
      state = "NM",
      year = 2017,
      dataset = "acs5",
      keep_indicators = TRUE,
      cache_tables = FALSE
    ),
    nmcounties2017
  )
  
  expect_equivalent(
    get_adi(
      geography = "county",
      state = "NM",
      year = 2010,
      dataset = "decennial",
      keep_indicators = TRUE,
      cache_tables = FALSE
    ),
    nmcounties2010
  )
  
  skip(
    paste0("2000 decennial data are currently unavailable.",
           "\nWe will reinstate these tests if they are ever restored.")
  )
  
  expect_equivalent(
    get_adi(
      geography = "county",
      state = "NM",
      year = 2000,
      dataset = "decennial",
      keep_indicators = TRUE,
      cache_tables = FALSE
    ),
    nmcounties2000
  )
  
  skip(
    paste0("1990 decennial data are currently unavailable.",
           "\nWe will reinstate these tests if they are ever restored.")
  )
  
  expect_equivalent(
    get_adi(
      geography = "county",
      state = "NM",
      year = 1990,
      dataset = "decennial",
      keep_indicators = TRUE,
      cache_tables = FALSE
    ),
    nmcounties1990
  )
  
})