library(tuneR)
wav1 <- readWave("./audio/TSTNW.wav")
wav1same <- readWave("./audio/TSTNW.wav")
wav2 <- readWave("./audio/TSTNW_faster.wav")
mp3 <- readMP3("./audio/TSTNW.mp3")

# Check that sample time = length (samples) / sample rate
length(wav1@left) / wav1@samp.rate

# Calculate periodogram every 15 seconds
pw1 <- periodogram(mono(wav1), width = wav1@samp.rate*15)

# Same for identical wav file
pw1same <- periodogram(mono(wav1same), width = wav1@samp.rate*15)

# Check whether these are identical (should be!)
identical(pw1, pw1same)

# Periodogram for MP3 file of same content
pmp3 <- periodogram(mono(mp3), width = wav1@samp.rate*15)

# Check whether these are identical (should be!)
identical(pw1, pmp3)

# Periodogram for MP3 file of same content
pw2 <- periodogram(mono(wav2), width = wav1@samp.rate*15)

# Check whether these are identical (should be!)
identical(pw1, pw2)

# Compare waves - NOT WORKING?
equalWave(wav1, wav1same)
