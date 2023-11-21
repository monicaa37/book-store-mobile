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

---------------------- TUGAS 9 --------------------------- 

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?<br>
Answer: Iya, JSON bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu dalam Django. Cara ini sering digunakan ketika Anda hanya perlu melakukan operasi sederhana seperti pembacaan atau pengambilan data, dan tidak memerlukan penyimpanan data dalam database atau pemodelan objek.<br>
Keuntungan dari melakukan pengambilan data JSON tanpa membuat model adalah kesederhanaan dan kecepatan implementasi. Jika Anda hanya perlu mengambil data dari API atau sumber eksternal, tidak selalu perlu membuat model Django terlebih dahulu.

2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.<br>Answer :<br>
a. Fungsi CookieRequest<br>
- Pengelolaan Sesi: Cookie sering digunakan untuk mengelola sesi pengguna. CookieRequest memungkinkan aplikasi untuk mengirim dan menerima cookie dari server, yang membantu dalam mengidentifikasi dan mengelola sesi pengguna.<br>
- Otentikasi: Dalam banyak kasus, cookie digunakan untuk proses otentikasi. CookieRequest membantu dalam mengirimkan informasi otentikasi yang diperlukan dalam cookie kepada server.<br>
- Keamanan: Cookie dapat menyimpan token atau informasi keamanan lainnya. CookieRequest memastikan bahwa data sensitif ini ditangani dengan aman selama komunikasi antara klien dan server.<br>
- Preferensi Pengguna: Cookie sering digunakan untuk menyimpan preferensi pengguna. CookieRequest memungkinkan aplikasi untuk mengakses dan memperbarui preferensi ini.

b. Pentingnya Berbagi CookieRequest di Semua Komponen Aplikasi Flutter<br>
- Konsistensi: Berbagi instance CookieRequest di seluruh aplikasi memastikan bahwa semua komponen aplikasi memiliki akses ke informasi cookie yang sama, yang penting untuk konsistensi sesi dan pengelolaan data pengguna.<br>
- Efisiensi: Menggunakan instance CookieRequest yang sama di seluruh aplikasi lebih efisien daripada membuat instance baru setiap kali perlu mengakses cookie. Ini menghemat sumber daya dan memastikan respons yang lebih cepat.<br>
- Pemeliharaan: Memiliki titik pusat untuk pengelolaan cookie membuat pemeliharaan lebih mudah. Perubahan pada cara cookie ditangani hanya perlu dilakukan di satu tempat.<br>
- Keamanan: Mengelola cookie secara konsisten dan terpusat membantu dalam menjaga keamanan, karena memastikan bahwa semua komponen aplikasi mengikuti praktek terbaik yang sama untuk menangani data sensitif.

3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.<br>
Answer:<br>
- Mengambil Data JSON: Dapatkan data JSON dari sumbernya, seperti API endpoint atau file JSON lokal. Gunakan package http untuk permintaan HTTP ke API dan mendapatkan respons JSON. Untuk file JSON lokal, gunakan package dart:convert untuk membaca file.<br>
- Melakukan Parsing Data JSON: Gunakan package dart:convert untuk mengubah respons JSON menjadi objek Dart yang dapat digunakan dalam aplikasi Flutter. Metode jsonDecode() sering digunakan untuk konversi ini.<br>
- Membuat Model Data: Buat model data Dart yang sesuai dengan struktur JSON. Model ini berisi properti yang mencerminkan data JSON dan metode untuk mengonversi antara objek Dart dan JSON. Ini memudahkan akses dan manipulasi data.<br>
Menampilkan Data di Flutter: Tampilkan data yang sudah diparsing dan di-modelkan di aplikasi Flutter menggunakan widget seperti ListView, GridView, atau DataTable. Akses properti dari model data untuk menampilkan informasi yang relevan.

