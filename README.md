# Modul1_Probstat_5025211229
## Praktikum Modul 1

**<br>Nama  : Fathin Muhashibi Putra**
**<br>NRP   : 5025211229**
**<br>Kelas : Probstat A**

## NO. 1
> **Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.** 
  
  **1a.)** Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi  sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ? (distribusi Geometrik)
  
  Soal ini menerapkan konsep distribusi geometrik. Fungsi yang digunakan, yaitu `dgeom(x, p)` dimana `x` merupakan banyaknya orang yang tidak menghadiri acara vaksinasi dan `p` adalah peluang dari kejadian tersebut. Maka, didapatkan hasil `0.1024` sebagai peluang sebelum keberhasilan pertama.
  
```
# Penyelesaian No.1a
x = 3
p = 0.2
peluang = dgeom(x, p)
paste("peluang = ", peluang)
```
<img width="480" alt="image" src="https://user-images.githubusercontent.com/103252800/195225919-6abc20bf-3902-4220-a68d-f3137f50d5e7.png">

  **1b.)** Mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
  
  Soal ini menerapkan konsep distribusi geometrik. Fungsi yang digunakan, yaitu `mean(rgeom(n,p) == x` dimana `n` merupakan banyaknya data random, `p` adalah peluang dari kejadian, dan `x` merupakan banyaknya orang yang tidak menghadiri acara vaksinasi. Maka, didapatkan hasil yang berubah-ubah sesuai perubahan variabel random.
  
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
Peluang x=3 Gagal Sebelum Sukses Pertama')
```
<img width="955" alt="image" src="https://user-images.githubusercontent.com/103252800/195225760-d6f1ec53-e25e-415b-98c8-ac2ad261e086.png">


  **1e.)** Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
  
  Soal ini menerapkan konsep distribusi geometrik. Digunakan rumus rataan distribusi geometrik (μ), yaitu `μ = 1/p` dan rumus varians distribusi geometrik (σ²) `σ² = (1-p)/p^2` dimana `p` merupakan peluang kejadian. Sehingga, didapatkan hasil `μ = 5` dan `σ² =20`. 
  
```
# -> Penyelesaian No.1e
p = 0.2

# Nilai Rataan Distribusi Geometrik (μ) :
rataan = 1/p
paste("μ =", rataan)

#Nilai Varians Distribusi Geometrik (σ²) :
varians = (1-p)/p^2
paste("σ² =", varians)
```
<img width="479" alt="image" src="https://user-images.githubusercontent.com/103252800/195224723-ddcc41a1-87cb-4cb5-9702-8cd11549a0d3.png">

