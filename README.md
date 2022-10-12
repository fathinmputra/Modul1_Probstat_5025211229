# Modul1_Probstat_5025211229
## Praktikum Modul 1

**<br>Nama  : Fathin Muhashibi Putra**
**<br>NRP   : 5025211229**
**<br>Kelas : Probstat A**

## NO. 1
> **Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.** 
  
  **1a.)** Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
  
  Soal ini menerapkan konsep distribusi geometrik. Fungsi yang digunakan, yaitu `dgeom(x, p)` dimana `x` merupakan banyaknya orang yang tidak menghadiri acara vaksinasi dan `p` adalah peluang dari kejadian yang diinginkan. Maka, didapatkan hasil `0.1024` sebagai peluang sebelum keberhasilan pertama.
  
```
# Penyelesaian No.1a
x = 3
p = 0.2
peluang = dgeom(x, p)
paste("peluang = ", peluang)
```
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/195225919-6abc20bf-3902-4220-a68d-f3137f50d5e7.png">

  **1b.)** Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
  
  Soal ini menerapkan konsep distribusi geometrik. Fungsi yang digunakan, yaitu `mean(rgeom(n,p) == x` dimana `n` merupakan banyaknya data random, `p` adalah peluang dari kejadian yang diinginkan, dan `x` merupakan banyaknya orang yang tidak menghadiri acara vaksinasi. Maka, didapatkan hasil yang berubah-ubah sesuai perubahan variabel random.
  
```
# Penyelesaian No.1b
n = 10000
p = 0.20
mean = mean(rgeom(n, p) == 3)
paste("mean = ", mean)
```
<img width="477" alt="image" src="https://user-images.githubusercontent.com/103252800/195223264-da19e0e4-15b7-4696-9ef5-ef9a06e7d94d.png">

  **1c.)** Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
  
  Poin 1a menunjukkan peluang distribusi geometrik, sedangkan poin 1b menunjukkan mean peluang distribusi geometrik dengan data random. Jika dibandingkan, hasil yang didapatkan dari poin 1a dan poin 1b berbeda. Hasil dari poin 1a selalu tetap, yaitu 0.1024. Sedangkan, hasil yang didapatkan pada poin 1b tidak tetap dan selalu berubah-ubah karena pada poin b menggunakan variabel random, sehingga hasilnya mengikuti rata-rata berdasarkan perubahan variabel random tersebut. Namun, sempat ditemukan juga hasil 1a dan 1b yang nilainya saling mendekati.
  
   **1d.)** Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
  
  Soal ini menerapkan konsep distribusi geometrik. Fungsi yang digunakan, yaitu `hist(rgeom(n, p))` dimana `n` merupakan banyaknya data random dan `p` merupakan peluang dari kejadian tersebut. 
  
```
# Penyelesaian No.1d
n = 10000
p = 0.2
hist(rgeom(n, p), main = 'Histogram Distribusi Geometrik 
Peluang Gagal Sebelum Sukses Pertama', col = "green")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195231255-07370a4c-0fc1-4ac6-ab7c-a3a485eefb39.png">


  **1e.)** Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
  
  Soal ini menerapkan konsep distribusi geometrik. Digunakan rumus rataan distribusi geometrik (μ), yaitu `μ = 1/p` dan rumus varians distribusi geometrik (σ²) `σ² = (1-p)/p^2` dimana `p` merupakan peluang dari kejadian yang diinginkan. Sehingga, didapatkan hasil `μ = 5` dan `σ² =20`. 
  
```
# Penyelesaian No.1e
p = 0.2

# Nilai Rataan Distribusi Geometrik (μ) :
rataan = 1/p
paste("μ =", rataan)

