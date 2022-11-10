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
