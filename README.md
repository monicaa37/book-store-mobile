-------- TUGAS 7 ----------

1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?<br>
answer:<br>
- StatelessWidget: Data tidak bisa berubah, cocok untuk bagian aplikasi yang tidak berubah (statis) dan tidak bergantung pada data yang dapat berubah. Contoh widget stateless termasuk teks statis, ikon, atau gambar yang tidak berubah.<br>
-StatefulWidget: Widget yang dapat memiliki state yang dapat berubah, state ini disimpan di dalam objek State, yang terhubung dengan widget tersebut dan dapat diperbarui secara dinamis. Contoh widget stateful adalah button, forms. 

2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.<br>
answer : <br>
- MyHomePage (StatelessWidget) --> Merupakan widget utama yang menampilkan tata letak halaman utama aplikasi. Ini berisi judul aplikasi, daftar item, dan menggunakan GridView untuk menampilkan item-item tersebut.
- ShopCard (StatelessWidget) --> Mewakili kartu (tombol) untuk setiap item di dalam daftar belanja.
- Scaffold (Widget Bawaan Flutter) --> Menyediakan kerangka kerja dasar untuk membangun antarmuka pengguna Flutter. Ini menyediakan struktur dasar seperti AppBar, body, dan sebagainya.
- AppBar  (Widget Bawaan Flutter) -->Menyediakan AppBar (bilah atas) pada aplikasi Flutter. Ini biasanya digunakan sebagai judul atau tempat navigasi.
- SingleChildScrollView  (Widget Bawaan Flutter) --> Membungkus widget anaknya dan memungkinkan pengguna untuk menggulirkan kontennya jika tidak muat di layar.
- Container (Widget Bawaan Flutter) --> Membungkus widget lain dan memberikan kontrol terhadap propertinya seperti padding, warna latar belakang, dll.
- Material (Widget Bawaan Flutter) --> Mengimplementasikan komponen desain bahan (Material Design) pada widget.
- Column  (Widget Bawaan Flutter) --> Menyusun widget anaknya dalam kolom vertikal.
- Padding  (Widget Bawaan Flutter) --> Menambahkan ruang padding di sekitar widget anaknya.
- GridView.count (Widget Bawaan Flutter) --> Menampilkan daftar widget dalam bentuk grid dengan jumlah kolom tetap.
- InkWell (Widget Bawaan Flutter) --> Memberikan efek responsif ketika ditekan, seperti efek splash.

3.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step. <br>
answer : <br>
- Pastikan sudah menginstall flutter 
- Jalankan flutter dengan flutter run 
- Buat file baru bernama menu.dart dan tambahkan kode yang dibutuhkan 
- Buka file main.dart dan ubah kode sesuai arahan tutorial 
- Lalu, tambahkan kode untuk menambahkan teks dan card
- Untuk mengubah warna, perlu menambahkan properti warna ke konstruktor ShopCard dan menggunakan warna tersebut pada widget Material