4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.<br>
Answer:<br> 
- Input Data Akun di Flutter: Pengguna memasukkan nama pengguna dan kata sandi di aplikasi Flutter.<br>
- Pengiriman HTTP Request: Aplikasi Flutter mengirim permintaan HTTP ke server Django dengan data akun.<br>
- Penerimaan dan Pemeriksaan Data di Django: Server Django menerima permintaan dan memeriksa data akun. Django menggunakan autentikasi bawaan atau pustaka seperti Django REST Framework untuk memverifikasi akun.<br>
- Generasi Token Akses/Sesi: Jika akun valid, Django menghasilkan token akses atau sesi unik.<br>
- Pengiriman Token ke Flutter: Token dikirim kembali ke aplikasi Flutter sebagai respons.<br>
- Penyimpanan Token di Flutter: Aplikasi Flutter menyimpan token untuk digunakan dalam permintaan selanjutnya.<br>
- Permintaan Berikutnya dengan Token: Saat mengakses menu atau fitur yang memerlukan autentikasi, Flutter menyertakan token dalam permintaan HTTP ke Django.<br>
- Verifikasi Token oleh Django: Server Django memeriksa keabsahan token yang diterima dari Flutter.<br>
- Pengizinan Akses oleh Django: Jika token valid, Django mengizinkan akses ke menu atau fitur yang diminta.<br>
- Pengiriman Data ke Flutter: Data menu atau fitur yang diminta dikirimkan kembali ke aplikasi Flutter.<br>
- Tampilan Menu/Fitur di Flutter: Aplikasi Flutter menampilkan menu atau fitur yang diterima dari Django kepada pengguna.

5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.<br>
Answer: <br>
- Widget-container: Widget-container berguna untuk mengelilingi widget lainnya, memberikan mereka padding, margin, dan memungkinkan dekorasi seperti warna dan bentuk.<br>
- Baris dan Kolom: Kedua widget ini efektif untuk menyusun widget dalam urutan linear, baik secara horizontal (Baris) maupun vertikal (Kolom).<br>
- DaftarTampil: Widget ini digunakan untuk daftar item yang panjang, memungkinkan pengguna menggulir (scroll) melalui kontennya.<br>
- KotakBerukuran: Widget ini umumnya digunakan untuk memberikan jarak antara widget atau menetapkan dimensi tertentu pada widget tertentu.<br>
- Teks: Widget ini berfungsi untuk menampilkan elemen teks dalam aplikasi.<br>
- Penyelarasan: Widget ini membantu menempatkan atau memposisikan widget di dalam widget induknya.<br>
- Penggeseran: Widget ini umumnya digunakan untuk menampilkan panel navigasi samping dalam aplikasi.<br>
- TombolMeninggi: Widget ini berguna untuk membuat tombol yang menonjol dan tampak lebih elegan.

6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! <br>
Answer: <br>
- Memastikan deployment proyek tugas Django berjalan dengan baik <br>
- Membuat halaman login pada proyek tugas Flutter.<br>
  1. Buatlah file baru bernama login.dart pada folder screen. Lalu pada file main.dart, ubah bagian home menjadi home: LoginPage() (sesuaikan kode)<br>
- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.<br>
  1. Setup Autentikasi pada Django untuk Flutter<br>
  2. Integrasi Sistem Autentikasi pada Flutter<br>
- Membuat model kustom sesuai dengan proyek aplikasi Django.<br>
  1. Untuk melakukan kustom, gunakan website quicktypoe agar mengkonversi model JSON dari projek django menjadi model di dart. Lalu, buatlah folder baru bernama model. Kemudian, buat file bernama item.dart untuk menyimpan model yang telah dibuat.<br>
- Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.<br>
  1. Buatlah file baru pada folder lib/screens dengan nama list_product.dart.<br>
  2. Pada file list_product.dart, impor library yang dibutuhkan dan kode yang dibutuhkan juga. <br>
  3. Salinlah potongan kode berikut pada pages/list_product.dart.<br>
  4. Tambahkan halaman list_product.dart ke widgets/left_drawer.dart dengan menambahkan kode yang sesuai. <br>
  5. Ubah fungsi tombol Lihat Produk pada halaman utama agar mengarahkan ke halaman ProductPage. Kamu dapat melakukan redirection dengan menambahkan else if setelah kode if(...){...} di bagian akhir onTap: () { } yang ada pada file widgets/shop_card.dart <br>
  6. Impor file yang dibutuhkan saat menambahkan ProductPage ke left_drawer.dart dan shop_card.dart.<br>
- Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.