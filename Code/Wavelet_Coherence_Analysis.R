library(biwavelet)

# 10U
df_10U <- read.csv("/Users/matthewthompson/Documents/UVM_Year05/Semester02/CS387/Project/Data/DataFrames/df_10U.csv")
attach(df_10U)
region = 'Upper Missouri'
nrands = 1000

# AMO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. AMO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, amo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# ENSO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. ENSO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, enso)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PDO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PDO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pdo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PNA
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PNA")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pna)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - North
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - North")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_n)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - South
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - South")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_s)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)


# 11
df_11 <- read.csv("/Users/matthewthompson/Documents/UVM_Year05/Semester02/CS387/Project/Data/DataFrames/df_11.csv")
attach(df_11)
region = 'Arkansas-White-Red'
nrands = 1000

# AMO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. AMO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, amo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# ENSO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. ENSO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, enso)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PDO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PDO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pdo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PNA
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PNA")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pna)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - North
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - North")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_n)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - South
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - South")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_s)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)


# 13
df_13 <- read.csv("/Users/matthewthompson/Documents/UVM_Year05/Semester02/CS387/Project/Data/DataFrames/df_13.csv")
attach(df_13)
region = 'Rio Grande'
nrands = 1000

# AMO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. AMO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, amo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# ENSO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. ENSO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, enso)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PDO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PDO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pdo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PNA
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PNA")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pna)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - North
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - North")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_n)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - South
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - South")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_s)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)


# 14
df_14 <- read.csv("/Users/matthewthompson/Documents/UVM_Year05/Semester02/CS387/Project/Data/DataFrames/df_14.csv")
attach(df_14)
region = 'Upper Colorado'
nrands = 1000

# AMO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. AMO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, amo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# ENSO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. ENSO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, enso)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PDO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PDO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pdo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PNA
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PNA")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pna)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - North
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - North")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_n)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - South
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - South")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_s)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)


# 15
df_15 <- read.csv("/Users/matthewthompson/Documents/UVM_Year05/Semester02/CS387/Project/Data/DataFrames/df_15.csv")
attach(df_15)
region = 'Lower Colorado'
nrands = 1000

# AMO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. AMO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, amo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# ENSO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. ENSO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, enso)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PDO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PDO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pdo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PNA
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PNA")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pna)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - North
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - North")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_n)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - South
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - South")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_s)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)


# 17
df_17 <- read.csv("/Users/matthewthompson/Documents/UVM_Year05/Semester02/CS387/Project/Data/DataFrames/df_17.csv")
attach(df_17)
region = 'Pacific Northwest'
nrands = 1000

# AMO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. AMO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, amo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# ENSO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. ENSO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, enso)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PDO
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PDO")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pdo)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# PNA
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. PNA")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, pna)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - North
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - North")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_n)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)

# Sun Spots - South
# Initialize variables
title = paste0("Wavelet Coherence - ", region, ": Streamflow vs. Sun Spots - South")
t1 = cbind(X, weibull_jd)
t2 = cbind(X, sun_s)
n = length(t1[, 1])

# Run wavelet coherence
wtc.AB = wtc(t1, t2, nrands = nrands, max.scale = 220)

# Construct plot
par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Period (months)",  
     xlab = "Time (months)", plot.cb = TRUE, main = title)
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))
text(par("usr")[2] + 74, 3.4, srt=-90, adj = 0, labels = "Power Level", 
     xpd = TRUE)
