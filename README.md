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
  
  Soal ini menerapkan konsep distribusi Poisson. Fungsi yang digunakan, yaitu `dpois(x, lambda)` dimana `x` merupakan banyak bayi yang akan lahir, dan `lambda(λ)` adalah rata-rata historis bayi yang lahir di rumah sakit. Maka, didapatkan hasil `0.128120143864584` sebagai sebagai peluang 6 bayi akan lahir di rumah sakit.
  
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

