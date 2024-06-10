class Buku {
  final String judul;
  final String pengarang;
  final String penerbit;
  final String imageUrl;
  final String category;
  final String tahun_terbit;
  final String sinopsis;

  Buku(
      {required this.judul,
      required this.pengarang,
      required this.penerbit,
      required this.imageUrl,
      required this.category,
      required this.tahun_terbit,
      required this.sinopsis});

  static fromJson(e) {}
}

List<Buku> bukuList = [
  //pelajaran
  Buku(
    judul: 'Mahir matematika ala bimbel',
    pengarang: 'Annisa Eprilia Fauziah, M.Pd',
    penerbit: 'Bmedia',
    imageUrl: 'assets/image/pelajaran1.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Buku Mahir Matematika ala Bimbel SD/MI Kelas 4. 5, & 6 ini disusun dengan tujuan membantu siswa mengatasi kesulitan-kesulitan mengerjakan soal dengan cara pembahasan soal bertahap dan trik ala bimbel. Di buku ini, penulis ingin membantu siswa belajar matematika dengan trik-trik tertentu sehingga terasa lebih mudah dalam memahami tipe soal. Untuk mencapai hal tersebut, siswa kelas 4,5, dan 6 yang ingin belajar matematika tentu juga membutuhkan ringkasan materi penting. Dilengkapi dengan contoh dan latihan soal untuk siswa agar dapat berlatih dan menguji pemahamannya.',
    category: 'Pelajaran',
  ),
  Buku(
    judul: 'Pemograman Laravel ',
    pengarang: 'Ade Rahmat Iskandar, Yono Suryadi',
    penerbit: 'Penerbit informatika ',
    imageUrl: 'assets/image/pelajaran2.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Buku Pemrograman Laravel ini menjabarkan pembahasan yang sistematis disertai implementasi kode program untuk setiap pembahasan dari mulai tipe data, operator aritmatika, penyeleksian, perulangan pada laravel. Buku ini membahas real project cara membangun Digital Startup menggunakan Framework Laravel. Penulis merancang dan mengimplementasikan setiap bab secara tematis dilengkapi contoh-contoh project nyata, sehingga dapat menuntun pelajar (para siswa, para mahasiswa atau pun pembelajar baru dalam dunia pemrograman) untuk siap menjadi seorang Full Stack developer dengan pemrograman Laravel.',
    category: 'Pelajaran',
  ),
  Buku(
    judul:
        'Keanehan dan keajaiban cara kerja otak bagaimana memahami dan meningkatkan kinerjanya',
    pengarang: 'Dean Burnett',
    penerbit: 'Gemilang',
    imageUrl: 'assets/image/pelajaran3.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Tahukah Anda bahwa otak kita bekerja dengan aneh dan ganjil? Hal tersebut juga berdampak pada apa yang kita ucapkan, lakukan, maupun alami menjadi tidak logis. Misalnya, otak dapat menghentikan tubuh untuk makan meskipun sedang lapar. Mengapa beberapa orang mencari pengalaman yang menakutkan. Orang yang kurang cerdas sering kali lebih percaya diri. Otak Anda sering memilih untuk disukai daripada melakukan apa yang Anda yakini benar. Otak Anda sering merevisi dan menyesuaikan dengan informasi baru agar Anda kelihatan lebih baik. Stres benar-benar mampu meningkatkan kinerja Anda dalam suatu tugas. Deadline adalah salah satu cara yang paling umum untuk memancing stres yang memicu terjadinya peningkatan pada kinerja dan keganjilan lainnya.',
    category: 'Pelajaran',
  ),
  Buku(
    judul: 'Get Rich Slowly',
    pengarang: 'Yodhia Antariksa',
    penerbit: 'Checklist',
    imageUrl: 'assets/image/pelajaran4.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Mencapai kekayaan bukanlah sesuatu yang dapat dicapai dalam semalam. Hal itu memerlukan waktu, kesabaran, dan kerja keras yang berkelanjutan. Terlebih lagi, membangun kekayaan yang berkelanjutan dan sehat melibatkan pengelolaan keuangan yang bijak, pengambilan risiko yang cerdas, dan pemahaman yang mendalam tentang cara kerja pasar keuangan dan investasi. Dalam buku ini, Anda akan menemukan berbagai strategi dan kiat praktis untuk mencapai kekayaan secara perlahan-lahan, dengan cara yang sehat dan berkelanjutan. Dari membangun kebiasaan yang mendukung, peningkatan skill, hingga memilih investasi yang tepat.',
    category: 'Pelajaran',
  ),
  Buku(
    judul: 'The Book of Complite English Grammar',
    pengarang: 'Astria Sekar',
    penerbit: 'Anak hebat indonesia',
    imageUrl: 'assets/image/pelajaran5.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Bahasa Inggris susah? Siapa bilang! Bahasa Inggris justru adalah bahasa paling mudah dipelajari karena susunan katanya begitu sederhana dan nggak jauh beda dengan susunan kata bahasa Indonesia. Tapi, pertama-tama, kamu mesti kenal grammarnya dulu. Praktis, mudah, nggak ribet. Bawa buku ini ke mana pun kamu pergi, kenali dan pahami setiap kosakata dan frasanya, dijamin sebentar lagi kamu akan cas-cis-cus ngomong pakai bahasa Inggris.',
    category: 'Pelajaran',
  ),
  Buku(
    judul: 'Problem Based Learning',
    pengarang: 'Arnita Budi Siswanti, & Prof. Richardus Eko Indrajit',
    penerbit: 'Penerbit andi',
    imageUrl: 'assets/image/pelajaran6.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Problem Based Learning merupakan metode pembelajaran berdasarkan pada prinsip penanganan kasus sebagai titik pangkal untuk mendapatkan dan mengintegrasikan ilmu pengetahuan yang baru. Pengertian lain tentang Problem Based Learning merupakan metode pembelajaran yang mana peserta didik diberikan permasalahan shari hari yang kompleks dan tidak memilikisatu jawaban yang benar. Hadirnya buku Problem Based Learning menjadi salah satu cara yang dapat digunakan oleh para pendidik dalam usaha membantu peserta didik agar menjadi kompeten dalam memecahkan masalah dan menghadapi tantangan ke depan.',
    category: 'Pelajaran',
  ),
  Buku(
    judul: 'Pendidikan Sebagai Formasi Jiwa Dan Lembaga',
    pengarang: 'Odemus Bei Witono',
    penerbit: 'Buku Kompas',
    imageUrl: 'assets/image/pelajaran7.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Pendidikan sebagai Formasi Jiwa dan Lembaga merupakan buku yang mengungkapkan gagasan seputar pembentukan subjek karya edukatif. Seperti merujuk pada gagasan Platon, bahwa pendidikan merupakan formasi jiwa, maka lembaga pendidikan sesuai konteks zamannya pun perlu berbenah dan berubah menjadi lebih baik. Karya pendidikan merupakan locus atau tempat pembinaan, atau pendampingan, bagi para peserta didik pada satu sisi, dan untuk guru atau pendidik pada sisi yang lain.',
    category: 'Pelajaran',
  ),
  Buku(
    judul: 'Pendidikan Jasmani Olahraga Dan Kesehatan Untuk SMP/MTs',
    pengarang: 'Khairul Hadziq & Annisha Fathni F',
    penerbit: 'Yrama Wida',
    imageUrl: 'assets/image/pelajaran8.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Buku Pendidikan Jasmani, Olahraga, dan Kesehatan Berbasis Profil Pelajar Pancasila SMP/MTs Kelas 8 ini disusun dengan menggunakan Kurikulum Merdeka yang mengusung semangat merdeka belajar. Adapun kebijakan pengembangan kurikulum ini tertuang dalam Keputusan Kepala Badan Standar, Kurikulum, dan Asesmen Pendidikan Kementerian Pendidikan, Kebudayaan, Riset, dan Teknologi Nomor 033/H/KR/2022 Hasil Uji Publik tentang Capaian Pembelajaran pada Pendidikan Anak Usia Dini, Jenjang Pendidikan Dasar, dan Jenjang Pendidikan Menengah pada Kurikulum Merdeka. Untuk mendukung pelaksanaan kurikulum tersebut, diperlukan penyediaan buku teks pelajaran yang sesuai dengan kebutuhan. Buku teks pelajaran ini merupakan salah satu bahan pembelajaran bagi siswa dan guru.',
    category: 'Pelajaran',
  ),
  Buku(
    judul: 'Administrasi Bisnis',
    pengarang: 'Cindy Nathalia, S.E., M.Ak.',
    penerbit: 'Anak Hebat Indonesia',
    imageUrl: 'assets/image/pelajaran9.jpg',
    tahun_terbit: '2023',
    sinopsis:
        ': Bisnis yang bersinggungan erat dengan kehidupan masyarakat dan berdampak pada kesejahteraan masyarakat dan ekonomi terus berkembang dipacu dengan adanya kemajuan teknologi dan ilmu pengetahuan. Dalam memulai sebuah bisnis, ada pertanyaan-pertanyaan yang turut menyertai.',
    category: 'Pelajaran',
  ),
  Buku(
    judul: 'Cara Cepat Menulis Tesis Dan Disertasi Yang Menarik & Berkualitas',
    pengarang: 'Nyarwi Ahmad, PhD',
    penerbit: 'Nasmedia',
    imageUrl: 'assets/image/pelajaran10.jpg',
    tahun_terbit: '2022',
    sinopsis:
        'DENGAN BERBASIS PADA REFLEKSI ATAS PENGALAMAN YANG PERNAH PENULIS ALAMI DAN JUGA BERDASARKAN BACAAN PENULIS ATAS SEJUMLAH REFERENSI YANG ADA, KEMUDIAN MENYADARI PENTINGNYA SEBUAH BUKU PANDUAN.',
    category: 'Pelajaran',
  ),

  //novel

  Buku(
    judul: 'Ayat ayat cinta',
    pengarang: 'Karya Habiburrahman El Shirazy',
    penerbit: 'Basmala dan Republika',
    imageUrl: 'assets/image/novel1.jpg',
    tahun_terbit: '2004',
    sinopsis:
        'Novel "Ayat-Ayat Cinta" mengisahkan kehidupan mahasiswa Indonesia di negara Mesir yang bernama Fahri. Dia mengambil perkuliahan di Universitas Al Azhar, Kota Kairo. Fahri dikenal sederhana, memiliki akhlak yang baik, dan taat dengan ajaran Islam. Ketaatannya itu cukup terlihat pada perilakunya. Bahkan, saat Fahri harus berinteraksi dengan lawan jenis, dia sangat menjaga diri karena berstatus bukan mahram. Dia juga memiliki tetangga beragama Kristen Koptik yang taat bernama Maria. Hingga suatu hari, Fahri menikah dengan muslimah asal Turki bernama Aisha melalui cara Islami. Dia mengenalnya melalui proses taaruf. Dan, setelah menikah, kehidupan Fahri menjadi terangkat. Fahri berasal dar keluarga biasa yang bisa menuntut ilmu ke Kairo setelah keluarganya menjual sawah warisan keluarga satu-satunya. Setelah menikah, Fahri berada dalam kehidupan mewah karena Aisha adalah anak dari pemilik perusahaan besar dengan laba milyaran per bulannya. Dia kini tinggal di apartemen elit di Kairo. Di samping itu, dia memiliki istri cantik, salihah, dan kaya. Namun, semua kemewahan itu tidak mengubah perilaku Fahri yang punya akhlak baik. Suatu hari, Fahri mesti mendekam di penjara. Dia difitnah telah memperkosa wanita yang sama sekali tidak pernah dilakukannya. Fahri tetap bersabar sembari mencari solusi dengan bermunajat pada Tuhannya melalui ibadah di dalam penjara. Di dalam penjara, Fahri tetap menuntut ilmu. Gurunya adalah seorang guru besar ekonomi yang dibui lantaran kerap melontarkan kritik pedas. Tidak hanya itu, Fahri mendapat cobaan yakni tawaran menyuap pihak terkait agar bisa bebas dari penjara. Dia bahkan pernah tergoda untuk memberi kesaksian palsu. Namun keimanan meneguhkannya untuk tetap bertindak sesuai ajaran Islam. Akhirnya, sebuah jalan keluar datang dan membuat Fahri terbebas dari hukuman. Orang-orang yang tadinya memberikan kesaksian palsu, bersedia mengungkap fakta yang sebenarnya.',
    category: 'Novel',
  ),
  Buku(
    judul: 'Bumi manusia ',
    pengarang: 'Pramoedya Ananta Toer',
    penerbit: 'Hasta mitra',
    imageUrl: 'assets/image/novel2.jpg',
    tahun_terbit: '1980',
    sinopsis:
        'Buku ini bercerita tentang perjalanan seorang tokoh bernama Minke. Minke adalah salah satu anak pribumi yang sekolah di HBS. Pada masa itu, yang dapat masuk ke sekolah HBS adalah orang-orang keturunan Eropa. Minke adalah seorang pribumi yang pandai, ia sangat pandai menulis. Tulisannya bisa membuat orang sampai terkagum-kagum dan dimuat di berbagai Koran Belanda pada saat itu. Sebagai seorang pribumi, ia kurang disukai oleh siswa-siswi Eropa lainnya. Minke digambarkan sebagai seorang revolusioner di buku ini. Ia berani melawan ketidakadilan yang terjadi pada bangsanya. Ia juga berani memberontak terhadap kebudayaan Jawa, yang membuatnya selalu di bawah. Selain tokoh Minke, buku ini juga menggambarkan seorang "Nyai" yang bernama Nyai Ontosoroh. Nyai pada saat itu dianggap sebagai perempuan yang tidak memiliki norma kesusilaan karena statusnya sebagai istri simpanan. Statusnya sebagai seorang Nyai telah membuatnya sangat menderita, karena ia tidak memiliki hak asasi manusia yang sepantasnya. Tetapi, yang menariknya adalah Nyai Ontosoroh sadar akan kondisi tersebut sehingga dia berusaha keras dengan terus-menerus belajar, agar dapat diakui sebagai seorang manusia. Nyai Ontosoroh berpendapat, untuk melawan penghinaan, kebodohan, kemiskinan, dan sebagainya hanyalah dengan belajar. Minke juga menjalin asmara dan akhirnya menikah dengan Annelies, anak dari Nyai Ontosoroh dan tuan Mellema.',
    category: 'Novel',
  ),
  Buku(
    judul: 'Cantik itu luka',
    pengarang: 'Eka Kurniawan',
    penerbit: 'Gramedia Pustaka ',
    imageUrl: 'assets/image/novel3.jpg',
    tahun_terbit: '2002',
    sinopsis:
        'Di akhir masa kolonial, seorang perempuan dipaksa menjadi pelacur. Kehidupan itu terus dijalaninya hingga ia memiliki tiga anak gadis yang kesemuanya cantik. Ketika mengandung anaknya yang keempat, ia berharap anak itu akan lahir buruk rupa. Itulah yang terjadi, meskipun secara ironik ia memberinya nama si Cantik.',
    category: 'Novel',
  ),
  Buku(
    judul: 'Laskar pelangi',
    pengarang: 'Andrea Hirata',
    penerbit: 'Bentang pustaka',
    imageUrl: 'assets/image/novel4.jpg',
    tahun_terbit: '2005',
    sinopsis:
        'Ceritanya terjadi di desa Gantung, Belitung Timur. Dimulai ketika sekolah Muhammadiyah terancam akan dibubarkan oleh Depdikbud Sumsel jikalau tidak mencapai siswa baru sejumlah 10 anak. Ketika itu baru 9 anak yang menghadiri upacara pembukaan, akan tetapi tepat ketika Pak Harfan, sang kepala sekolah, hendak berpidato menutup sekolah, Harun dan ibunya datang untuk mendaftarkan diri di sekolah kecil itu. Dari sanalah dimulai cerita mereka. Mulai dari penempatan tempat duduk, pertemuan mereka dengan Pak Harfan, perkenalan mereka yang luar biasa di mana A Kiong yang malah cengar-cengir ketika ditanyakan namanya oleh guru mereka, Bu Mus. Kejadian bodoh yang dilakukan oleh Borek, pemilihan ketua kelas yang diprotes keras oleh Kucai, kejadian ditemukannya bakat luar biasa Mahar, pengalaman cinta pertama Ikal, sampai pertaruhan nyawa Lintang yang mengayuh sepeda 80 km pulang pergi dari rumahnya ke sekolah.',
    category: 'Novel',
  ),
  Buku(
    judul: 'Laut bercerita ',
    pengarang: 'Leila S.Chudori',
    penerbit: 'Perpustakaan populer gramedia',
    imageUrl: 'assets/image/novel5.jpg',
    tahun_terbit: '2017',
    sinopsis:
        'Novel ini ditulis dalam sudut pandang ‘Aku’ dari kedua karakter Biru Laut Wibisono dan Asmara Jati. Biru Laut adalah seorang Mahasiswa, yang mempunyai adik bernama Asmara Jati. Baik Laut atau Asmara Jati, keduanya menjadi tokoh utama dalam Novel tersebut. Bermula pada tahun 1991, Leila mengawali novelnya dengan mengisahkan kehidupan sekelompok mahasiswa yang berkegiatan di suatu rumah di Seyegan, Yogyakarta. Mahasiswa-mahasiswa ini memiliki ketertarikan yang sama terhadap bacaan termasuk sastra. Dalam hal ini, termasuk sastra yang sempat dilarang untuk dibicarakan ketika itu, sastra karya Pramoedya Ananta Toer. Dalam novel ini, alur yang digunakan tidak berurutan. Dari 1991, pembaca akan diarahkan menuju bab berikutnya yakni tahun 1998. Leila menulis berdasarkan peristiwa saat ini (ketika Biru Laut berada dalam penjara) dan masa lalu (ketika Biru laut masih menjadi mahasiswa dan buron). Sebelum berada di penjara, konflik yang dihadapi Laut cukup banyak. Termasuk bagaimana ketika ia dan teman-temannya mengatur diskusi dan aksi demi membela petani Jagung di Blangguan yang tanahnya diambil secara tidak adil oleh pemerintah. Selain itu, novel ini juga bercerita bagaimana salah satu sahabat Laut berkhianat dan membocorkan informasi kepada intel. Aktivisme-aktivisme dan pembelaan ini yang kemudian diketahui oleh intel mengantarkan Laut kepada penjara.',
    category: 'Novel',
  ),
  Buku(
    judul: 'Negeri 5 menara ',
    pengarang: 'Ahmad Fuadi',
    penerbit: 'Gramedia pustaka utama',
    imageUrl: 'assets/image/novel6.jpg',
    tahun_terbit: '2009',
    sinopsis:
        'Alif lahir di pinggir Danau Maninjau dan tidak pernah menginjak tanah di luar ranah Minangkabau. Masa kecilnya adalah berburu durian runtuh di rimba Bukit Barisan, bermain bola di sawah berlumpur dan tentu mandi berkecipak di air biru Danau Maninjau. Tiba-tiba saja dia harus naik bus tiga hari tiga malam melintasi punggung Sumatera dan Jawa menuju sebuah desa di pelosok Jawa Timur. Ibunya ingin dia menjadi Buya Hamka walau Alif ingin menjadi Habibie. Dengan setengah hati dia mengikuti perintah Ibunya: belajar di pondok.',
    category: 'Novel',
  ),
  Buku(
    judul: 'Tenggelamnya kapal van der wijck',
    pengarang: 'Buya Hamka',
    penerbit: 'Balai pustaka',
    imageUrl: 'assets/image/novel7.jpg',
    tahun_terbit: '1938',
    sinopsis:
        'Zainuddin adalah seorang yatim piatu. Ayahnya yang orang Minang meninggal di pengasingan setelah membunuh seorang kerabatnya karena warisan; ibunya yang non-Minang juga telah meninggal. Ia kini tinggal bersama teman ayahnya Mak Base di Batipuh, Sumatera . Sebagai seorang keturunan campuran, ia menghadapi banyak diskriminasi dari kelompok konservatif Minang. Meski mencintai Hayati, putri bangsawan setempat, ia tidak diperbolehkan bersamanya. Ia memutuskan pindah ke Padang Panjang , meski tetap menyurati Hayati.',
    category: 'Novel',
  ),
  Buku(
    judul: 'Hafalan shalat delisa ',
    pengarang: 'Tere Liye',
    penerbit: 'Republika',
    imageUrl: 'assets/image/novel8.jpg',
    tahun_terbit: '2006',
    sinopsis:
        'Delisa anak perempuan yang bermata hijau, bening dan umurnya baru mencecah lima tahun. Dia hidup dalam keluarganya yang sebegitu, dia cuba menghafal bacaan dalam solat dengan bantuan ibu dan kakaknya. Namun Tuhan lebih tahu apa yang lebih baik untuk hamba-Nya. Tsunami datang melumatka senyuman pada wajah Delisa. Tsunami mengambil segala-galanya, keluarga juga kaki kecilnya. Yang tersisa, hanya dia dan ayahnya, dan dalam keadaan sebegitu apakah Delisa mampu tetap tersenyum seperti dahulu dan menyudahkan hafalannya?',
    category: 'Novel',
  ),
  Buku(
    judul: 'Gadis kretek',
    pengarang: 'Ratih Kumala',
    penerbit: 'Gramedia pustaka utama',
    imageUrl: 'assets/image/novel9.jpg',
    tahun_terbit: '2012',
    sinopsis:
        'Pak Raja sekarat. Dalam menanti ajal, ia memanggil satu nama perempuan yang bukan istrinya; Jeng Yah. Tiga anaknya, pewaris Kretek Djagad Raja, dimakan gundah. Sang Ibu pun terbakar cemburu terlebih karena permintaan terakhir suaminya ingin bertemu Jeng Yah. Maka berpacu dengan malaikat maut, Lebas, Karim, dan Tegar, pergi ke pelosok Jawa untuk mencari Jeng Yah, sebelum ajal menjemput sang Ayah. Perjalanan itu bagai napak tilas bisnis dan rahasia keluarga. Lebas, Karim dan Tegar bertemu dengan buruh bathil (pelinting) tua dan menguak asal-usul Kretek Djagad Raja hingga menjadi kretek nomor 1 di Indonesia. Lebih dari itu, ketiganya juga mengetahui kisah cinta ayah mereka dengan Jeng Yah, yang ternyata adalah pemilik Kretek Gadis, kretek lokal Kota M yang terkenal pada zamannya. Apakah Lebas, Karim dan Tegar akhirnya berhasil menemukan Jeng Yah?',
    category: 'Novel',
  ),
  Buku(
    judul: 'Hujan bulan juni ',
    pengarang: 'Sapardi Djoko Damono ',
    penerbit: 'Gramedia pustaka utama',
    imageUrl: 'assets/image/novel10.jpg',
    tahun_terbit: '2015',
    sinopsis:
        'Bagaimana mungkin seseorang memiliki keinginan untuk mengurai kembali benang yang tak terkirakan jumlahnya dalam selembar sapu tangan yang telah ditenunnya sendiri. Bagaimana mungkin seseorang bisa mendadak terbebaskan dari jaringan benang yang susun-bersusun, silang-menyilang, timpa-menimpa dengan rapi di selembar saputangan yang sudah bertahun-tahun lamanya ditenun dengan sabar oleh jari-jarinya sendiri oleh kesunyiannya sendiri oleh ketabahannya sendiri oleh tarikan dan hembusan napasnya sendiri oleh rintik waktu dalam benaknya sendiri oleh kerinduannya sendiri oleh penghayatannya sendiri tentang hubungan-hubungan pelik antara perempuan dan laki-laki yang tinggal di sebuah ruangan kedap suara yang bernama kasih sayang.',
    category: 'Novel',
  ),

  //cerita anak

  Buku(
    judul: 'Sepeda ontel kinanti',
    pengarang: 'Iwok Abqary',
    penerbit: 'Dar! mizan',
    imageUrl: 'assets/image/anak1.jpg',
    tahun_terbit: '2009',
    sinopsis:
        'Sepeda merupakan benda kesayangan Kinanti. Bagi Kinanti, sepeda dapat mengantarkannya menggapai cita-cita menuju masa depan yang lebih baik. Bagaimana tidak, sepeda itu selalu menemani perjalanan Kinanti menuju sekolah. Sayangnya, Kinanti harus merelakan sepeda itu dijual. Kinanti marah dan kecewa. Tanpa sepeda itu, bagaimana dia berangkat ke sekolah? Apakah dia harus putus sekolah? Apakah Kinanti harus melupakan cita-cita dan masa depannya? Kinanti dihadapkan pada pilihan yang sulit. Kehilangan sepeda sama dengan melupakan sekolahnya. Tetapi, bagaimana kalau Kinanti masih tetap menginginkan keduanya? ',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Pinokio',
    pengarang: 'Hafez Achda',
    penerbit: 'Elex media komputindo',
    imageUrl: 'assets/image/anak2.jpg',
    tahun_terbit: '2022',
    sinopsis:
        ': Kisah tentang sebuah boneka kayu yang diberi nama Pinokio buatan Kakek Gepeto. Awalnya Pinokio suka berbohong, ketika ia berbohong hidungnya akan semakin bertambah panjang dan terus memanjang. Tetapi kemudian ia berbuat baik dengan menolong Kakek Gepeto yang sedang terancam bahaya. Peri Biru iba melihat kebaikan Pinokio.',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Dongeng animasi 3D : putri salju ',
    pengarang: 'Kwowon cho',
    penerbit: 'Bhuana ilmu populer',
    imageUrl: 'assets/image/anak3.jpg',
    tahun_terbit: '2013',
    sinopsis:
        'Sebuah dongeng tidak hanya mengisahkan tentang manusia saja, tetapi juga tentang binatang, tanaman, dan makhluk lainnya. Pada dasarnya, semua yang ada di sekitar kita ini dapat diangkat menjadi sebuah dongeng yang memiliki makna cerita tersendiri. Sang Ratu jahat membenci putri salju yang cantik jelita. Dia pikir akan menjadi yang tercantik di dunia jika saja putri salju tidak ada. Oleh karena itu, berulang kali sang ratu berusaha melenyapkan putri salju. Namun, ketujuh kurcaci di dalam hutan selalu melindungi putri salju. Berhasilkah sang ratu melaksanakan niat jahatnya?',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Joko dan jenar jalan - jalan ',
    pengarang: ': Allegra Sastradipura',
    penerbit: 'Saga press',
    imageUrl: 'assets/image/anak4.jpg',
    tahun_terbit: '2018',
    sinopsis:
        ': Meski berbeda agama, Joko dan Jenar bersaudara. Mereka suka bermain dan jalan-jalan bersama. Hingga suatu hari, Jenar harus menggunakan kursi roda. Joko pun terus mencari cara agar Jenar bisa jalan-jalan dan main bersamanya lagi. Buku yang ditulis Allegra Sastradipura dan Henny Yulianti ini memang mengangkat tema yang tidak biasa, namun pesan-pesan di dalamnya penting untuk disampaikan pada anak-anak kita. Mulai dari persaudaraan, keragaman sampai inklusivitas. Bila ingin memilikinya, coba cek akun Instagram Saga Indonesia.',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Si utan dan kawan kawan',
    pengarang: 'Okta Abriyanti',
    penerbit: 'Noktah',
    imageUrl: 'assets/image/anak5.jpg',
    tahun_terbit: '2019',
    sinopsis:
        '“Utan, apakah ada pemburu lagi?” tanya Rangkong dari atas pohon. Utan berhenti berlari. Dia menoleh ke arah Rangkong. “Iya, Rangkong, pemburu itu datang lagi,” jawab Utan. Apakah si Utan selamat dari kejaran pemburu? Bacalah cerita selengkapnya di buku ini. Selain dongeng tentang orang utan, ada 19 dongeng hewan lagi di dalam buku ini. Semuanya dongeng tentang hewan asli Indonesia. Setiap dongeng dilengkapi ilustrasi dan fakta unik hewan.',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Malin kundang ',
    pengarang: 'Kak Adam',
    penerbit: 'Play ground',
    imageUrl: 'assets/image/anak6.jpg',
    tahun_terbit: '2020',
    sinopsis:
        ': Alkisah, ada seorang anak yang berkeinginan keras untuk menjadi saudagar kaya raya. Namun, ketika semuanya telah didapat, ia melupakan ibu yang membesarkannya sedari kecil. Dongeng ini mengajarkan kita untuk menghormati orangtua kita bagaimanapun kondisinya dan durhaka kepada mereka itu amat buruk balasannya kelak.',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Komik kkpk : my special sister Product Design',
    pengarang: 'Nafisa Mahdiya Rizkyaningdyah',
    penerbit: 'Dar! Mizan',
    imageUrl: 'assets/image/anak7.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Naila memiliki seorang kakak perempuan, Kak Nisa. Meskipun Kak Nisa seorang tunawicara, Mama dan Papa sangat menyayanginya. Namun, Naila merasa kesal dan malu memiliki kakak yang tunawicara. Teman-temannya, terutama geng Mecca, selalu mengejek Naila dan Kak Nisa. Selain itu, Naila sering merasa tersisihkan karena Mama dan Papa lebih memerhatikan Kak Nisa daripada dirinya. Walaupun memiliki keterlambatan, Kak Nisa memiliki bakat dalam dunia seni. Hal itu terbukti dari gambar dan lukisannya yang sudah tak terhitung banyaknya. Semua karyanya pun bagus. Selain itu, Kak Nisa pernah membuat boneka unicorn untuk hadiah untuk ulang tahun Naila yang keempat. Kata Mama, boneka unicorn itu istimewa karena dibuat dari jerih payah Kak Nisa. Tapi, rasa jengkel Naila menyangkal keistimewaan boneka tersebut. Bahkan, dia berharap agar Kak Nisa hilang saja dari dunia ini.',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Komik matcha : paris, here we come!',
    pengarang: 'Sherina Salsabila',
    penerbit: 'Noura kids',
    imageUrl: 'assets/image/anak8.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Klub MATCHA pergi ke Paris! Yeay! Mereka menginap di hotel besar dan mewah, makan siang sambil belajar memasak bersama chef internasional, dan yang paling seru adalah mereka naik ke puncak Menara Eiffel! Wah, keseruan apa lagi yang akan mereka temui selama berada di Paris?',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Lindungi alam kita ',
    pengarang: 'Ilaria Barsoti',
    penerbit: 'm&c',
    imageUrl: 'assets/image/anak9.jpg',
    tahun_terbit: '2022',
    sinopsis:
        'Lindungi Alam Kita adalah buku bacaan anak yang sangat direkomendasikan untuk digunakan sebagai bahan belajar anak karangan Eleonora Barsotti. Ensiklopedia bisa jadi bantuan untuk memberikan pengetahuan dan ilmu berdasarkan fakta yang sebenarnya. Apalagi, sekarang sudah banyak pilihan ensiklopedia khusus anak-anak dengan gambar yang menarik dan bahasa yang ringan, sehingga lebih mudah dimengerti. Ensiklopedia bisa jadi tambahan sumber edukasi yang baik.',
    category: 'Cerita Anak',
  ),
  Buku(
    judul: 'Saat aku merasa sedih',
    pengarang: 'Putri P., M.Psi., Psikolog',
    penerbit: 'Bentang pustaka',
    imageUrl: 'assets/image/anak10.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Pernahkah kamu merasa sedih? Kenapa ya, sedih bisa terjadi? Apa yang harus dilakukan supaya rasa sedih berkurang dan hilang? Kemudian, apa yang bisa kita lakukan kalau melihat teman sedang sedih? Yuk, temukan rahasia tentang "Sedih" di dalam buku ini!',
    category: 'Cerita Anak',
  ),

  //sejarah
  Buku(
    judul: 'Sejarah Lengkap Perang Dunia 1914-1918',
    pengarang: 'ALfi arifin',
    penerbit: 'Sosiality',
    imageUrl: 'assets/image/sejarah1.jpg',
    tahun_terbit: '2020',
    sinopsis:
        'Perang Dunia I (WW1) adalah kontes gladiator terbesar sepanjang sejarah umat manusia yang melibatkan para hegemon Eropa serta koloninya. Vladimir Lenin, sang tokoh komunis Rusia yang dijuluki “virus” oleh para hegemon Eropa menyebut perang ini sebagai “perangnya bangsawan” bukan ”perang rakyat”. Pemikirannya yang dilandasi sikap anti kaum ningrat dan prorakyat ini nantinya melahirkan gagasan berdirinya negara komunis di Rusia setelah berhasil menumbangkan dinasti penguasa kekaisaran Rusia, Dinasti Romanov melalui serangkaian revolusi, yaitu Revolusi Februari dan Revolusi Oktober 1917.',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Buku Sejarah Nusantara(Demalay Archipelago)',
    pengarang: 'Alfred Russel Wallace',
    penerbit: 'Anak Hebat Indonesia',
    imageUrl: 'assets/image/sejarah2.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Buku Sejarah Nusantara (The Malay Archipelago) adalah sebuah karya penjelajah dan ilmuwan terkenal, Alfred Russel Wallace, yang diterbitkan pada tahun 1869. Buku ini adalah hasil dari pengamatan dan penelitian Wallace selama delapan tahun menjelajahi Kepulauan Melayu, yang meliputi sebagian besar wilayah Indonesia, Malaysia, dan Filipina. Dalam buku ini, Wallace menggambarkan keindahan alam, flora, fauna, dan budaya di wilayah tersebut. Ia juga memaparkan teori tentang distribusi geografis spesies-spesies hewan dan tumbuhan, yang kemudian dikenal sebagai ”Line Wallace” atau ”Wallace Line”. Teori ini mengidentifikasi perbatasan biogeografis antara Asia dan Australia, dan memainkan peran penting dalam pemahaman ilmiah mengenai evolusi dan distribusi spesies di kepulauan tersebut.',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Sejarah Dan Tradisi Hukum',
    pengarang:
        'Dr. Ibnu Sina Chandranegara, S.H., M.H., Pfor. Dr. Syaiful Bakhri, S.H., M.H.',
    penerbit: 'Sinar Grafika',
    imageUrl: 'assets/image/sejarah3.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Sejarah dan tradisi hukum sejak simposium Sejarah Hukum yang diselenggarakan oleh BPHN di Jakarta pada 1-3 April 1975, di berbagai kertas kerja dan literatur yang mendalami bidang sejarah hukum tergolong minim atau langka. Padahal untuk memahami hukum secara mendalam diperlukan penelitian hukum dengan pendekatan ilmu hukum dan interdisipliner yang menggunakan ilmu-ilmu sosial sebagai penunjang merupakan suatu keniscayaan. Sejarah hukum sebagai salah satu bidang yang penting dalam Ilmu Hukum dikarenakan tidak hanya melakukan studi terhadap sejarah diakronis serta sinkronis terhadap hukum (legal history) tetapi juga analisis sejarah terhadap hukum (historical analysis of low).',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Walisongo Dan Sejarahnya',
    pengarang: 'Arif Irshartadi',
    penerbit: 'Anak Hebat Indonesia',
    imageUrl: 'assets/image/sejarah4.jpg',
    tahun_terbit: '2023',
    sinopsis:
        'Banyak pendapat yang mengatakan tentang kapan Islam masuk ke Indonesia. Ada yang berpendapat bahwa Islam masuk ke Indonesia pada abad ke-7, tetapi ada juga yang mengatakan bahwa Islam masuk ke Indonesia pada abad ke-9 atau abad ke-11. Tentunya penyebaran Islam tidak lepas dari peran para tokoh atau ulama masa itu. Salah satu tokoh yang berperan dalam penyebaran Islam di Pulau Jawa adalah Wali Songo. Wali Songo menjadi sosok teladan dan sangat penting di kalangan masyarakat muslim Jawa. Buku ini menceritakan bagaimana perjalanan kesembilan wali yang berusaha menyebarkan Islam di seluruh Pulau Jawa. Selain perjalanan dakwah, buku ini juga menceritakan pesan damai yang dibawa oleh Wali Songo dan pelajaran yang bisa kita petik dari kisah-kisah Wali Songo. Buku ini sangat cocok untuk kalian yang ingin mengetahui lebih dalam tentang sejarah Wali Songo.',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Sejarah Perpolitikan Dunia',
    pengarang: 'Jonathan Holslag',
    penerbit: 'Elex Media Komputindo',
    imageUrl: 'assets/image/sejarah5.jpg',
    tahun_terbit: '2022',
    sinopsis:
        'Buku ini menyajikan ketertarikan besar pada dampak politik dunia kepada kehidupan rakyat biasa. Selain dampak perubahan ekonomi, sering kali peranglah yang mengakibatkan dampak buruk paling besar. Jonathan Holslag mencoba melacak penyebab dan konsekuensi konflik, menginvestigasi kemenangan dan kekalahan dalam perang, menganalisis cara orang-orang melihat peperangan, dan juga mengikuti para diplomat dalam percobaan putus asanya untuk menghentikan perang. Sekalipun tujuan buku ini adalah mencoba dan menyimpulkan tema kekal yang mendasar untuk perang dan damai, di atas segalanya karya Holslag ini harus tetap menjadi cerita tentang manusia, tentang harapan dan ketakutannya, kapasitasnya untuk melakukan kekerasan, dan penderitaannya. Itulah satu-satunya cara agar kita dapat mengerti pilihan-pilihan sulit yang mendefinisikan sifat alamiah dari kepemimpinan yang sesungguhnya.',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Sejarah Dan Kisah Kudeta Majapahit',
    pengarang: 'Kamil Hamid Baydawi',
    penerbit: 'Arasha Publisher',
    imageUrl: 'assets/image/sejarah6.jpg',
    tahun_terbit: '2022',
    sinopsis:
        'Berbicara Majapahit, kita langsung terkenang akan kebesaran peradaban yang pernah dicapai oleh kerajaan ini. Pun, seorang patih yang masyhur dengan Sumpah Palapa-nya. Maha Patih yang menyatukan kekuasaan Majapahit dalam satu rumpun Nusantara. Hingga kini, sisa-sisa kebesaran akan Kerajaan Majapahit masih dapat disaksikan keberadaannya melalui temuan-temuan arkeologis yang berserakan di berbagai tempat di Nusantara. Namun, sepeninggal Hayam Wuruk dan Gajah Mada, kerajaan ini dipenuhi perang saudara dan kudeta perebutan kekuasaan. Perang saudara dan gerak-gerak kudeta yang begitu panjang dan melelahkan itu pada akhirnya melemahkan kekuatan Majapahit hingga menyebabkan keruntuhannya.',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Aceh Sejarah, Budaya, Dan Tradisi',
    pengarang: 'Prof. Dr. Amirul Hadi, MA',
    penerbit: 'Yayasan Pustaka Ibor Indonesia',
    imageUrl: 'assets/image/sejarah7.jpg',
    tahun_terbit: '2010',
    sinopsis:
        'Karya ini merupakan sebuah upaya untuk mengkaji sejarah dan budaya Aceh akademis. Meskipun telah banyak karya yang ditulis oleh para sarjana mengenai Aceh, termasuk dimensi sejarah, namun masih banyak pertanyaan historis mengenai masyarakat di paling ujung Pulau Sumatera ini yang masih tersisa dan belum terungkap. Singkatnya, karya ini dimaksud untuk mengisi gap dalam panggung sejarah Aceh. Secara khusus, dimensi "keislaman" mendapat perhatian lebih di dalam karya ini. Aceh identik dengan Islam. Dengan demikian, berbicara mengenai Aceh bermakna berbicara mengenai masyarakat Islam. Namun, dimensi "keagamaan" inilah yang sering diabaikan oleh para sarjana , terutama Barat.',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Sepotong Kisah Dibalik 98',
    pengarang: 'Erisca Febriani',
    penerbit: 'Falcon Publishing',
    imageUrl: 'assets/image/sejarah8.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Tema 98 menurut Erisca Febriani sangat menarik, terutama kalau dibaca oleh generasi sekarang. Karena terlahir sebagai generasi Z yang tidak merasakan langsung peristiwa 98, Erisca ingin melihat sudut pandang lain dalam kolase-kolase baru tentang cerita 98, yang sebelumnya ia tahu dari ayahnya yang juga seorang aktivis, atau dari sumber-sumber tertulis yang pernah ia baca. Melalui empat cerita Sepotong Kisah di Balik 98 pilihan Erisca Febriani ini, kita diajak kembali ke momen krusial di tahun 98. Keempat cerita ini bukan hanya tentang sejarah, tetapi tentang manusia, perjuangan, dan harapan yang terjalin di dalamnya.',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Sejarah Utama Mesjid Al-aqsha & Al-quds',
    pengarang: 'Mahdy Saedi Rezk Kerisem',
    penerbit: 'Pustaka Alkautsar',
    imageUrl: 'assets/image/sejarah9.jpg',
    tahun_terbit: '2021',
    sinopsis:
        'Buku Sejarah dan Keutamaan Masjid Al-Aqsha dan Al-Quds ini adalah ringkasan lengkap yang membahas tentang Palestina, Baitul Maqdis, dan Masjid Al-Aqsha dari tinjauan sejarah, agama, politik, dan keutamaan-keutamaannya. Persoalan Al-Aqsha adalah bagian dari problematika kaum muslimin di dunia, karena Al-Aqsha adalah bagian dari Islam dan simbol agung di antara simbol-simbol Islam lainnya. Selain itu, Al-Aqsha juga terikat dengan akidah kaum muslimin dan tempat peribadatan mereka.di antaranya informasi-informasi dan fakta-fakta keagamaan serta sejarah yang terkait dengan keutamaan dan kedudukan Masjid Al-Aqsha, penjelasan tentang sejarah Tanah Suci (Palestina), penjelasan penting tentang Yahudi dan Bani Israil dalam lintasan sejarah dan membongkar kejahatan-kejahatan keji mereka atas kemanusiaan, bantahan atas kedustaan-kedustaan dan klaim Yahudi atas Palestina, bantahan atas kedustaan Yahudi tentang Haikal Sulaiman (Solomon Temple) yang mereka klaim berada di sekitar Masjid Al-Aqsha, dan masih banyak lagi.',
    category: 'Sejarah',
  ),
  Buku(
    judul: 'Sejarah Agama Manusia',
    pengarang: 'Mohammad Zazuli',
    penerbit: 'Narasi',
    imageUrl: 'assets/image/sejarah10.jpg',
    tahun_terbit: '2019',
    sinopsis:
        'Setiap manusia pada hakikatnya secara alamiah mampu menyadari, merasakan, dan merindukan keberadaan Sang Sumber Kehidupan yang meliputi segalanya atau disebut Tuhan. Walaupun keberadaan Tuhan tidak diketahui dan dimengerti oleh seluruh manusia di muka bumi ini, namun, tiap manusia tetap mempercayai adanya Tuhan Sang Pencipta alam semesta dan kehidupan ini. Sejak ribuan tahun yang lalu umat manusia di sepanjang sejarah dan semua peradaban selalu berjuang untuk mencari jawaban atas kehidupan yang sedang dilalui ini, baik melalui budaya, adat, mitologi, agama, seni, filsafat, serta ilmu pengetahuan yang dimilikinya. Hal ini pula yang selalu menimbulkan berbagai asumsi tentang kehidupan di dunia ini.',
    category: 'Sejarah',
  ),

  //agama
  Buku(
    judul: 'Tibbul Qulub : Terapi Penyakit Hati',
    pengarang: 'Ibnu Qayyim Al-jauziyyah',
    penerbit: 'Anak Hebat Indonesia',
    imageUrl: 'assets/image/agama1.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Tibbul Qulub" dalam konteks ini mungkin merujuk pada upaya atau proses penyembuhan atau terapi untuk "penyakit hati" atau gangguan emosi dan spiritual dalam Islam. Dalam Islam, "hati" atau "qalb" seringkali digunakan untuk merujuk pada dimensi batiniah seseorang yang mencakup perasaan, pikiran, dan keadaan spiritual.',
    category: 'Agama',
  ),
  Buku(
    judul: 'Sudah Benarkah Shalatku?',
    pengarang: 'Dr. Aam Amirudin, M.Si',
    penerbit: 'Khazanah Intelektual',
    imageUrl: 'assets/image/agama2.jpg',
    tahun_terbit: '2023',
    sinopsis:
        ': Shalat menempati posisi strategis dalam peta keimanan seorang Muslim. Namun, ternyata tak sedikit di antara kita yang masih melakukan kesalahan dalam doá dan gerakan shalat. Kesalahan pembelajaran di masa kecil dan keengganan mencari tahu kebenaran tata cara shalat ini menjadi sebuah kombinasi sempurna tentang kebutaan kita akan pelaksanaan shalat yang sesuai dengan tuntunan Rasulullah .',
    category: 'Agama',
  ),
  Buku(
    judul: 'Filsafat Kristen Paduan Untuk Berfilsafat Secara Kristen',
    pengarang: 'Iswara Rintis Purwantara',
    penerbit: 'Penerbit Andi',
    imageUrl: 'assets/image/agama3.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Berfilsafat adalah aktivitas yang tidak dapat dielakkan oleh siapa pun. Hal itu merupakan aktivitas normal setiap orang, termasuk orang-orang Kristen yang sudah dewasa. Orang Kristen sering harus berfilsafat. Meskipun demikian, ada hal unik tentang bagaimana seharusnya mereka melakukannya.',
    category: 'Agama',
  ),
  Buku(
    judul: 'Sukses Menurut Yesus',
    pengarang: 'Dr. Omar Djoeyandy',
    penerbit: 'Andi Offset',
    imageUrl: 'assets/image/agama4.jpg',
    tahun_terbit: '2023',
    sinopsis:
        ': Sukses menurut yesus apakah hidup yang sukses itu? apa yang harus anda lakukan untuk sukses? Kita mencari sukses dalam karier, keluarga, hubungan, dan kehidupan kerohanian kita, tetapi sukses itu sukar dipahami, fana, dan memabukkan. Kita dapat saja mencapai puncak tertingginya hanya untuk menginginkan lebih banyak lagi dengan peningkatan, promosi, dan capaian yang lebih tinggi lagi. Dalam mengejar sukses sering akan menghasilkan kekecewaan, kegelisahan, rasa tidak layak, takut, kosong, dan haus untuk mendapat lebih banyak lagi.',
    category: 'Agama',
  ),
  Buku(
    judul: 'Brahmana Budha Di Bali',
    pengarang: 'C.Hooykaas',
    penerbit: 'Udayana University Press',
    imageUrl: 'assets/image/agama5.jpg',
    tahun_terbit: '2017',
    sinopsis:
        'Brahmā adalah raja surgawi dalam agama Buddha. Dia diambil dari agama-agama India lainnya seperti Hinduisme yang menganggapnya sebagai pelindung ajaran (dharmapala), dan tidak pernah diceritakan dalam kitab-kitab Buddha awal sebagai dewa pencipta.',
    category: 'Agama',
  ),
  Buku(
    judul: 'Jalut tua Awan Putih : Buku ke 3',
    pengarang: 'Thich Nhat Hanh',
    penerbit: 'Karaniya',
    imageUrl: 'assets/image/agama6.png',
    tahun_terbit: '2015',
    sinopsis:
        'Buku ketiga dari serial buku Jalur Tua Awan Putih. Buku dengan judul Jalur Tua Awan Putih ini menyajikan kehidupan dan ajaran Buddha Gautama. Diambil langsung dari 24 sumber berbahasa Pali, Sansekerta, dan Mandarin, serta diceritakan kembali oleh Y. A. Thich Nhat Hanh dengan gaya indahnya yang tak tertirukan. Buku ini menelusuri kembali 80 tahun perjalanan hidup Buddha secara perlahan, tenang, dan lembut. Sebagai mata Svasti, si anak penggembala kerbau dan sebagian lagi melalui mata Buddha sendiri. Jalur Tua Awan Putih akan menjadi sebuah klasik dalam literatur keagamaan.',
    category: 'Agama',
  ),
  Buku(
    judul: 'Satwa Upakara : Sarana Perlengkapan Upacara Agama Hindu',
    pengarang: 'Komang Budaarsa, Dkk',
    penerbit: 'Udayana University Press',
    imageUrl: 'assets/image/agama7.jpg',
    tahun_terbit: '2017',
    sinopsis:
        'Penggunaan binatang atau hewan (wewalungan) dalam upacara bukan berarti penyembelihan biasa. Penyembelihan yang dilakukan untuk kepentingan upacara, umumnya didahului dengan berbagai tahapan penyucian. Tahapan penyucian inilah yang memberikan landasan terhadap penyembelihan hewan untuk upacara itu bermakna sebagai penyucian terhadap dosa yang dimiliki hewan tersebut supaya nantinya bisa bereinkarnasi menjadi makhluk yang lebih baik karena pengorbanannya itu diikutkan sebagai salah satu sarana penyucian alam semesta.',
    category: 'Agama',
  ),
  Buku(
    judul: 'Menjalani Hidup Salikin',
    pengarang: 'Prof. Dr. K.H. Nasaruddin Umar, M.A.',
    penerbit: 'Gramedia Widiasarana Indonesia',
    imageUrl: 'assets/image/agama8.jpg',
    tahun_terbit: '2021',
    sinopsis:
        'Buku "Menjalani Hidup Salikin" merupakan karya KH Nasaruddin Umar yang dipublikasikan pada 2021 dengan latar belakang pengamatan isu perlunya memberikan batasan terhadap kehidupan yang dijalani. Penulis terdorong menulis buku ini ketika melihat keprihatinan masyarakat kita sekarang ini yang sangat pragmatis, materialistik, hidup kita sepertinya sangat liar tidak ada rem dalam menjalani kehidupan, dan pasti akan menabrak ke sana-sini. Selain itu, penulis juga ingin memberikan ilustrasi kepada para pembaca, siapapun diri kita, kita bisa menempuh perjalanan tersebut. Pengertian dari salikin (atau suluk) adalah diartikan berjalan',
    category: 'Agama',
  ),
  Buku(
    judul: 'Logika Keimanan',
    pengarang: 'Ahmad Ataka, PhD',
    penerbit: 'Turos Pustaka',
    imageUrl: 'assets/image/agama9.jpg',
    tahun_terbit: '2024',
    sinopsis:
        'Kehadiran sains dan teknologi kerap membuat kita merasa mampu menjawab segalanya, termasuk perkara Tuhan. Ketika kemudian agama dianggap bertentangan dengan ilmu pengetahuan, berbagai narasi ateisme baru pun bermunculan. Di sisi lain, orang-orang beriman justru merasa bahwa agama tidak membutuhkan logika, hanya keyakinan belaka. Padahal, jauh-jauh hari Imam Sanusi (1426–1490 M ) melalui karyanya, Ummul Barahin, justru menjelaskan bahwa beriman adalah perkara yang rasional. Ahmad Ataka dalam buku Logika Keimanan ini mengajak kita untuk mengungkap rasionalitas aqidah Imam Sanusi berdasarkan analogi sains dan teknologi masa kini',
    category: 'Agama',
  ),
  Buku(
    judul: 'Rab, Kumohon Jangan Lagi Jauh!',
    pengarang: 'Nunung Julita',
    penerbit: 'Elex Media Komputindo',
    imageUrl: 'assets/image/agama10.jpg',
    tahun_terbit: '2021',
    sinopsis:
        'Setiap manusia, pasti pernah mengalami keadaan jauh dari Sang Pencipta. Hal ini yang membuat setiap manusia enggan untuk kembali kepada-Nya. Dengan alasan, Sudah terlanjur jauh! atau Sudah banyak dosa! Padahal, Allah hanya ingin kita terus mengingat-Nya. Semata, karena Allah ingin kita menjadi hamba yang selalu membutuhkan-Nya. Hadirnya buku ini, penulis hanya ingin agar kita selalu bersama Allah, di mana hanya dekat dengan Allah-lah yang membuat hidup kita tenang, senang, nyaman, dan bahagia. Selain itu, buku ini juga ingin mengajak kita untuk mensyukuri setiap nikmat-Nya. Di buku ini, kita juga diajak agar selalu bersyukur menjadi seorang wanita, yang kehormatannya sangat dijaga, dimuliakan bahkan dihargai.',
    category: 'Agama',
  ),
];
