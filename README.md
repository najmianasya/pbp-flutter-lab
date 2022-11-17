# Tugas 7 PBP

Nama: Najmi Anasya Calyla

NPM: 2106639825

Kelas: PBP C

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
* Stateless widget merupakan widget yang tidak memiliki dan tidak dapat mengubah state secara mandiri sehingga akan mengikuti parubahan yang terjadi pada parent widgetnya.
* Stateful widget merupakan widget yang memiliki state berupa variabel yang disimpan di widget state. Ketika user melakukan sesuatu, maka stateful widget beserta child widgets-nya akan dibuat ulang (rebuild).

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Scaffold: widget yang digunakan untuk mengimplementasikan struktur tata letak dasar dari widget-widget lain dalam suatu aplikasi
* Text: widget yang digunakan untuk menampilkan string text pada aplikasi
* Center: widget yang digunakan untuk mengatur posisi child widgets ke tengah dari ruang yang tersedia di layar
* Column: widget yang digunakan untuk menampilkan child widgets secara vertikal
* Row: widget yang digunakan untuk menampilkan child widgets secara horizontal
* FloatingActionButton: widget yang digunakan sebagai floating button yang dapat ditekan oleh user untuk melakukan fungsi tertentu
* Padding: widget yang digunakan untuk menambahkan padding atau space kosong di sekitar suatu widget
* Visibility: widget yang digunakan untuk menampilkan atau menyembunyikan child widgets 

## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`SetState()` merupakan fungsi yang dipanggil untuk melakukan rebuild ketika terjadi perubahan state pada stateful widget. Pemanggilan `setState` akan memberi tahu Flutter bahwa telah terjadi perubahan state pada stateful widget. Kemudian, method `build` akan dijalankan kembali sehingga perubahan nilai yang terjadi dapat dilihat pada tampilan aplikasi. Pada tugas ini, variabel yang terdampak oleh fungsi `SetState()` adalah `_counter`.

## Jelaskan perbedaan antara const dengan final.
Keyword `final` dan `const` merupakan keyword yang dapat digunakan untuk membuat variabel yang bersifat immutable. Perbedaan antara `final` dan `const` terletak pada inialisasi nilai dari variabelnya. Nilai dari `final` diketahui pada saat run-time, sementara nilai dari `const` diketahui pada saat compile-time.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
* Membuat program Flutter baru bernama counter_7 dengan menjalankan perintah `flutter create counter_7`
* Menjalankan program Flutter dengan perintah `flutter run`
* Membuat fungsi baru bernama `_decrementCounter()` untuk mengurangi nilai counter dengan 1
* Menambahkan widget `FloatingActionButton` untuk mengurangi nilai counter dengan 1
* Menambahkan widget `Padding` sebagai parent dari `FloatingActionButton` untuk menambahkan padding di bagian kiri tombol minus
* Menambahkan widget `Visibility` sebagai parent dari widget `Padding` dan `FloatingActionButton` agar tombol minus dapat disembunyikan saat counter sudah bernilai 0

## References
* https://belajarflutter.com/perbedaan-final-dan-const-pada-dart-dan-flutter/

# Tugas 8 PBP

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
* `Navigator.push`: Menambahkan halaman baru yang akan ditampilkan pada aplikasi di bagian paling atas dari stack
* `Navigator.pushReplacement`: Menggantikan halaman yang terletak pada top of stack dengan halaman baru yang akan ditampilkan di aplikasi

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
* Card: widget yang digunakan untuk menampilkan data dari form dalam bentuk Card
* Drawer: widget yang digunakan untuk melakukan navigasi ke halaman counter_7, Tambah Budget, serta Data Budget
* DropdownButton: widget yang digunakan untuk meminta input menggunakan dropdown button
* Form: widget yang digunakan untuk menjadi container bagi input fields
* SingleChildScrollView: widget yang digunakan untuk membuat box berisi sebuah widget yang dapat di-scroll
* TextButton: widget yang digunakan untuk menampilkan button yang berisi sebuah text
* TextFormField: widget yang digunakan untuk meminta input berupa text

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
* OnPressed: event yang terjadi ketika user menekan suatu button
* OnTap: event yang terjadi ketika user menekan suatu widget
* OnChanged: event yang terjadi ketika terdapat perubahan value pada widget TextField
* OnSaved: event yang terjadi ketika user menyimpan sebuah form

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator berperan sebagai route manager yang mengatur pergantian halaman pada aplikasi. Cara kerja navigator mengikuti prinsip stack, yakni Last In First Out (LIFO). Layaknya stack pada umumnya, navigator memiliki method `push()` yang akan menambahkan halaman baru di bagian paling atas dari stack serta method `pop()` yang akan mengeluarkan halaman yang berada di bagian paling stack. Halaman yang berada di bagian paling atas stack (Top Of Stack/TOS) merupakan halaman yang akan ditampilkan pada aplikasi.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
* Membuat widget `Drawer` pada file `drawer.dart` dan routing ke halaman counter_7, Tambah Budget, serta Data Budget
* Membuat model `Budget` pada file `models.dart`
* Membuat form pada file `form.dart` untuk mendapatkan judul, nominal, dan jenis budget
* Membuat button "Simpan" pada file `form.dart` untuk menyimpan input dari form ke dalam sebuah list berisi objek Budget
* Membuat halaman untuk menampilkan data budget pada file `data_budget.dart`