#Nilai Varians Distribusi Geometrik (σ²) :
varians = (1-p)/p^2
paste("σ² =", varians)
```
<img width="479" alt="image" src="https://user-images.githubusercontent.com/103252800/195224723-ddcc41a1-87cb-4cb5-9702-8cd11549a0d3.png">


## NO. 2
> **Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :** 
  
  **2a.)** Peluang terdapat 4 pasien yang sembuh.
  
  Soal ini menerapkan konsep distribusi binomial. Fungsi yang digunakan, yaitu `dbinom(x, n, p)` dimana `x` merupakan banyak pasien yang sembuh, `n` merupakan total keseluruhan pasien, dan `p` adalah peluang dari kejadian yang diinginkan. Maka, didapatkan hasil `0.218199401946101` sebagai sebagai peluang 4 pasien yang sembuh.
  
```
# Penyelesaian No.2a
x = 4
n = 20
p = 0.2
peluang = dbinom(x, n, p)
paste("peluang =", peluang)
```
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/195226996-bfa5d132-28be-40b9-8d08-8a411261a0a3.png">


  **2b.)** Gambarkan grafik histogram berdasarkan kasus tersebut.

  Soal ini menerapkan konsep distribusi binomial. Fungsi yang digunakan, yaitu `hist(rbinom(x, n, p)` dimana `x` merupakan banyak pasien yang sembuh, `n` merupakan total keseluruhan pasien, dan `p` adalah peluang dari kejadian yang diinginkan. Sehingga menampilkan Histogram Distribusi Binomial Peluang Sembuh Pasien Penderita Covid19,
  
```
# Penyelesaian No.2b
x = 4
n = 20
p = 0.2
hist(rbinom(x, n, p), xlab = "x", ylab = "Frequency", main = "Histogram Distribusi Binomial
Peluang Sembuh Pasien Penderita Covid19", col = "green")
```
<img width="959" alt="image" src="https://user-images.githubusercontent.com/103252800/195227687-f13ab8e7-4dc4-41a9-aa1f-95ca48d7cbff.png">


  **2c.)** Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Binomial.
.
  Soal ini menerapkan konsep distribusi binomial. Digunakan rumus rataan distribusi binomial (μ), yaitu `μ = n*p` dan rumus varians distribusi binomial (σ²) `σ² = n*p*(1-p)` dimana `n` merupakan keseluruhan total pasien dan `p` merupakan peluang dari kejadian yang diinginkan. Sehingga, didapatkan hasil `μ = 4` dan `σ² =3,2`. 
  
  
```
# Penyelesaian No.2c
n = 20
p = 0.2
#Nilai Rataan Distribusi Binomial (μ) :
rataan = n*p
paste("μ =", rataan)
#Nilai Varians Distribusi Binomial (σ²) :
varians = n*p*(1-p)
paste("σ² =", varians)
```
<img width="478" alt="image" src="https://user-images.githubusercontent.com/103252800/195228488-bfbe3c24-5b9e-46fe-94a0-ce0a1040c483.png">


## NO. 3
> **Diketahui data dari  sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)** 
  
  **3a.)** Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
  
  Soal ini menerapkan konsep distribusi Poisson. Fungsi yang digunakan, yaitu `dpois(x, lambda)` dimana `x` merupakan banyak bayi yang akan lahir, dan `lambda(λ)` adalah rata-rata historis bayi yang lahir di rumah sakit. Maka, didapatkan hasil `0.128120143864584` sebagai peluang 6 bayi akan lahir di rumah sakit.
  
```
# Penyelesaian No.3a
x = 6
lambda = 4.5
peluang = dpois(x, lambda)
paste("peluang =", peluang)
```
<img width="478" alt="image" src="https://user-images.githubusercontent.com/103252800/195229128-27edddb7-139b-42db-b2e4-cd9313694994.png">

 **3b.)** Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
  
  Soal ini menerapkan konsep distribusi Poisson. Fungsi yang digunakan, yaitu `hist(rpois(n,lambda)` dimana `n` merupakan banyak nya hari dalam satu tahun dan `lambda(λ)` adalah rata-rata historis bayi yang lahir di rumah sakit. Maka, akan ditampilkan histogram distribusi poisson Peluang Kelahiran Bayi Akan Lahir di Rumah Sakit Selam Setahun(365 hari).
  
```
# Penyelesaian No.3b
n = 365
lambda = 4.5
hist(rpois(n,lambda), main ="Histogram Distribusi Poisson
Peluang Kelahiran Bayi Akan Lahir di Rumah Sakit Selam Setahun(365 hari)", labels=T, xlab = 'x', col = "green")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195230232-c9843e5f-0128-4c03-a02e-e50e67dcb48b.png">

 **3c.)** dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
  
  Poin 3a menunjukkan peluang bahwa 6 bayi akan lahir akan lahir di rumah sakit besok. Sedangkan, poin 3b menunjukkan histogram kelahiran 6 bayi yang akan lahir di rumah sakit selama 1 tahun (365 hari). Hasil peluang pada poin 3a jika dikalikan dengan 365(hari), maka hasilnya akan mendekati hasil yang ditampilkan pada histogram poin 3b. Sehingga, dapat disimpulkan bahwa peluang(kemungkinan) 6 bayi akan dilahirkan di rumah sakit besok hasilnya hampir mendekati peluang(kemungkinan) 6 bayi akan dilahirkan di rumah sakit selama setahun(365 hari).


**3d.)** Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
  
  Soal ini menerapkan konsep distribusi Poisson. Pada distribusi poisson, rataan distribusi Poisson (μ), yaitu 'μ = lambda(λ)' dan varians distribusi Poisson (σ²), yaitu 'σ² = lambda(λ)' dimana lambda memiliki nilai `4.5`. Sehingga, didapatkan hasil `μ = 4` dan `σ² =3,2`. 
 
  
```
# Penyelesaian No.3d
lambda = 4.5
#Nilai Rataan Distribusi Poisson (μ) :
rataan = lambda
paste("μ =", rataan)
#Nilai Varians Distribusi Poisson (σ²) :
varians = lambda
paste("σ² =", varians)
```
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/195231015-21c887a3-7b20-4b82-bba7-18266ee30125.png">

## NO. 4
> **Diketahui nilai x = 2 dan v = 10. Tentukan:** 
  
  **4a.)** Fungsi Probabilitas dari Distribusi Chi-Square.
  
  Soal ini menerapkan konsep distribusi Chi-Square. Fungsi yang digunakan, yaitu `dchisq(x, v)` dimana `x` merupakan banyak data dan `v` adalah adalah derajat kebebasan. Maka, didapatkan hasil `0.00766415502440505` sebagai Probabilitas dari Distribusi Chi-Square.
  
```
# Penyelesaian No.4a
x = 2
v = 10
probabilitas = dchisq(x, v)
paste("Probabilitas =", probabilitas)
```
<img width="477" alt="image" src="https://user-images.githubusercontent.com/103252800/195268015-78c61a3b-f66d-4fe5-810f-1128e0571d6b.png">


**4b.)** Histogram dari Distribusi Chi-Square dengan 100 data random.
  
  Soal ini menerapkan konsep distribusi Chi-Square. Fungsi yang digunakan, yaitu `hist(rchisq(n, v))` dimana `n` merupakan suatu data random dan `v` merupakan derajat kebebasan. Maka, akan ditampilkan sebuah histogram dari Distribusi Chi-Square.
  
