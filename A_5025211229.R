# Praktikum Modul 1
# Nama : Fathin Muhashibi Putra
# NRP : 5025211229
# Kelas : Probstat A


#NO.1

# Penyelesaian No.1a
x = 3
p = 0.2

peluang = dgeom(x, p)
paste("peluang = ", peluang)


# Penyelesaian No.1b
n = 10000
p = 0.20
x = 3

mean = mean(rgeom(n, p) == x)
paste("mean = ", mean)


# Penyelesaian No.1c
#Poin 1a menunjukkan peluang distribusi geometrik, 
#sedangkan poin 1b menunjukkan mean peluang distribusi geometrik dengan data random. #Jika dibandingkan, hasil yang didapatkan dari poin 1a dan poin 1b berbeda. 
#Hasil dari poin 1a selalu tetap, yaitu 0.1024. 
#Sedangkan, hasil yang didapatkan pada poin 1b tidak tetap dan selalu berubah-ubah #karena pada poin b menggunakan variabel random, sehingga hasilnya mengikuti rata-rata berdasarkan perubahan variabel random tersebut. 
#Namun, sempat ditemukan juga hasil 1a dan 1b yang nilainya saling mendekati. 


# Penyelesaian No.1d
n = 10000
p = 0.2

hist(rgeom(n, p), main = 'Histogram Distribusi Geometrik 
Peluang Gagal Sebelum Sukses Pertama', col = "green")


# Penyelesaian No.1e
p = 0.2

# Nilai Rataan Distribusi Geometrik (μ) :
rataan = 1/p
paste("μ =", rataan)

#Nilai Varians Distribusi Geometrik (σ²) :
varians = (1-p)/p^2
paste("σ² =", varians)



# NO. 2

# Penyelesaian No.2a
x = 4
n = 20
p = 0.2

peluang = dbinom(x, n, p)
paste("peluang =", peluang)


# Penyelesaian No.2b
x = 4
n = 20
p = 0.2

hist(rbinom(x, n, p), xlab = "x", ylab = "Frequency", main = "Histogram Distribusi Binomial
Peluang Sembuh Pasien Penderita Covid19", col = "green")


# Penyelesaian No.2c
n = 20
p = 0.2

#Nilai Rataan Distribusi Binomial (μ) :
rataan = n*p
paste("μ =", rataan)

#Nilai Varians Distribusi Binomial (σ²) :
varians = n*p*(1-p)
paste("σ² =", varians)



# NO. 3

# Penyelesaian No.3a
x = 6
lambda = 4.5

peluang = dpois(x, lambda)
paste("peluang =", peluang)


# Penyelesaian No.3b
n = 365
lambda = 4.5

hist(rpois(n,lambda), main ="Histogram Distribusi Poisson
Peluang Kelahiran Bayi yang Akan Lahir di Rumah Sakit Selam Setahun(365 hari)", labels=T, xlab = 'x', col = "green")


# Penyelesaian No.3c
#Poin 3a menunjukkan peluang bahwa 6 bayi akan lahir akan lahir di rumah sakit besok. 
#Sedangkan, poin 3b menunjukkan histogram kelahiran 6 bayi yang akan lahir di rumah sakit selama 1 tahun (365 hari). 
#Untuk membandingkannya, hasil peluang pada poin 3a dikalikan dengan 365(hari),- 
#maka hasilnya akan mendekati hasil yang ditampilkan pada histogram poin 3b. 
#Sehingga, dapat disimpulkan bahwa peluang(kemungkinan) 6 bayi akan dilahirkan di rumah sakit besok- 
#hasilnya hampir mendekati peluang(kemungkinan) 6 bayi akan dilahirkan di rumah sakit selama setahun(365 hari). 
#Sehingga, histogram pada poin 3b merepresentasikan peluang dari poin 3a.


# Penyelesaian No.3d
lambda = 4.5

#Nilai Rataan Distribusi Poisson (μ) :
rataan = lambda
paste("μ =", rataan)

#Nilai Varians Distribusi Poisson (σ²) :
varians = lambda
paste("σ² =", varians)



#NO. 4

# Penyelesaian No.4a
x = 2
v = 10

probabilitas = dchisq(x, v)
paste("Probabilitas =", probabilitas)


# Penyelesaian No.4b
n = 100
v = 10

hist(rchisq(n, v), main="Distribusi Chi-Square 
dengan 100 Data Random", col = "green")


# Penyelesaian No.4c
v = 10

#Nilai Rataan Distribusi Chi-Square (μ) :
rataan = v
paste("μ =", rataan)

#Nilai Varians Distribusi Chi-Square (σ²) :
varians = 2*v
paste("σ² =" ,varians)



#NO. 5

# Penyelesaian No.5a
x = 1
lambda = 3
rate = lambda

Probabilitas = dexp(x, rate, log = FALSE)
paste("Probabilitas =", Probabilitas)


# Penyelesaian No.5b
lambda = 3
rate = lambda

hist(rexp(10, rate), main = "Distribusi Exponensial
10 Bilangan Random", col = "green")

hist(rexp(100, rate), main ="Distribusi Exponential
100 Bilangan Random", col = "yellow")

hist(rexp(1000, rate), main ="Distribusi Exponential
1000 Bilangan Random",  col = "red")

hist(rexp(10000, rate), main ="Distribusi Exponential
10000 Bilangan Random",  col = "blue")


# Penyelesaian No.5c
n = 100
lambda = 3
rate = lambda
set.seed(1)

#Nilai Rataan Distribusi Eksponensial (μ) :
rataan = mean(rexp(n, rate))
paste("μ =", rataan)

#Nilai Varians Distribusi Eksponensial (σ²) :
varians = (sd(rexp(n, rate))) ^ 2
paste("σ² =", varians)



# NO. 6

# Penyelesaian No.6a
n = 100
mean = 50
sd = 8

zScore = rnorm(n, mean, sd)
zScore

plot(zScore, main="Distribusi normal
100 nilai random")


# Penyelesaian No.6b
n = 100
mean = 50
sd = 8
zScore = rnorm(n, mean, sd)
breaks = 50

hist(zScore, breaks, main="5025211229_Fathin Muhashibi Putra_Probstat_A_DNhistogram")


# Penyelesaian No.6c
n = 100
mean = 50
sd = 8
zScore = rnorm(n, mean, sd)

#Nilai Varians Distribusi Normal (σ²) :
varians = (sd(zScore))^2
paste("σ² =", varians)

