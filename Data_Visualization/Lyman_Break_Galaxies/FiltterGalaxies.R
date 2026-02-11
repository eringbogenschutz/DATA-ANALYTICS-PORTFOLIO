rm(list = ls())

# Name: Erin Bogenschutz
# Email: ebogenschutz@wisc.edu

library(FITSio)

# --- Read cB58 ---
cb58 <- readFrameFromFITS("cB58_Lyman_break.fit")
cb_flux <- (cb58$FLUX - mean(cb58$FLUX)) / sd(cb58$FLUX)
n_cb <- length(cb_flux)

# --- List spectra files ---
spec_files <- list.files("data", pattern = "\\.fits$", full.names = TRUE)

results <- data.frame(
  distance = numeric(),
  spectrumID = character(),
  shift = integer(),
  stringsAsFactors = FALSE
)

# Simple moving average function to smooth noise
smooth_flux <- function(x, k = 3) {
  filter <- rep(1/k, k)
  stats::filter(x, filter, sides = 2)
}

# --- Loop over spectra ---
for (f in spec_files) {
  spec <- readFrameFromFITS(f)
  flux <- (spec$flux - mean(spec$flux)) / sd(spec$flux)
  
  # Smooth the flux lightly
  flux <- as.numeric(smooth_flux(flux, k = 5))
  
  best_dist <- Inf
  best_shift <- NA
  max_shift <- length(flux) - n_cb
  
  for (i in 1:max_shift) {
    segment <- flux[i:(i + n_cb - 1)]
    
    # Skip if NA due to smoothing at edges
    if (any(is.na(segment))) next
    
    # Euclidean distance on full flux
    dist_val <- sum((cb_flux - segment)^2)
    
    if (dist_val < best_dist) {
      best_dist <- dist_val
      best_shift <- i
    }
  }
  
  results <- rbind(
    results,
    data.frame(
      distance = best_dist,
      spectrumID = basename(f),
      i = best_shift
    )
  )
}

# --- Sort and write ---
results <- results[order(results$distance), ]
write.csv(results, "hw2.csv", row.names = FALSE)
