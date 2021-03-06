if (skip_on_cran()) {
  context("Testing MPdist")
  library(tsmp)

  ref_data <- mp_toy_data$data[, 1]
  qe_data <- mp_toy_data$data[, 2]
  qd_data <- mp_toy_data$data[150:200, 1]
  w <- mp_toy_data$sub_len

  # distance between data of same size
  deq <- mpdist(ref_data, qe_data, w)

  # distance between data of different sizes
  ddiff <- mpdist(qe_data, qd_data, w)

  # distance vector between data of different sizes
  ddvect <- mpdist(ref_data, qd_data, w, type = "vector")

  test_that("MPdist", {
    expect_equal(round(deq, 5), 1.87054)
    expect_equal(round(ddiff, 5), 4.32203)
    expect_equal(round(mean(ddvect$mpdist), 5), 4.64784)
    expect_equal(round(sd(ddvect$mpdist), 5), 1.54083)
  })
}
