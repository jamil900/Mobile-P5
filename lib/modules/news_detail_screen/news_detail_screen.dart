import 'package:flutter/material.dart';


class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen(
      {super.key,
      required this.id,
      required this.title,
      required this.content});
  final String id;
  final String title;
  final String content;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

// class _NewsDetailScreenState extends State<NewsDetailScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Text(
//           widget.id,
//         ),
//       ),
//     );
//   }
// }

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Berita",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://jagatplay.com/wp-content/webp-express/webp-images/doc-root/wp-content/uploads/2022/03/Elden-Ring-jagatplay-4-1920x1080.jpg.webp",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  "Spesifikasi PC untuk Elden Ring (Ray-Tracing).",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Sudah mengkonfirmasikan eksistensi expansion pack bertajuk 'Shadow of the Erdtree' yang saat ini masih misterius, From Software akhirnya juga menawarkan sebuah fitur terbaru untuk Elden Ring yang sudah lama dinanti. Benar sekali, ray-tracing yang sudah sempat dirumorkan sejak rilisnya tahun lalu. Fitur ini tersedia via patch teranyar 1.09 yang tentu saja datang dengan segudang balancing dan proses pembersihan bug juga. Untuk gamer PC yang tertarik, spesifikasi resmi untuk menikmati game ini dalam format ray-tracing juga akhirnya dilepas. Apa yang Anda butuhkan? Ini dia: Minimum Requirements (1080p LOW Quality  LOW RT) OPERATING SYSTEM: WINDOWS 10, PROCESSOR: Intel Core i5-10600K or AMD Ryzen 5 3600XT, MEMORY: 16 GB RAM, GRAPHIC CARD: NVIDIA GeForce RTX 3060 Ti, 8 GB or AMD Radeon RX 6700 XT, 12 GB. Recommended Requirements (1080p HIGH Quality  HIGH RT) OPERATING SYSTEM: WINDOWS 11, PROCESSOR: Intel Core i7-10700K or AMD Ryzen 7 3800XT, MEMORY: 16 GB RAM, GRAPHIC CARD: NVIDIA GeForce RTX 3070 Ti, 8 GB or AMD Radeon RX 6900 XT, 16 GB.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Text('Like: $likeCount'),
                          const SizedBox(width: 10),
                          Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}

class NewsDetailScreenHot extends StatefulWidget {
  const NewsDetailScreenHot({
    super.key,
    required this.newsDetailHot,
  });
  final String newsDetailHot;

  @override
  State<NewsDetailScreenHot> createState() => _NewsDetailScreenHotState();
}

class _NewsDetailScreenHotState extends State<NewsDetailScreenHot> {
  int likeCount = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Info Terbaru",
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://awsimages.detik.net.id/community/media/visual/2016/02/29/96ca37b3-d780-4949-8e34-c00dfc9faf8d_169.jpg?w=700&q=90",
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Siswa SMP di Sidoarjo Meninggal Usai Dada Dilempar HP',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Jakarta - Nasib nahas dialami FAS, siswa kelas VII SMP di Candi Sidoarjo. Remaja laki-laki berusia 14 tahun itu dilempar ponsel hingga meninggal oleh kerabatnya yang masih duduk di bangku SD. Peristiwa pilu itu terjadi sekitar pukul 10.00 WIB, Sabtu (25/3). FAS saat itu sedang bermain bersama kerabatnya di Desa Sepande, Candi.Di tengah aktivitas itu, FAS tersinggung dengan kerabatnya. FAS lalu mendorong kepala kerabatnya. Merasa tak terima atas perlakuan itu, kerabatnya melemparkan HP ke arah FAS. Lemparan tersebut mengenai dada FAS. 'Pengakuan orang tua korban bahwa korban dilempar HP mengenai dadanya. Karena korban pingsan, kemudian dilarikan ke klinik,' ungkap kepala sekolah FAS, Gufron, dilansir detikJatim, Senin (27/3/2023). Lantaran kondisinya makin mengkhawatirkan, FAS lalu dirujuk ke RSUD. Malang, nyawanya tak tertolong sebelum sampai rumah sakit. 'Namun ketika akan dirujuk ke RSUD, korban meninggal dalam perjalanan,' imbuh Gufron. ",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 10),
                    Text(' Like: $likeCount')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          setState(() {
            likeCount++;
          });
          print(likeCount);
        },
        child: const Icon(Icons.favorite),
      ),
    );
  }
}
