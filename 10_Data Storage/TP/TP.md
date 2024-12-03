<div align="center">

**TUGAS PENDAHULUAN**  
**PEMROGRAMAN PERANGKAT BERGERAK**

**MODUL X**  
**DATA STORAGE (BAGIAN I)**

![logo tel-u](https://github.com/user-attachments/assets/3a44181d-9c92-47f6-8cf0-87755117fd99)

Disusun Oleh :

**Naufal Ananta (2211104081)**  
**SE06-02**

Asisten Praktikum :  
Muhammad Faza Zulian Gesit Al Barru  
Aisyah Hasna Aulia

Dosen Pengampu :  
Yudha Islami Sulistya, S.Kom., M.Cs

PROGRAM STUDI S1 REKAYASA PERANGKAT LUNAK  
FAKULTAS INFORMATIKA  
TELKOM UNIVERSITY PURWOKERTO  
2024

</div>

---

# TUGAS PENDAHULUAN

## 1. Jelaskan secara singkat fungsi SQLite dalam pengembangan aplikasi mobile!
SQLite adalah sistem manajemen basis data relasional yang ringan dan serverless, sering digunakan dalam pengembangan aplikasi mobile. Fungsi utamanya adalah menyimpan dan mengelola data secara lokal di perangkat, memungkinkan akses cepat dan operasi CRUD (Create, Read, Update, Delete) tanpa memerlukan koneksi internet. SQLite cocok untuk aplikasi dengan kebutuhan penyimpanan data sederhana karena ukurannya kecil, kinerja efisien, dan mudah diintegrasikan dengan berbagai bahasa pemrograman.
---

## 2. Apa saja yang dimaksud dengan operasi CRUD? Berikan penjelasan singkat untuk masing-masing operasi!
CRUD adalah singkatan dari empat operasi dasar yang digunakan untuk mengelola data dalam aplikasi atau sistem database. CRUD terdiri dari:

Create (Membuat): Operasi untuk menambahkan data baru ke dalam sistem atau database. Contohnya adalah membuat akun pengguna baru atau menambah item dalam daftar produk.

Read (Membaca): Operasi untuk mengambil atau membaca data yang sudah ada. Misalnya, menampilkan data pengguna atau membaca daftar produk dari database.

Update (Memperbarui): Operasi untuk mengubah atau memperbarui data yang sudah ada. Contohnya adalah memperbarui alamat pengguna atau mengubah harga produk.

Delete (Menghapus): Operasi untuk menghapus data dari sistem atau database. Misalnya, menghapus akun pengguna atau menghapus item dalam daftar produk.

---

## 3. Tuliskan kode SQL untuk membuat tabel bernama users dengan kolom berikut :
  • id (integer, primary key, auto increment)
  -
  • name (text)
  -
  • email (text)
  -
  • createdAt (timestamp, default value adalah waktu sekarang)
  -

**Input**
```sql
CREATE TABLE users (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

```
---
## 4. Sebutkan langkah-langkah utama untuk menggunakan plugin sqflite di dalam Flutter!
Untuk menggunakan plugin sqflite di dalam Flutter, berikut adalah langkah-langkah utamanya:

Tambahkan dependensi sqflite:

Buka file pubspec.yaml dan tambahkan dependensi sqflite di bagian dependencies.
```yaml

dependencies:
  flutter:
    sdk: flutter
  sqflite: ^2.0.0+4  # Pastikan versi terbaru
  path: ^1.8.0
```
Kemudian jalankan perintah flutter pub get untuk menginstall dependensi.

Impor paket yang diperlukan: Di file Dart tempat Anda ingin menggunakan SQLite, impor paket sqflite dan path untuk mengelola path database.

```dart

import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
```
Membuat dan membuka database: Buat fungsi untuk membuka atau membuat database baru. Gunakan paket path untuk mendapatkan lokasi file database.

```dart
=
Future<Database> initializeDB() async {
  // Mendapatkan path ke direktori penyimpanan aplikasi
  String path = await getDatabasesPath();
  // Menyusun path file database
  return openDatabase(
    join(path, 'my_database.db'),
    onCreate: (db, version) async {
      // Membuat tabel baru (misal: tabel pengguna)
      await db.execute(
        'CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT)',
      );
    },
    version: 1,
  );
}
```
Melakukan operasi CRUD: Setelah database terbuka, Anda bisa mulai melakukan operasi CRUD (Create, Read, Update, Delete) pada database.

Create (Insert Data):

```dart
Future<void> insertUser(Database db, String name) async {
  await db.insert(
    'users',
    {'name': name},
    conflictAlgorithm: ConflictAlgorithm.replace, // Menangani konflik saat insert
  );
}
```
Read (Membaca Data):

```dart
Future<List<Map<String, dynamic>>> getUsers(Database db) async {
  return await db.query('users');
}
```
Update (Memperbarui Data):

```dart

Future<void> updateUser(Database db, int id, String newName) async {
  await db.update(
    'users',
    {'name': newName},
    where: 'id = ?',
    whereArgs: [id],
  );
}
```
Delete (Menghapus Data):

```dart
Future<void> deleteUser(Database db, int id) async {
  await db.delete(
    'users',
    where: 'id = ?',
    whereArgs: [id],
  );
}
```
Menutup database: Jangan lupa untuk menutup database setelah selesai menggunakannya.

```dart

Future<void> closeDatabase(Database db) async {
  await db.close();
}
```
Menguji CRUD di UI: Anda dapat menghubungkan fungsi CRUD ini dengan UI Flutter, seperti menggunakan FutureBuilder untuk menampilkan data yang dibaca dari database.

---
## 5. Lengkapi kode berikut untuk membaca semua data dari tabel users menggunakan sqlite.

```dart
static Future<List<Map<String, dynamic>>> getUsers() async {
  final db = await SQLHelper.db();
  return db.query('users'); 
}

```
  

---