```
# Penyelesaian No.4b
n = 100
v = 10
hist(rchisq(n, v), main="Distribusi Chi-Square 
dengan 100 Data Random", col = "green")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195269274-f99413bf-09a9-41d0-90d8-e62bc83361ba.png">


**4c.)** Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Chi-Square.
  
  Soal ini menerapkan konsep distribusi Chi-Square. Digunakan rumus rataan distribusi Chi-Square (μ), yaitu `μ = `v` dan rumus varians distribusi Chi-Square, yaitu (σ²) `σ² = 2*v` dimana `v` merupakan derajat kebebasan. Sehingga, didapatkan hasil `μ = 4` dan `σ² =3,2`. 

```
# Penyelesaian No.4c
v = 10
#Nilai Rataan Distribusi Chi-Square (μ) :
rataan = v
paste("μ =", rataan)
#Nilai Varians Distribusi Chi-Square (σ²) :
varians = 2*v
paste("σ² =", varians))
```
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/195270170-fa964680-7300-45c2-bfee-1310507d6d04.png">


## NO. 5
> **Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan:** 
  
  **5a.)** Fungsi Probabilitas dari Distribusi Exponensial.
  
  Soal ini menerapkan konsep distribusi Eksponensial. Fungsi yang digunakan, yaitu `dexp(x, rate, log = FALSE)` dimana `x` merupakan banyak data dan `rate` merupakan parameter yang nilainya sama dengan lambda(λ). Maka, didapatkan hasil `0.149361205103592` sebagai Probabilitas dari Distribusi Exponensial.
  
```
# Penyelesaian No.5a
x = 1
lambda = 3
rate = lambda
Probabilitas = dexp(x, rate, log = FALSE)
paste("Probabilitas =", Probabilitas)
```
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/195273109-5a0d6482-7ae2-451e-998f-985dc955b41f.png">

 **5b.)** Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random.
  
  Soal ini menerapkan konsep distribusi Eksponensial. Fungsi yang digunakan, yaitu `hist(rexp(n, rate))` dimana `n` merupakan banyak bilangan random dan `rate` merupakan parameter yang nilainya sama dengan lambda(λ). Maka, akan ditampilkan Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random.
  
