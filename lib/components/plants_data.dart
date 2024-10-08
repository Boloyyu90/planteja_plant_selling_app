import 'package:flutter_application_testing/components/plants_card.dart';

List<Plant> plants = [
  Plant(
    name: "Monstera Deliciosa",
    description:
        "Monstera Deliciosa, juga dikenal sebagai Swiss Cheese Plant, memiliki daun besar dengan lubang unik yang memberikan kesan tropis. Tanaman ini mudah dirawat dan cocok untuk indoor dengan sedikit sinar matahari langsung.",
    price: "Rp 120K",
    image: "lib/images/plants/Monstera Deliciosa.webp",
  ),
  Plant(
    name: "Philodendron Birkin",
    description:
        "Philodendron Birkin menampilkan daun hijau tua yang dihiasi dengan garis-garis putih elegan. Tanaman ini cocok ditempatkan di sudut rumah untuk menambah kesan alami dan modern.",
    price: "Rp 150K",
    image: "lib/images/plants/Philodendron Birkin.webp",
  ),
  Plant(
    name: "Calathea Orbifolia",
    description:
        "Calathea Orbifolia memiliki daun lebar dengan pola garis-garis hijau dan perak yang menawan. Tanaman ini sangat cocok untuk indoor, terutama di ruangan dengan cahaya rendah.",
    price: "Rp 95K",
    image: "lib/images/plants/Calathea Orbifolia.webp",
  ),
  Plant(
    name: "Alocasia Amazonica",
    description:
        "Alocasia Amazonica dikenal dengan bentuk daunnya yang eksotis dan unik, menyerupai tameng dengan garis-garis putih tegas. Tanaman ini menambah kesan tropis dan berkelas pada interior ruangan.",
    price: "Rp 175K",
    image: "lib/images/plants/Alocasia Amazonica.webp",
  ),
  Plant(
    name: "Sansevieria Trifasciata",
    description:
        "Sansevieria, atau Lidah Mertua, merupakan tanaman yang terkenal tahan lama dan dapat bertahan dengan sedikit perawatan. Daunnya yang tegak dan bercorak hijau-kuning menjadikannya pilihan favorit untuk penghias ruangan.",
    price: "Rp 80K",
    image: "lib/images/plants/Sansevieria Trifasciata.webp",
  ),
  Plant(
    name: "Pilea Peperomioides",
    description:
        "Tanaman ini memiliki bentuk daun bundar yang menyerupai koin, dipercaya membawa keberuntungan. Cocok untuk menghiasi meja kerja atau sudut jendela.",
    price: "Rp 110K",
    image: "lib/images/plants/Pilea Peperomioides.webp",
  ),
  Plant(
    name: "Fiddle Leaf Fig",
    description:
        "Fiddle Leaf Fig memiliki daun lebar dan tebal yang memberikan kesan elegan dan mewah. Tanaman ini sering digunakan sebagai dekorasi di ruangan minimalis atau modern.",
    price: "Rp 350K",
    image: "lib/images/plants/Fiddle Leaf Fig.webp",
  ),
  Plant(
    name: "Zamioculcas Zamiifolia ",
    description:
        "ZZ Plant terkenal dengan daunnya yang tebal dan mengkilap, serta kemampuan beradaptasinya di berbagai kondisi cahaya. Pilihan sempurna bagi mereka yang mencari tanaman yang mudah dirawat.",
    price: "Rp 90K",
    image: "lib/images/plants/Zamioculcas Zamiifolia.webp",
  ),
  Plant(
    name: "Aglaonema Red Siam",
    description:
        "Tanaman Aglaonema ini memiliki kombinasi warna hijau dengan pinggiran merah terang pada daunnya, menambah kesan hidup dan cerah di dalam ruangan. Tahan terhadap cahaya rendah dan cocok untuk indoor.",
    price: "Rp 130K",
    image: "lib/images/plants/Aglaonema Red Siam Aurora.webp",
  ),
  Plant(
    name: "Peperomia Rosso",
    description:
        "Peperomia Rosso memiliki daun berwarna hijau tua di bagian atas dan merah di bagian bawah, memberikan kontras yang menarik. Tanaman ini ideal untuk ditempatkan di area dengan cahaya tidak langsung.",
    price: "Rp 75K",
    image: "lib/images/plants/Peperomia Rosso.webp",
  ),
  Plant(
    name: "Ficus Elastica",
    description:
        "Ficus Elastica, atau Rubber Plant, memiliki daun besar yang mengkilap. Tanaman ini tahan terhadap berbagai kondisi dan sering digunakan sebagai penghias ruangan yang elegan.",
    price: "Rp 100K",
    image: "lib/images/plants/Ficus Elastica.webp",
  ),
  Plant(
    name: "Strelitzia Reginae ",
    description:
        "Strelitzia Reginae, juga dikenal sebagai Bird of Paradise, memiliki bunga mencolok berwarna oranye dan biru, menyerupai burung eksotis. Tanaman ini memberikan nuansa tropis yang menakjubkan di dalam ruangan.",
    price: "Rp 300K",
    image: "lib/images/plants/Strelitzia Reginae.webp",
  ),
  Plant(
    name: "Aloe Vera",
    description:
        "Aloe Vera adalah tanaman sukulen yang populer tidak hanya sebagai dekorasi, tetapi juga untuk manfaat kesehatan. Tanaman ini mudah dirawat dan dapat ditempatkan di berbagai sudut ruangan.",
    price: "Rp 30K",
    image: "lib/images/plants/Aloe Vera.webp",
  ),
  Plant(
    name: "Senecio Rowleyanus",
    description:
        "String of Pearls memiliki daun bulat menyerupai mutiara yang menjuntai dari pot gantung. Tanaman ini menambah keunikan pada dekorasi indoor dengan tampilan yang elegan.",
    price: "Rp 75K",
    image: "lib/images/plants/Senecio Rowleyanus.webp",
  ),
  Plant(
    name: "Nepenthes ",
    description:
        "Nepenthes, atau Pitcher Plant, adalagreeh tanaman karnivora yang menangkap serangga dengan perangkap berbentuk kantong. Cocok sebagai koleksi tanaman yang unik dan eksotis.",
    price: "Rp 150K",
    image: "lib/images/plants/Nepenthes.webp",
  ),
  Plant(
    name: "Calathea Lancifolia ",
    description:
        "Calathea Lancifolia memiliki daun panjang dengan pola yang mirip kulit ular. Bagian bawah daunnya berwarna ungu, menambah kesan artistik pada dekorasi rumah.",
    price: "Rp 95K",
    image: "lib/images/plants/Calathea lancifolia.webp",
  ),
  Plant(
    name: "Dionaea Muscipula ",
    description:
        "Venus Flytrap adalah tanaman karnivora yang unik, terkenal dengan daunnya yang dapat menangkap serangga. Tanaman ini memberikan sentuhan menarik dan berbeda pada ruangan.",
    price: "Rp 125K",
    image: "lib/images/plants/Dionaea Muscipula.webp",
  ),
];
