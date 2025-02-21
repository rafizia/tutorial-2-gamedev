Nama: Muhammad Rafi Zia Ulhaq<br>
NPM: 2206814551<br>

### Apa saja pesan log yang dicetak pada panel Output?
```
Platform initialized
Reached objective!
```

### Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
```
Platform initialized
Reached objective!
Reached objective!
```

### Buka scene `MainLevel` dengan tampilan workspace 2D. Apakah lokasi scene `ObjectiveArea` memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
Ya ketika objek pesawat memasuki scene `ObjectiveArea` maka akan dicetak output berupa “Reached objective!”, hal ini terjadi karena terdapat fungsi `_on_ObjectiveArea_body_entered` pada `ObjectiveArea` di mana ketika objek bernama “BlueShip” memasuki `ObjectiveArea` tersebut maka tampilkan “Reached objective!” pada console.

### Scene `BlueShip` dan `StonePlatform` sama-sama memiliki sebuah child node bertipe `Sprite`. Apa fungsi dari node bertipe `Sprite`?
Node `Sprite` digunakan untuk menampilkan gambar (texture) dalam 2D.

### Root node dari scene `BlueShip` dan `StonePlatform` menggunakan tipe yang berbeda. `BlueShip` menggunakan tipe `RigidBody2D`, sedangkan `StonePlatform` menggunakan tipe `StaticBody2D`. Apa perbedaan dari masing-masing tipe node?
`RigidBody2D` merupakan node mengimplementasikan fisika dimana objek dapat bergerak ketika dipengaruhi oleh fisika contohnya gravitasi. Sebaliknya, `StaticBody2D` merupakan node yang tidak dapat digerakkan oleh kekuatan eksternal sehingga node ini tidak dipengaruhi oleh fisika.

### Ubah nilai atribut `Mass` pada tipe `RigidBody2D` secara bebas di scene BlueShip, lalu coba jalankan scene `MainLevel`. Apa yang terjadi?
Karena kita memakai platform dengan node `StaticBody2D`, kita tidak dapat melihat perubahan yang terjadi pada scene `MainLevel`. Oleh karena itu, saya mencoba untuk menambahkan sebuah `RigidBody2D` di atas BlueShip. Ketika `RigidBody2D` tersebut memiliki `Mass` yang kecil maka `RigidBody2D` tersebut akan berdiri di atas BlueShip, namun ketika saya naikkan `Mass` menjadi 1000, maka ketika `RigidBody2D` jatuh dan bertabrakan dengan BlueShip, maka BlueShip akan bergeser, sehingga keduanya sejajar berada di atas platform.

### Ubah nilai atribut `Disabled` pada tipe `CollisionShape2D` di scene `StonePlatform`, lalu coba jalankan scene `MainLevel`. Apa yang terjadi?
Jika kita mengubah atribut `disabled` menjadi true pada `CollisionShape2D`, maka *collision* dari node tersebut akan dinonaktifkan sehingga objek lain (pada kasus ini BlueShip) akan menembus objek ini tanpa bertabrakan.

### Pada scene `MainLevel`, coba manipulasi atribut `Position`, `Rotation`, dan `Scale` milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
Ketika kita mengubah atribut `Position` maka posisi dari pesawat akan berubah sesuai dengan koordinat x dan y yang kita tetapkan. Kemudian jika kita mengubah atribute `Rotation` maka kita dapat mengubah arah rotasi dari pesawat tersebut. Terakhir jika kita mengubah atribut `Scale` maka kita dapat mengubah ukuran dari pesawat tersebut.

### Pada scene `MainLevel`, perhatikan nilai atribut `Position` node `PlatformBlue`, `StonePlatform`, dan `StonePlatform2`. Mengapa nilai `Position` node `StonePlatform` dan `StonePlatform2` tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
Hal ini terjadi karena `StaticBody2D` mewarisi transformasi dari *parent*-nya yaitu `Node2D`, sehingga nilai `Position` dalam Inspector dihitung relatif terhadap `Node2D`, bukan terhadap koordinat global.