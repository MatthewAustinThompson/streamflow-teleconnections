library(WaveletComp)
library(biwavelet)

# Load data
df_10U <- read.csv("/Users/matthewthompson/Documents/UVM_Year05/Semester02/CS387/Project/Data/DataFrames/df_10U.csv")
attach(df_10U)
df_10U

# Testing WaveletComp
dt = 1/12

my.wc <- analyze.coherency(df_10U, my.pair = c("weibull_jd","amo"),
                            loess.span = 0, dt = 1, dj = 1/200,
                            window.type.t = 1, window.type.s = 1,
                            window.size.t = 5, window.size.s = 1,
                            make.pval = TRUE, n.sim = 10)

wc.image(my.wc, which.image = "wc", color.key = "interval", n.levels = 250,
         siglvl.contour = 0.1, siglvl.arrow = 0.05,
         legend.params = list(lab = "wavelet coherence levels"),
         timelab = "")

# Testing biwavelets
t1 = cbind(index, weibull_jd)
t2 = cbind(index, amo)
nrands = 1000

wtc.AB = wtc(t1, t2, nrands = nrands)

par(oma = c(0, 0, 0, 1), mar = c(5, 4, 5, 5) + 0.1)
plot(wtc.AB, type = "power.corr.norm", plot.phase = TRUE, lty.coi = 1, col.coi = "grey", 
     lwd.coi = 2, lwd.sig = 2, arrow.lwd = 0.03, arrow.len = 0.12, ylab = "Scale",  
     xlab = "Period", plot.cb = TRUE, main = "Wavelet Coherence: A vs B")
n = length(t1[, 1])
axis(side = 3, at = c(seq(0, n, 12)), labels = c(seq(1980, 2016, 1)))


