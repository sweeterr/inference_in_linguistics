# Bayesian parameter estimation

# this code is adapted from http://www.indiana.edu/~kruschke/BEST/
# complete tutorial is available there

# the data are taken from C.-K. Hau. Gay Speech and Perceived Sexual Orientations
# A Research Paper Submitted in Partial Fulfilment of the Requirement for the Degree 
# of. Master of Arts in Linguistics (manuscript). The Chinese University of Hong Kong, 2007.


source("BEST.R")

# /s/ duration
s.duration.hom = c(55.08,78.11,64.71,67.00,60.45,59.59,62.94)
s.duration.het = c(61.40,63.90,65.39,62.46,53.31,45.13,57.67)
mcmcChain = BESTmcmc(s.duration.hom, s.duration.het, priorOnly=FALSE,
                     numSavedSteps=12000, thinSteps=5, showMCMC=TRUE ) 
postInfo = BESTplot(s.duration.hom, s.duration.het, mcmcChain , ROPEeff=c(-0.1,0.1) )
show( postInfo )
saveGraph( file="s.duration" , type="png" )

# /s/ duration - perceived orientation
s.duration.p.hom = c(63.90,78.11,67.00,65.39,62.46,60.45,62.94)
s.duration.p.het = c(61.40,55.08,64.71,59.59,53.31,45.13,57.67)
mcmcChain = BESTmcmc(s.duration.p.hom, s.duration.p.het, priorOnly=FALSE,
                     numSavedSteps=12000, thinSteps=5, showMCMC=TRUE ) 
postInfo = BESTplot(s.duration.p.hom, s.duration.p.het, mcmcChain , ROPEeff=c(-0.1,0.1) )
show( postInfo )
saveGraph( file="s.duration.p" , type="png" )

# vowel duration
vow.duration.hom = c(126.81,119.17,93.68,127.87,140.44,121.01,137.37)
vow.duration.het = c(112.60,126.49,147.52,120.13,112.05,133.74,118.02)
mcmcChain = BESTmcmc(vow.duration.hom, vow.duration.het, priorOnly=FALSE,
                     numSavedSteps=12000, thinSteps=5, showMCMC=TRUE ) 
postInfo = BESTplot(vow.duration.hom, vow.duration.het, mcmcChain , ROPEeff=c(-0.1,0.1) )
show( postInfo )
saveGraph( file="vow.duration" , type="png" )

# vowel duration - perceived orientation
vow.duration.p.hom = c(126.49,119.17,127.87,147.52,120.13,140.44,137.37)
vow.duration.p.het = c(112.60,126.81,93.68,121.01,112.05,133.74,118.02)
mcmcChain = BESTmcmc(vow.duration.p.hom, vow.duration.p.het, priorOnly=FALSE,
                     numSavedSteps=12000, thinSteps=5, showMCMC=TRUE ) 
postInfo = BESTplot(vow.duration.p.hom, vow.duration.p.het, mcmcChain , ROPEeff=c(-0.1,0.1) )
show( postInfo )
saveGraph( file="vow.duration.p" , type="png" )

# average F0
av.F0.hom = c(114.90,126.61,130.76,150.79,109.86,123.90,119.48)
av.F0.het = c(119.51,100.29,128.96,105.26,146.20,155.34,121.48)
mcmcChain = BESTmcmc(av.F0.hom, av.F0.het, priorOnly=FALSE,
                     numSavedSteps=12000, thinSteps=5, showMCMC=TRUE ) 
postInfo = BESTplot(av.F0.hom, av.F0.het, mcmcChain , ROPEeff=c(-0.1,0.1) )
show( postInfo )
saveGraph( file="av.F0" , type="png" )

# average F0 - perceived orientation
av.F0.p.hom = c(100.29,126.61,150.79,128.96,105.26,109.86,119.48)
av.F0.p.het = c(119.51,114.90,130.76,123.90,146.20,155.34,121.48)
mcmcChain = BESTmcmc(av.F0.p.hom, av.F0.p.het, priorOnly=FALSE,
                     numSavedSteps=12000, thinSteps=5, showMCMC=TRUE ) 
postInfo = BESTplot(av.F0.p.hom, av.F0.p.het, mcmcChain , ROPEeff=c(-0.1,0.1) )
show( postInfo )
saveGraph( file="av.F0.p" , type="png" )

# F0 range
F0.r.hom = c(114.90,126.61,130.76,150.79,109.86,123.90,119.48)
F0.r.het = c(52.50,114.00,118.20,55.70,57.80,100.50,37.40)
mcmcChain = BESTmcmc(F0.r.hom, F0.r.het, priorOnly=FALSE,
                     numSavedSteps=12000, thinSteps=5, showMCMC=TRUE ) 
postInfo = BESTplot(F0.r.hom, F0.r.het, mcmcChain , ROPEeff=c(-0.1,0.1) )
show( postInfo )
saveGraph( file="F0.r" , type="png" )

# F0 range - perceived orientation
F0.r.p.hom = c(114.00,58.80,42.00,118.20,55.70,96.40,87.60)
F0.r.p.het = c(52.50,103.20,37.40,111.70,57.80,100.50,37.40)
mcmcChain = BESTmcmc(F0.r.p.hom, F0.r.p.het, priorOnly=FALSE,
                     numSavedSteps=12000, thinSteps=5, showMCMC=TRUE ) 
postInfo = BESTplot(F0.r.p.hom, F0.r.p.het, mcmcChain , ROPEeff=c(-0.1,0.1) )
show( postInfo )
saveGraph( file="F0.r.p" , type="png" )