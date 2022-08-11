import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Redesign',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static final List<dynamic> data_1 = [
    {
      'title': 'Air Terjun Suwat',
      'image': 'air_terjun_suwat.jpg',
      'rating': 4.8,
    },
    {
      'title': 'Danau Beratan',
      'image': 'danau_beratan.jpg',
      'rating': 4.9,
    },
    {
      'title': 'Desa Penglipuran',
      'image': 'desa_penglipuran.jpg',
      'rating': 4.8,
    },
    {
      'title': 'Garuda Wisnu Kencana',
      'image': 'garuda_wisnu_kencana.jpg',
      'rating': 4.4,
    },
    {
      'title': 'Uluwatu',
      'image': 'uluwatu.jpg',
      'rating': 4.4,
    },
  ];
  static final List<dynamic> data_2 = [
    {
      'title': 'Nusa Dua Beach',
      'image': 'nusa_dua_beach.jpg',
      'rating': 4.8,
    },
    {
      'title': 'Nusa Penida',
      'image': 'nusa_penida.jpg',
      'rating': 4.9,
    },
    {
      'title': 'Pantai Pandawa',
      'image': 'pantai_pandawa.jpg',
      'rating': 4.8,
    },
    {
      'title': 'Tanah Lot',
      'image': 'tanah_lot.jpg',
      'rating': 4.4,
    },
    {
      'title': 'Pantai Kelingking',
      'image': 'pantai_kelingking.jpg',
      'rating': 4.4,
    },
    {
      'title': 'Pantai Sanur',
      'image': 'pantai_sanur.jpg',
      'rating': 4.4,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // ! Digunakan untuk Scrolling (default scroll direction vertical)
        child: Stack( // ! Menggunakan Stack Widget untuk implementasi Layout yang bertumpuk
          children: [
            // *Header Gradient
            Container( // ! Header menggunakan Container agar dapat di styling
              height: 135,
              decoration: BoxDecoration(
                gradient: LinearGradient( // ! Linear Gradient
                  colors: [
                    Colors.green[800]!,
                    Colors.blue[800]!,
                  ],
                ),
              ),
            ),
            // *Body Content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 28,),
                // *Header
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      const Icon( // ! Menu Icon
                        Icons.menu,
                        color: Colors.white,
                        size: 32,
                      ),
                      const SizedBox(width: 12,),
                      Expanded( // ! Expanded Widget (digunakan untuk memberi ruang untuk kata sambutan)
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Hai',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 2,),
                            Text(
                              'Bang Bro!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12,),
                      const Icon( // ! Notification Icon
                        Icons.notifications,
                        color: Colors.white,
                        size: 32,
                      ),
                      const SizedBox(width: 8,),
                      Container( // ! Profile Widget (menggunakan Container untuk memberikan warna background dan merubah bentuk ke lingkaran dengan menggunakan BorderRadius)
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.purple[700],
                          borderRadius: const BorderRadius.all(Radius.circular(64)),
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40,),
                // *Search Panel
                Container( // ! Menggunakan Container sebagai Parent Widget untuk Search panel agar dapat di Styling
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    boxShadow: [ // ! Shadow
                      BoxShadow(
                        color: Colors.black.withOpacity(.25), // ! Warna hitam dengan transparansi sebesar 25%
                        offset: const Offset(2, 1), // ! Ukuran dan Arah bayangan
                        blurRadius: 4 // ! Radius blur bayangan
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const Icon( // ! Search Icon
                        Icons.search,
                        color: Colors.grey,
                        size: 32,
                      ),
                      const SizedBox(width: 4,),
                      Expanded( // ! Ruang kosong tersisa untuk inputan
                        child: TextFormField( // ! Input Widget
                          decoration: const InputDecoration( // ! Dekorasi/Styling pada TextFormField
                            border: UnderlineInputBorder(borderSide: BorderSide.none), // ! Konfigurasi garis batas pada Inputan
                            hintText: 'Search here to get more information!', // ! Placeholder
                            isDense: true, // ! Mengatur jarak vertical antara isi dan batas pada inputan (True untuk membuat jarak secara minimal)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 28,),
                // *List 1
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Sites To Explore',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                SizedBox( // ! Berfungsi untuk membungkus ListView agar tidak terjadi error
                  height: 240, // ! Beri tinggi agar terhindar dari error karena tinggi dari ListView tidak ada / tidak terbatas
                  child: ListView.builder( // ! Generate data secara otomatis berdasarkan data yang digunakan
                    scrollDirection: Axis.horizontal, // ! Konfigurasi agar dapat di Scroll secara horizontal dan data ditampilkan secara horizontal
                    itemCount: data_1.length, // ! Jumlah data
                    itemBuilder: (context, index) => Container( // ! Menampilkan data dan styling
                      width: 160,
                      margin: const EdgeInsets.symmetric(horizontal: 4), // ! Memberikan jarak antar data
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('lib/images/${data_1[index]['image']}'), fit: BoxFit.cover), // ! Background data yang ditampilkan berdasarkan foto yang tersedia
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          gradient: LinearGradient( // ! Memberikan latar Gradient lebih gelap dengan alur gradiasi yang dikonfigurasi
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black.withOpacity(.9),
                              Colors.black.withOpacity(0),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row( // ! Rating
                              mainAxisAlignment: MainAxisAlignment.end, // ! Menggunakan Row agar dapat membuat Widget berada disebelah kanan
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: Colors.green[800],
                                    borderRadius: const BorderRadius.all(Radius.circular(4)),
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        data_1[index]['rating'].toString(), // ! Cara memanggil data yang tersedia
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(width: 4,),
                                      const Icon(
                                        Icons.star,
                                        color: Colors.white,
                                        size: 16,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Expanded(child: Container()),
                            Text( // ! Judul
                              data_1[index]['title'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container( // ! Historical
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: const BorderRadius.all(Radius.circular(4)),
                              ),
                              child: const Text(
                                'HISTORICAL',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28,),
                // *List 2
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'For You',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8,),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data_2.length,
                    itemBuilder: (context, index) => Container(
                      width: 200,
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('lib/images/${data_2[index]['image']}'), fit: BoxFit.cover),
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
                      ),
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(8)),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(.75),
                              Colors.black.withOpacity(0),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(child: Container()),
                            Text(
                              data_2[index]['title'],
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.grey[700],
                                borderRadius: const BorderRadius.all(Radius.circular(4)),
                              ),
                              child: const Text(
                                'HISTORICAL',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