```
# Penyelesaian No.5b
#10 Bilangan Random
lambda = 3
rate = lambda
hist(rexp(10, rate), main = "Distribusi Exponensial
10 Bilangan Random")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195274824-3207cfa8-5ef9-43f6-a55e-9dac418be104.png">

```
#100 Bilangan Random
lambda = 3
rate = lambda
hist(rexp(100, rate), main ="Distribusi Exponential
100 Bilangan Random")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195274972-fa867013-c487-4376-8d43-191901b7edac.png">

```
#1000 Bilangan Random
lambda = 3
rate = lambda
hist(rexp(1000, rate), main ="Distribusi Exponential
1000 Bilangan Random")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195275123-81fe1c71-6a25-4c58-aaab-62c744e8a4f4.png">

```
#10000 Bilangan Random
lambda = 3
rate = lambda
hist(rexp(10000, rate), main ="Distribusi Exponential
10000 Bilangan Random")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195275270-bab829bd-5bbd-4369-a275-6bd17938ca52.png">


 **5c.)** Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Exponensial untuk n = 100 dan λ = 3
<br>Petunjuk: 
<br>Gunakan set.seed(1)
<br>Gunakan fungsi bawaan R
  
   Soal ini menerapkan konsep distribusi Chi-Square. Digunakan rumus rataan distribusi Eksponensial (μ), yaitu menggunakan fungsi `mean(rexp(n, rate))` dan untuk rumus varians distribusi Eksponensial, yaitu menggunakan fungsi `(sd(rexp(n, rate)))` dimana n merupakan bilangan random dan rate merupakan parameter yang nilainya sama dengan lambda(λ). Sehingga, didapatkan hasil `μ = 0.343558812019206` dan `σ² = 0.0656076521452312`. 
  
```
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
```
<img width="468" alt="image" src="https://user-images.githubusercontent.com/103252800/195278458-3bac7fbe-a2dc-4fda-84b9-b9302ca5d7f3.png">


## NO. 6
> **Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan** 
  
  **6a.)** Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot())..
  
  Soal ini menerapkan konsep distribusi Normal. Untuk mendapatkan nilai Z-Score fungsi yang digunakan, yaitu `rnorm(n, mean, sd)` dimana `n` merupakan banyak data random, `mean` merupakan rat-rata, dan `sd` merupakan standar deviasi. Sedangkan untuk menampilkan plot data generate randomnya dalam bentuk grafik fungsi yang digunakan, yaitu `plot(zScore)`. Sehingga akan ditampilkan nilai Z-Score dan juga plot data generate randomnya dalam bentuk grafik.
  
```
# Penyelesaian No.6a
n = 100
mean = 50
sd = 8

zScore = rnorm(n, mean, sd)
zScore

plot(zScore, main="Distribusi normal
100 nilai random")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195282818-eb182f04-4395-4ea9-8332-eb680da95b41.png">

**6b.)** Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan: NRP_Nama_Probstat_{Nama Kelas}_DNhistogram

  Soal ini menerapkan konsep distribusi Normal. Fungsi yang digunakan, yaitu `hist(zScore, breaks)` dimana zScore didapatkan dari fungsi `zScore = rnorm(n, mean, sd)' yang mana `n` merupakan banyak data random, `mean` merupakan rat-rata, `sd` merupakan standar deviasi, dan breaks yang telah diketahui nilainya. Maka, akan ditampilkan Histogram dari Distribusi Normal.
  
```
# Penyelesaian No.6b
n = 100
mean = 50
sd = 8
zScore = rnorm(n, mean, sd)
breaks = 50
hist(zScore, breaks, main="5025211229_Fathin Muhashibi Putra_Probstat_A_DNhistogram")
```
<img width="960" alt="image" src="https://user-images.githubusercontent.com/103252800/195284516-e7c079ae-becc-4a19-b243-c7ccbd6dfd54.png">

**6c.)** Nilai Varian (σ²) dari hasil generate random nilai Distribusi Normal.

  Soal ini menerapkan konsep distribusi Normal. Untuk mendapatkan nilai varians, fungsi yang digunakan, yaitu `varians = (sd(zScore))^2` atau pangkat dua dari standar deviasi zScore hasil generate random nilai Distribusi Normal. Dimana `sd` merupakan standar deviasi dan nilai Z-Score didapatkan dari fungsi `rnorm(n, mean, sd)` dimana `n` merupakan banyak data random, `mean` merupakan rata-rata, dan `sd` merupakan standar deviasi. Sehingga akan ditampilkan nilai varians yang tidak tetap(berubah-ubah) menyesuaikan dengan nilai random nya.
```
# Penyelesaian No.6c
n = 100
mean = 50
sd = 8
zScore = rnorm(n, mean, sd)
#Nilai Varians Distribusi Normal (σ²) :
varians = (sd(zScore))^2
paste("σ² =", varians)
```
<img width="479" alt="image" src="https://user-images.githubusercontent.com/103252800/195287797-c089a555-0012-482b-8a04-38fc99584647.png">



