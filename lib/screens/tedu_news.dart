import 'package:flutter/material.dart';
import 'package:testFlutter/models/models/news.dart';

class NewsPage extends StatelessWidget {
  List<News> teduNews = [
    News(
        header: 'Türkiye Arena Kulüpler Şampiyonası',
        header2: "Başarılarımız",
        content:
            "20-24 Aralık 2020 tarihleri arasında gerçekleşen Türkiye Arena Kulüpler Arası Kısa Kulvar Genç ve Açık Yaş Yüzme Şampiyonası "
            "ve Yıldızlar Bireysel Yüzme Müsabakalarında lise öğrencilerinden Deniz Ertan ve Defne Taçyıldız yarışmaya TED Ankara Kolejini"
            "temsilen katıldı. Rekabetleri sonucunda kazandıkları dereceleri kutluyor, sevinçlerini paylaşıyoruz.",
        imageUrl:
            "https://www.tedutimes.com/wp-content/uploads/2021/01/TURK-EGITIM-DERNEGI-3.png"),
    News(
        header: "VEDAT BAYRAM MARIE CURIE SEAL OF EXCELLENCE” ÖDÜLÜNÜ KAZANDI",
        header2: "Akademik",
        content: "Endüstri Mühendisliği Bölümü Dr. Öğretim Üyesi Vedat Bayram"
            " Avrupa Komisyonu Horizon 2020 Marie Sklodowska-Curie Bireysel Bursu’na yaptığı proje başvurusundaki başarısından dolayı prestijli Seal of Excellence ödülünü kazandı.",
        imageUrl:
            "https://www.tedutimes.com/wp-content/uploads/2020/12/SealOfExcellenceHaber-FOTO-696x709.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemBuilder: (context, index) {
        return News(
            header: teduNews[index].header,
            header2: teduNews[index].header2,
            content: teduNews[index].content,
            imageUrl: teduNews[index].imageUrl);
      },
      itemCount: teduNews.length,
    ));
  }
}
