# /s/ duration
s.duration.hom = c(55.08,78.11,64.71,67.00,60.45,59.59,62.94)
s.duration.het = c(61.40,63.90,65.39,62.46,53.31,45.13,57.67)
s.duration.p.hom = c(63.90,78.11,67.00,65.39,62.46,60.45,62.94)
s.duration.p.het = c(61.40,55.08,64.71,59.59,53.31,45.13,57.67)
t.test(s.duration.hom,s.duration.het)
var.test(s.duration.hom,s.duration.het)
t.test(s.duration.p.hom,s.duration.p.het)
var.test(s.duration.p.hom,s.duration.p.het)

# vowel duration
vow.duration.hom = c(126.81,119.17,93.68,127.87,140.44,121.01,137.37)
vow.duration.het = c(112.60,126.49,147.52,120.13,112.05,133.74,118.02)
vow.duration.p.hom = c(126.49,119.17,127.87,147.52,120.13,140.44,137.37)
vow.duration.p.het = c(112.60,126.81,93.68,121.01,112.05,133.74,118.02)
t.test(vow.duration.hom,vow.duration.het)
var.test(vow.duration.hom,vow.duration.het)
t.test(vow.duration.p.hom,vow.duration.p.het)
var.test(vow.duration.p.hom,vow.duration.p.het)

# average F0
av.F0.hom = c(114.90,126.61,130.76,150.79,109.86,123.90,119.48)
av.F0.het = c(119.51,100.29,128.96,105.26,146.20,155.34,121.48)
av.F0.p.hom = c(100.29,126.61,150.79,128.96,105.26,109.86,119.48)
av.F0.p.het = c(119.51,114.90,130.76,123.90,146.20,155.34,121.48)
t.test(av.F0.hom,av.F0.het)
var.test(av.F0.hom,av.F0.het)
t.test(av.F0.p.hom,av.F0.p.het)
var.test(av.F0.p.hom,av.F0.p.het)

# F0 range
F0.r.hom = c(114.90,126.61,130.76,150.79,109.86,123.90,119.48)
F0.r.het = c(52.50,114.00,118.20,55.70,57.80,100.50,37.40)
F0.r.p.hom = c(114.00,58.80,42.00,118.20,55.70,96.40,87.60)
F0.r.p.het = c(52.50,103.20,37.40,111.70,57.80,100.50,37.40)
t.test(F0.r.hom,F0.r.het)
var.test(F0.r.hom,F0.r.het)
t.test(F0.r.p.hom,F0.r.p.het)
var.test(F0.r.p.hom,F0.r.p.het)

# multiple regression analysis
# data file should be in the working directory
# or the path should be changed
data <- read.csv("Chi.kuk.2007.csv",
                 sep = ",",
                 header = TRUE)
orient.percept <- data$perceived.as.homo.percent
s.duration <- data$s.duration.ms
vow.duration <- data$vowel.duration.ms
av.F0 <- data$average.f0.Hz
F0.r <- data$f0.range.Hz

model <- lm(orient.percept~s.duration+vow.duration+av.F0+F0.r
            +s.duration:vow.duration:av.F0:F0.r, data)
summary(model)
