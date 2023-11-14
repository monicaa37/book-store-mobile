------------------------ TUGAS 7 --------------------------

1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?<br>
answer:<br>
- StatelessWidget: Data tidak bisa berubah, cocok untuk bagian aplikasi yang tidak berubah (statis) dan tidak bergantung pada data yang dapat berubah. Contoh widget stateless termasuk teks statis, ikon, atau gambar yang tidak berubah.<br>
- StatefulWidget: Widget yang dapat memiliki state yang dapat berubah, state ini disimpan di dalam objek State, yang terhubung dengan widget tersebut dan dapat diperbarui secara dinamis. Contoh widget stateful adalah button, forms. 

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

---------------------- TUGAS 8 --------------------------- 

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!<br>
- Navigator.push(): digunakan untuk menambahkan halaman baru ke dalam tumpukan halaman navigasi. Memungkinkan pengguna untuk kembali ke halaman sebelumnya dengan menggunakan tombol "back" pada perangkat atau dengan memanggil. Anda ingin menambahkan halaman baru ke dalam tumpukan, dan pengguna dapat kembali ke halaman sebelumnya.

- Navigator.pushReplacement(): digunakan untuk menggantikan halaman yang ada dalam tumpukan dengan halaman baru. Halaman yang ada di atas halaman saat ini akan dihapus dari tumpukan, dan halaman baru akan ditambahkan sebagai gantinya. Pengguna tidak dapat kembali ke halaman yang digantikan karena halaman tersebut telah dihapus dari tumpukan navigasi.

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!<br>
- Container: untuk mengelompokkan widget lainnya dan mengatur properti tata letak seperti padding, margin, dan warna latar.
- Column: untuk menata widget secara vertikal, seperti dalam daftar atau formulir.
- Row: untuk menata widget secara horizontal, seperti dalam menu atau elemen-elemen navigasi.
- Listview:  banyaknya item atau data yang perlu ditampilkan dalam daftar bergulir.
- Stack: untuk menumpuk beberapa widget di atas satu sama lain, misalnya, untuk menampilkan gambar latar belakang dengan teks di atasnya.

3.  Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!<br>
- TextFormField untuk Nama Produk: untuk mengambil informasi teks dari pengguna mengenai nama produk. Validasi dilakukan untuk memastikan input tidak boleh kosong.
- TextFormField untuk Harga:  Elemen input ini digunakan untuk mengambil informasi teks dari pengguna mengenai harga produk. Validasi dilakukan untuk memastikan input tidak boleh kosong dan harus berupa angka.
- TextFormField untuk Deskripsi: lemen input ini digunakan untuk mengambil informasi teks dari pengguna mengenai deskripsi produk. Validasi dilakukan untuk memastikan input tidak boleh kosong.
- TextFormField untuk Stok:  Elemen input ini digunakan untuk mengambil informasi teks dari pengguna mengenai stok produk. Validasi dilakukan untuk memastikan input tidak boleh kosong dan harus berupa angka.

4.  Bagaimana penerapan clean architecture pada aplikasi Flutter?<br>
Penerapan Clean Architecture pada aplikasi Flutter melibatkan pemisahan aplikasi ke dalam lapisan-lapisan yang berbeda, dengan setiap lapisan memiliki tanggung jawabnya sendiri. <br>
- Tentukan Lapisan-lapisan Aplikasi:
  - Lapisan Presentasi (Presentation Layer): Berisi UI, widget, dan logika tata letak.
  - Lapisan Logika Bisnis (Domain Layer): Berisi logika bisnis aplikasi dan aturan domain.
  - Lapisan Sumber Daya (Data Layer): Berisi logika untuk mengambil dan menyimpan data. 
  - Lapisan Infrastruktur (Infrastructure Layer): Berisi implementasi konkrit dari sumber daya eksternal seperti repository, data provider, dan implementasi API.
- Implementasikan Dependency Injection (DI): Gunakan library seperti get_it atau provider untuk melakukan Dependency Injection. <br>
- Tentukan Kontrak (Interfaces) di Domain Layer<br>
- Implementasikan Rute (Routes) dengan Benar<br>
- Gunakan BLoC atau Provider untuk Manajemen Status: Gunakan BLoC (Business Logic Component) atau Provider untuk mengelola status aplikasi dan berbagi data antara lapisan-lapisan aplikasi.<br>
- Uji Setiap Lapisan Secara Terpisah: Uji unit untuk logika bisnis di lapisan domain, uji integrasi untuk lapisan data dan infrastruktur, dan uji widget untuk lapisan presentasi.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! <br>
    1. Menambahkan drawer menu untuk navigasi
    - Buat direktori baru yaitu widgets
    - Buat file baru  dengan nama left_drawer.dart di dalam widgets
    - Tambahkan import untuk navigasi ke halaman MyHomePage dan ShopFormPage
    - Tambahkan kode untuk Routing
    - Tambahkan kode untuk Bagian drawer header
    - Kemudian setelah berhasil membuat drawe menu, masukan ke halaman menu.dart

    2. Menambahkan Form dan Input
    - Buat file baru di lib dengan nama shoplist_form.dart
    - Tambahkan kode di dalam file shoplist_form.dart
    - Ubah widget Placeholder dengan potongan kode baru
    - Buat variabel baru bernama _formKey lalu tambahkan _formKey tersebut ke dalam atribut key milik widget Form.
    - Buat beberapa variabel untuk menyimpan input dari masing-masing field yang akan dibuat
    - Buat widget Column sebagai child dari SingleChildScrollView
    - Buat widget TextFormField yang dibungkus oleh Padding untuk "Nama Item"
    - Tambahkan atribut crossAxisAlignment untuk mengatur alignment children dari Column
    - Buat tiga TextFormField yang dibungkus dengan Padding sebagai child selanjutnya dari Column untuk field price, stok, dan description
    - Buat tombol sebagai child selanjutnya dari Column, kemudian bungkus tombol ke dalam widget Padding dan Align

    3. Memunculkan Data
    - Tambahkan fungsi showDialog() pada bagian onPressed() dan munculkan widget AlertDialog
    - Tambahkan fungsi untuk reset form

    4. Menambahkan Fitur Navigasi pada Tombol
    - Pada menu.dart tambahkan kode di dalam onTap untuk dapat melakukan navigasi ke route lain (tambahkan kode tambahan di bawah kode ScaffoldMessenger yang menampilkan snackbar).
    - Tambahkan navigator.pushreplacment untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage

- Kemudian lakukan Refactoring File dengan cara membuat satu folder screens. Kemudian di dalamnya direct file menu.dart dan shoplist_form.dart.
- Buat berkas baru dengan nama shop_card.dart pada direktori widgets
- Pindahkan isi widget ShopItem pada menu.dart
- import halaman shoplist_form.dart pada berkas shop_card.dart dan import halaman shop_card.dart pada berkas menu.dart.