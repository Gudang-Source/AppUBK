-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2019 at 12:56 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appubk`
--

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `soal_id` int(11) NOT NULL,
  `soal_pelajaran` int(11) NOT NULL,
  `soal_deskripsi` text NOT NULL,
  `soal_jwb1` text NOT NULL,
  `soal_jwb2` text NOT NULL,
  `soal_jwb3` text NOT NULL,
  `soal_jwb4` text NOT NULL,
  `soal_jwb5` text NOT NULL,
  `soal_jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`soal_id`, `soal_pelajaran`, `soal_deskripsi`, `soal_jwb1`, `soal_jwb2`, `soal_jwb3`, `soal_jwb4`, `soal_jwb5`, `soal_jawaban`) VALUES
(1, 1, '						<div>ayam dan telur duluan mana ?<br></div>', 'ayam', 'telur ayam', 'jantan', 'betina', 'anak', 'ayam'),
(2, 1, '												<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/972f643314609feee29b3736f8564282.png\" width=\"931\"><br><div>siapa presiden pertama indonesia ?</div>										', 'BJ. Habibie', 'megawati', 'sby', 'jokowi', 'soekarno', 'soekarno'),
(3, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b1331cb15384d8f807cf6e8b510e2dc4.png\" width=\"331\"><br>', '21/5<br>', '20/5<br>', '12/5<br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e650146d4097584daaf4275975e7c450.png\" width=\"75\">', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/694c23bc428e5651bc3f14484032d652.png\" width=\"69\">', '12/5<br>'),
(4, 6, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/9c27203e8f5b564be9693ee8b6d570f3.png\" width=\"331\"><br>', '21/5<br>', '20/5<br>', '12/5<br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d3b8a16778c0b254b04df51d00bfae6f.png\" width=\"75\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/99b54c9822c6af5d3707322583717194.png\" width=\"69\"><br>', '12/5<br>'),
(5, 3, '						<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/be26d4410e537d4188edd54dc36e5438.png\" width=\"651\"><br>				', '<div>x+y?82;3x+2y?210;x?0;y?0 </div><div><br></div>', 'a', 'b', 'c', 'g', 'g'),
(6, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/8b6b9751ecd659afe53878504e6f7fa2.png\" width=\"591\"><br>', '-3<br>', '-2<br>', '1<br>', '4<br>', '5<br>', '-2<br>'),
(7, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/dbba28307ed5a074f304c2d57ad99c8f.png\" width=\"434\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/0725f7250d95002e7f721e8df7254879.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d0c4e429f37f51ba9586e5e1b000d0e8.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b5783e350fbf0c8e3af10c81aeb8add8.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/fcc5556d3fb96c2dd57e435047a0d2a0.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/ce931470513d032e9d23c3da48b4ad05.png\" width=\"147\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/fcc5556d3fb96c2dd57e435047a0d2a0.png\" width=\"147\"><br>'),
(8, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/9d2ae5494b11445b2a97b694c6908b5e.png\" width=\"620\"><br>', '12/23<br>', '21/46<br>', '-1/2<br>', '- 21/46<br>', '- 12/23<br>', '- 21/46<br>'),
(9, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/71c7c2355f1c072a5bda583f2a83529f.png\" width=\"829\"><br>', '-6<br>', '-2<br>', '2<br>', '4<br>', '8<br>', '2<br>'),
(10, 3, 'Reza belanja di toko buah “Harum” 2 kg manggis dan 3 kg kelengkeng dan membayar Rp97.000,00. Harga 3 kg manggis dan 1 kg kelengkeng di tempat yang sama adalah Rp91.000,00. Harga 1 kg apel dan 1 kg jeruk adalah .... <br>', 'Rp33.000,00<br>', 'Rp34.000,00<br>', 'Rp35.000,00<br>', 'Rp36.000,00<br>', 'Rp37.000,00<br>', 'Rp36.000,00<br>'),
(11, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/145852af5163b2b259980066f535425d.png\" width=\"861\"><br>', '0,125<br>', '1,250<br>', '0,500<br>', '0,750<br>', '-0,125<br>', '1,250<br>'),
(12, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/1cb4bbee16a15d85453908230e31fb14.png\" width=\"750\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/cc6f0081dcc3c8b90e8ac6f866ca22b5.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e7b57ca5b94a7c9cb0242cbdb57d6b22.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/9c624347a7d9f27c4a32b90b9838858e.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/f48d608e3c0780acf0bad98512f394fd.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/dc59bdd077035ce670a85d8d31d77ba8.png\" width=\"111\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e7b57ca5b94a7c9cb0242cbdb57d6b22.png\" width=\"111\"><br>'),
(13, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/bfaa1f45b70f1d32a94ac411f424f8f0.png\" width=\"836\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/4eaa4d089761aad66f99ecf042b20c56.png\" width=\"75\"><br>', '-1<br>', '3/4<br>', '1<br>', '1 1/3<br>', '1 1/3<br>'),
(14, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/582fdff23b816aa4ad7105fb0bfb5c89.png\" width=\"528\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/cc2154e500a6f74cd23c3b21e3e8c6fb.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/0df09b3101ff7b152eb2f8a19584d477.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/543d4737d6ba8ac26581fa4de5ed857e.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/cf617bf89d8d3a8549f77c4b874771c9.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/6a55615ec8d8eb6ec38565a0969e133b.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/cf617bf89d8d3a8549f77c4b874771c9.png\" width=\"81\"><br>'),
(15, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/17184eb8fa7092b5fe4456258dec7830.png\" width=\"624\"><br>', 'I', 'II', 'III', 'IV', 'V', 'II'),
(16, 3, '<div>Suku ke-4 dan ke-7 dari suatu deret geometri berturut-turut adalah&nbsp; 1/9 dan 1/243 Jumlah lima suku pertama deret tersebut adalah ….</div><div><br></div>', '61/27', '40/9', '121/27', '820/9', '7381/81', '121/27'),
(17, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e101cdf01a920251ab6afce1f32dfd0e.png\" width=\"476\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/c5345f0372ad5d27a7bfe0f99bee229a.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e3eeb1086c13856c060c0c2f3513a327.png\" width=\"83\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/3c2abb57c3766b0976cefeea09ce8355.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/ddcd1d22d20219104d8774b4053d19ed.png\" width=\"100\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/8422dca0b60227377d52971786df7c1b.png\" width=\"82\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/8422dca0b60227377d52971786df7c1b.png\" width=\"82\"><br>'),
(18, 3, '			<div>Sebuah pesawat penerbangan domestik mempunyai tempat duduk tidak lebih dari 82 kursi. Setiap penumpang kelas utama boleh membawa bagasi 30 kg sedang untuk kelas ekonomi 20 kg. Pesawat itu hanya dapat membawa bagasi maksimum 2.100 kg. Bila x dan y berturut-turut menyatakan banyak penumpang kelas utama dan ekonomi, maka model matematika dari persoalan di atas adalah ……</div><div><br></div>		', '<div>x+y?82;3x+2y?210;x?0;y?0 </div><div><br></div>', '<div><div>x+y?82;3x+2y?210;x?0;y?0</div></div>', '<div>x+y?82;3x+2y?210;x?0;y?0</div>', '<div>x+y?82;2x+3y?210;x?0;y?0</div>', '<div>x+y?82;2x+3y?210;x?0;y?0</div>', '<div>x+y?82;3x+2y?210;x?0;y?0 </div><div><br></div>'),
(19, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d85ee00d61fb1605d57396be785e9519.png\" width=\"621\"><br>', '-53', '-51', '-45', '-32', '-25', '-25'),
(20, 3, '<div>Diketahui suku ke-5 dari barisan aritmatika adalah 21 dan jumlah suku ke-2 dan suku ke-4 adalah 26. Suku ke-50 dari barisan aritmatika tersebut adalah....</div><div><br></div>', '198<br>', '200<br>', '201<br>', '203<br>', '<div>205</div>', '201<br>'),
(21, 3, '<div>Dari suatu barisan geometri diketahui suku pertamanya 3 dan suku ke-5 = 48. Besar suku ke-7 dari barisan tersebut adalah ....</div><div><br></div>', '96', '144', '164', '182', '192', '192'),
(22, 3, '<div>Jumlah deret geometri tak hingga adalah 28 dan suku pertamanya 8. Rasio deret tersebut adalah ….</div><div><br></div>', '6/7', '5/7', '2/7', '1/7', '1/4', '5/7'),
(23, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b456e5aa69d04f8e064faf7adf807761.png\" width=\"471\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/fbf5524fe6443795941185c783242f53.png\" width=\"81\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/f97e6256a13a1e5176e27f693ffe1815.png\" width=\"44\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/6b9374e1c79da10c869738744bd517b2.png\" width=\"44\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/454aeca12750f868a87f304aa2bf676f.png\" width=\"44\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/72a554ff035df1b0406a834f4e97dbef.png\" width=\"44\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/72a554ff035df1b0406a834f4e97dbef.png\" width=\"44\"><br>'),
(24, 3, '<div>Diketahui kubus ABCD.EFGH dengan panjang rusuk 8 cm.</div><div>Titik K adalah titik tengah EH. Jarak K terhadap garis AG adalah ....</div><div><br></div>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d06ca4b49462c13858674205cd5f505b.png\" width=\"65\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/f85c8a41473978d14af27679b08e95e5.png\" width=\"66\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/c6f98a5c10e41b6f63edcc7f31c03668.png\" width=\"59\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/105b8e83d7170e7ce6a3a3b8660ac60a.png\" width=\"58\"><br>', '4', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/c6f98a5c10e41b6f63edcc7f31c03668.png\" width=\"59\"><br>'),
(25, 3, '<div>Diketahui segitiga ABC mempunyai panjang sisi AB = 12 cm, panjang sisi AC = 14 cm dan&nbsp;&nbsp;<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b2063297f92fe430c791177ca76625f5.png\" width=\"20\">BAC = 300. Luas segitiga ABC adalah ....</div>', '21 satuan luas<br>', '24 satuan luas<br>', '36 satuan luas<br>', '42 satuan luas<br>', '84 satuan luas<br>', '42 satuan luas<br>'),
(26, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/0b7aa45b8a6117f5e07a71f7eafed841.png\" width=\"617\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/5664b8722c89765648646dce84432d64.png\" width=\"199\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/a3032ae531b0feb31bfc7223e4c2b058.png\" width=\"216\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/a9d0932bb982b4fa2a34c6f2cce3f75c.png\" width=\"208\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d896e4d35643cd9ed4876f4109603396.png\" width=\"186\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/82d6302d7c872879685a1d2f04877974.png\" width=\"202\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/82d6302d7c872879685a1d2f04877974.png\" width=\"202\"><br>'),
(27, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/6cce64d0b67014fa3bef98144260795c.png\" width=\"610\"><br>', '3x – 4y =25<br>', '3x + 4y =25<br>', '4x – 3y =25<br>', '4x + 3y =25<br>', '–4x + 3y =25<br>', '4x – 3y =25<br>'),
(28, 3, '<div>Titik A (-5, 2) direfleksikan terhadap garis y=-x dilanjutkan rotasi 90° searah&nbsp; jarum jam. Bayangan titik A adalah ....</div><div><br></div>', '(5,2)<br>', '(5,-2)<br>', '(-2,5)<br>', '(-2,-5)&nbsp;<br>', '(-5,-2)<br>', '(5,2)<br>'),
(29, 3, '<div>Ingkaran dari pernyataan “Jika semua pengendara patuh terhadap rambu-rambu lalu lintas maka lalu lintas lancar” adalah …</div><div><br></div>', '<div>Lalu lintas lancar dan semua pengendara patuh terhadap rambu-rambu lalu&nbsp; &nbsp; lintas.</div>', '<div>Semua pengendara patuh terhadap rambu-rambu lalu lintas atau lalu lintas tidak lancar.</div>', '<div>Semua pengendara patuh terhadap rambu-rambu lalu lintas tetapi lalu lintas tidak lancar.</div>', '<div>Jalan raya tidak lancar dan semua pengendara patuh terhadap rambu-rambu lalu lintas.</div><div><br></div>', '<div>Lalu lintas tidak lancar dan ada pengendara yang tidak patuh terhadap rambu-rambu lalu lintas.</div>', '<div>Semua pengendara patuh terhadap rambu-rambu lalu lintas tetapi lalu lintas tidak lancar.</div>'),
(30, 3, '<div>Dua dadu dilempar undi bersama-sama satu kali, peluang muncul dua sisi dadu bermata sama adalah ....</div>', '4/36', '6/36', '8/36', '10/36', '12/36', '6/36'),
(31, 3, '<div>Diketahui premis-premis berikut:</div><div>Premis P1 : Jika ia beramal maka ia disenangi masyarakat.</div><div>Premis P2 : Ia tidak disenangi masyarakat.</div><div>Kesimpulan yang sah dari kedua premis adalah ….</div>', 'Ia beramal<br>', 'Ia tidak beramal<br>', '<div>Ia beramal tetapi tidak disenangi masyarakat</div>', '<div>Ia tidak beramal tetapi disenangi masyarakat</div>', '<div>Ia tidak beramal dan tidak disenangi masyarakat</div>', 'Ia tidak beramal<br>'),
(32, 3, '29.<span style=\"white-space:pre\">	</span>Perhatikan diagram di bawah !<br><div><img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/41e8cb626c96dbe67c573ee412d2506b.png\" width=\"221\"><br></div><div>Diagram tentang hasil pertanian di kampung makmur. Jika panen kacang mencapai 3,5 ton, maka hasil panen jagung mencapai … ton.&nbsp;<br></div>', '2,4', '3,0', '3,6', '4,0', '18,0', '4,0'),
(33, 3, 'Koperasi siswa mendata hasil penjualan kaos kaki setiap bulan. Diagram batang berikut menyatakan banyaknya penjualan kaos kaki selama tahun 2017.&nbsp;<br><div><img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/b60db99929bb9b8a1e941ad892ce98d7.png\" width=\"511\"><br></div><div>Persentase penjualan terbesar terjadi pada bulan .....<br></div>', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Mei'),
(34, 3, '<div>Dari 100 sampel data diketahui nilai terbesarnya 92 dan terkecil 36. Dari data tersebut akan dibuat tabel distribusi frekuensi, dengan menggunakan aturan Sturgess maka panjang kelas dari data tersebut adalah....</div>', '5', '6', '7', '8', '9', '7'),
(35, 3, 'Perhatikan tabel berikut !<div><img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/d4e3395ad630da83c0d03dd19ffd51d9.png\" width=\"220\"><br></div><div><div>Modus dari data di atas adalah ……</div></div><div><br></div>', '135,875<br>', '136,375<br>', '136,875<br>', '137,378&nbsp;<br>', '137,875<br>', '137,378&nbsp;<br>'),
(36, 3, '<div>Kuartil atas dari data: 4, 8, 6, 9, 8, 5, 7, 9, 5 adalah ....</div><div><br></div>', '5,00<br>', '7,00<br>', '8,50<br>', '8,75<br>', '9,00', '8,50<br>'),
(37, 3, '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/464f2065227e48799ed3717d5b62ebee.png\" width=\"174\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/88147315c3126d2ace253ef4fb1843c7.png\" width=\"151\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/de0ec6b8805fe9ce757f55204eec2024.png\" width=\"141\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/8c48eec5a97c31682359e99f0b33165f.png\" width=\"149\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/e0713b2b29e22dbff6f0ae81b48df973.png\" width=\"151\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/009ea87b35e11ee33e4574703c8f56ca.png\" width=\"150\"><br>', '<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/de0ec6b8805fe9ce757f55204eec2024.png\" width=\"141\"><br>'),
(38, 1, 'e', 'e', '<br>', '<br>', '<br>', '<br>', 'e'),
(39, 7, '						<div>\r\n\r\nBenda kerajinan memiliki fungsi dalam pembuatannya dan fungsi tersebut adalah ..<br>\r\n\r\n</div>				', 'Sebagai benda pakai dan hias', 'Sebagai benda hias', 'Sebagai benda pakai', 'Ergonomis karya seni', 'Sebagai benda ukiran', 'Sebagai benda pakai dan hias'),
(40, 7, '			\r\n\r\nLingkungan di sekitar terdapat beberapa SD yang saling berdekatan, dari kondisi tersebut maka usaha yang cocok untuk dijalankan adalah ….<br>\r\n\r\n		', 'taman bermain', 'kios jajanan makanan ringan', 'toko elektronik', 'penitipan anak', 'kios sayur mayur', 'kios jajanan makanan ringan'),
(41, 7, 'Berikut ini adalah contoh kerajinan benda pakai kecuali…', 'Kursi', 'Tikar', 'Topi', 'Bangku', 'Lukisan', 'Lukisan'),
(42, 7, '			<img src=\"http://hendri.ddns.net/AppUBK/admin/./assets/unggah/c63fcda147159b92f558194547e34467.PNG\" style=\"color: rgb(33, 37, 41); text-align: left;\" width=\"112\"><div>Gambar diatas merupakan salah satu pemanfaatan kulit jagung menjadi tempat pulpen. Hal itu merupakan salah satu fungsi benda kerajinan yakni ..		</div>', 'Padat', 'Pakai', 'Hias', 'Primer', 'sekunder', 'Pakai'),
(43, 7, 'Salah satu kegiatan dalam memproduksi produk kerajinan dari limbah adalah mendaur ulang. Kegiatan daur ulang adalah …<br>', 'membuat kerajinan dari bahan mentah menjadi barang jadi<br>', 'memproduksi kerajinan dari bahan lunak menjadi bahan keras<br>', 'memproses kembali sisa-sisa produksi menjadi suatu produk yang baru<br>', 'merancang kembali pakaian menjadi seolah olah baru<br>', 'mendesain kerajinan dari bahan tanah liat<br>', 'memproses kembali sisa-sisa produksi menjadi suatu produk yang baru<br>'),
(44, 7, 'Dalam bisnis fashion, mode yang terus berubah termasuk resiko….<br>', 'perubahan permintaan<br>', 'perubahan konjungtur<br>', 'persaingan<br>', 'perubahan teknologi<br>', 'perubahan alam<br>', 'perubahan permintaan<br>'),
(45, 7, 'Pemanfaatan ban bekas yang digunakan sebagai pot tanaman merupakan salah satu contoh kerajinan limbah yang berfungsi sebagai benda …<br>', 'hias<br>', 'pakai', 'bekas', 'buangan', 'langka', 'hias<br>'),
(46, 7, '<div>Pengemasan kerajinan dari bahan limbah harus disesuaikan dengan…</div>', 'Desain produk<br>', 'Harga produk<br>', 'Nilai produk<br>', 'Tingkat kesulitan<br>', 'warna', 'Desain produk<br>'),
(47, 7, '<div>Salah satu alasan utama dalam melakukan pengemasan adalah …</div>', '<div>Produk yang dikemas dapat lebih awet<br></div><div><br></div>', 'Produk yang dihasilkan memiliki kualitas tinggi<br>', 'Kemasan memenuhi syarat keamanan dan kemanfaatan<br>', 'Kemasan juga dapat berfungsi sebagai media komunikasi suatu citra tertentu<br>', 'Produk lebih mudah dibawa<br>', 'Kemasan memenuhi syarat keamanan dan kemanfaatan<br>'),
(48, 7, '<div>Kebijakan harga retail dengan menetapkan harga ganjil untuk menarik pembeli, misalnya Rp.149.975,- seperti yang dilakukan di supermarket&nbsp; adalah …</div>', 'margin price<br>', 'competitor price<br>', 'judgement price<br>', 'odd price<br>', 'combination price<br>', 'odd price<br>'),
(49, 7, '<div>Daya tarik pada kemasan dapat digolongkan menjadi dua, yaitu . . .</div>', 'Estetika dan desain<br>', 'Desain dan visual<br>', 'Intrinsic dan ekstrinsik<br>', 'Estetika dan fungsional<br>', 'Fungsional dan visual<br>', 'Estetika dan fungsional<br>'),
(50, 7, '<div>Perusahaan besar dengan daerah kerja yang luas, bidang tugas beraneka ragam dan jumlah karyawan yang banyak, sehingga pimpinan tidak bisa bekerja sendiri, maka struktur organisasi yang tepat adalah&nbsp; …</div><div><br></div>', '&nbsp;struktur organisasi garis/lini<br>', 'struktur organisasi fungsional<br>', 'struktur organisasi garis dan staf<br>', 'struktur organisasi fungsional dan staf<br>', 'struktur organisasi garis dan fungsional<br>', 'struktur organisasi garis dan staf<br>'),
(51, 7, '<div>Sebuah perusahaan menjual confenience goods seperti gula,minyak goring, beras, sabun mandi. Maka distribusi yang tepat adalah….</div>', 'distribusi intensif<br>', 'distribusi selektif<br>', 'distribusi efektif<br>', 'distribusi eksklusif<br>', 'distribusi aktif<br>', 'distribusi intensif<br>'),
(52, 7, '<div>Contoh kemasan yang bersifat kaku adalah…</div>', 'Plastik dan kertas<br>', 'Botol dan kertas<br>', 'Kayu dan logam<br>', 'Botol plastic dan gelas<br>', 'Botol sabun dan plastic&nbsp;<br>', 'Kayu dan logam<br>'),
(53, 7, '<div>Kemasan kerajinan yang baik harus menggunakan prinsip recycle dan…</div>', 'Reuse<br>', 'Reuse dan reduce<br>', 'Replace<br>', 'Reuse, reduce dan replace<br>', 'Reduce<br>', 'Reuse, reduce dan replace<br>'),
(54, 7, '<div>Kerajinan logam biasanya diolah dengan tehnik...</div>', 'Bakar/pemanasan dan tempa<br>', 'Ukir<br>', 'pahat', 'cetak', 'lukis', 'Bakar/pemanasan dan tempa<br>'),
(55, 7, '<div>Benda - benda dari logam dapat dietsa dengan cara . . .</div>', 'Dicampur dengan resin<br>', 'Dipahat<br>', 'Dianyam&nbsp;<br>', 'Direndam dengan&nbsp; larutan etsa<br>', 'Ditekan dengan menggunakan alat sedot<br>', 'Dicampur dengan resin<br>'),
(56, 7, '<div>Nilai-nilai estetika yang menyertai sebuah karya seni adalah . . .</div>', 'Keindahan<br>', 'Nilai seni<br>', 'Kerajinan<br>', 'Benda hias<br>', 'Agronomis karya seni<br>', 'Agronomis karya seni<br>'),
(57, 7, 'Alat yang digunakan untuk tehnik ukir tekan biasanya menggunakan :', 'Cetakan', 'Pahat besi', 'Pahat kayu', 'Pisau besi', 'Alat terbuat dari tanduk sapi atau kerbau yang dibentuk sesuai kebutuhan', 'Alat terbuat dari tanduk sapi atau kerbau yang dibentuk sesuai kebutuhan'),
(58, 7, '<div>Yang bukan termasuk dari nilai ergonomis adalah…</div>', 'Keindahan<br>', 'Kesatuan<br>', 'Keselarasan<br>', 'Keseimbangan<br>', 'Campuran warna<br>', 'Campuran warna<br>'),
(59, 7, '<div>Sebuah sampah/ limbah basah yang berasal dari makhluk hidup sering dipakai dalam kerajinan limbah disebut limbah …</div>', 'organik<br>', 'rumah tangga<br>', 'basah<br>', 'anorganik<br>', 'tekstik<br>', 'organik<br>'),
(60, 7, '<div>Negosiasi penting dalam berbisnis, yang penting untuk dibahas dalam negosiasi adalah …</div>', 'harga barang dan sikap pedagang<br>', 'layout toko dan cara pengiriman produk<br>', 'pengajuan klaim dan sisa produk<br>', 'sikap pembeli dan waktu pengiriman<br>', 'cara pembayaran dan waktu pembayaran<br>', 'cara pembayaran dan waktu pembayaran<br>'),
(61, 7, '<div>Berikut ini bukan merupakan bahan yang termasuk jenis bahan limbah organic adalah …</div>', 'kerang<br>', 'batok kelapa<br>', 'daun jagung<br>', 'plastik<br>', 'daun kering<br>', 'plastik<br>'),
(62, 7, '<div>Data bahan baku perusahaan selama dua minggu pertama bulan Mei 2018 adalah :</div><div>1 mei persediaan&nbsp; 8.000 kg @ Rp.1.000,-</div><div>5 mei pembelian 12.000 kg @ Rp.1.200,-</div><div>7 mei masuk proses produksi 15.000 kg</div><div>Hitunglah harga pokok bahan baku yang dipakai pada proses produksi …</div>', 'Rp.8.000.000,-<br>', 'Rp.14.400.000,-<br>', 'Rp.15.000.000,-<br>', 'Rp.16.400.000,-<br>', 'Rp.18.000.000,-<br>', 'Rp.16.400.000,-<br>'),
(63, 7, '<div>Perusahaan menjual produk secara kredit senilai Rp.1.000.000,- pencatatan transaksi tersebut ke dalam jurnal adalah …</div>', '<div>Kas 1.000.000</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Penjualan 1.000.000</div>', '<div>Piutang 1.000.000</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Penjualan 1.000.000</div>', '<div>Penjualan 1.000.000</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Utang 1.000.000</div>', '<div>Utang 1.000.000</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Piutang 1.000.000</div>', '<div>Penjualan 1.000.000</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Piutang 1.000.000</div>', '<div>Piutang 1.000.000</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Penjualan 1.000.000</div>'),
(64, 7, '<div>Kegiatan yang mengkombinasikan factor-faktor produksi (man, money, material, method) yang ada untuk menghasilkan suatu produk, baik berupa barang atau jasa yang dapat diambil nilai lebihnya atau manfaatnya oleh konsumen disebut …</div>', 'Perencanaan produksi<br>', 'Proses produksi<br>', 'Tahap kerja<br>', 'Produksi langsung<br>', 'Proses ekstraktif<br>', 'Proses produksi<br>'),
(65, 7, '<div>Banyak factor yang menyebabkan perencanaan menjadi langkah penting dalam manajemen, salah satunya adalah …</div>', 'Membuat tujuan menjadi umum<br>', 'Memperlambat waktu operasional<br>', 'Membantu manajemen untuk menyesuaikan diri dengan perubahan lingkungan<br>', 'Membantu memaksimalkan pekerjaan yang tidak penting<br>', 'Kecenderungan mempengaruhi aktifitas organisasi<br>', 'Membantu manajemen untuk menyesuaikan diri dengan perubahan lingkungan<br>'),
(66, 7, '<div>Tahapan yang mempertimbangkan beberapa tujuan yaitu manfaat produk, fungsi barang, keseimbangan biaya, kualitas dan performance produk disebut …</div>', 'Ide produk<br>', 'Riset<br>', 'Prototype<br>', 'Desain awal<br>', 'Desain akhir<br>', 'Desain awal<br>'),
(67, 7, '<div>Kegiatan produksi yang melakukan pengolahan secara cepat dan langsung menghasilkan produk (barang/jasa) bagi konsumen disebut …</div>', 'Produksi tidak langsung<br>', 'Produksi berselingan<br>', 'Produksi terus- menerus<br>', 'Produksi jangka panjang<br>', 'Produksi jangka pendek<br>', 'Produksi jangka pendek<br>'),
(68, 7, '			<div>Pengembangan desain dari limbah untuk membuat produk hiasan diawali dengan …</div><div>&nbsp;</div>		', 'Eksplorasi', 'Data tentang limbah', 'Eksplorasi material limbah', 'Riset', 'Prototype', 'Riset'),
(69, 7, '<div>Penetapan harga, promosi, dan pengembangan produk terdapat pada bagian … dari sistematik penyusunan proposal.</div>', 'Rencana produksi<br>', 'Rencana pemasaran<br>', 'Rencana kerja<br>', 'Tujuan<br>', 'Ringkasan<br>', 'Rencana pemasaran<br>'),
(70, 7, '<div>Suatu dokumen yang menyatakan keyakinan akan kemampuan sebuah bisnis untuk menjual barang atau jasa dengan menghasilkan keuntungan yang memuaskan dan menarik penyandang dana disebut …</div>', 'Promosi usaha<br>', 'Analisa data<br>', 'Proposal usaha<br>', 'Penetapan harga<br>', 'Perencanaan usaha<br>', 'Proposal usaha<br>'),
(71, 7, '<div>Komponen yang mendukung dalam pembuatan proposal usaha adalah pengelolaan sumber daya usaha yang disebut dengan 6M, yang termasuk 6M adalah …</div>', 'Man, money, method<br>', 'Man, market, tujuan<br>', 'Money, market, sasaran<br>', 'Objek, tujuan, sasaran<br>', 'Money, market, objek<br>', 'Man, money, method<br>'),
(72, 7, '<div>1. Berguna untuk membandingkan antara perkiraan dengan kenyataan</div><div>2. mengembangkan dan menguji strategi serta hasil yang diharapkan</div><div>3. faktor yang amat penting bahkan menentukan disetiap proses produksi</div><div>4. membantu wirausaha untuk terdapat berpikir kritis dan objektif attas usahanya</div><div>5. memberi kemudahan atau keuntungan yang lebih</div><div>Dari pernyataan yang merupakan manfaat dari proposal adalah …</div>', '1,2 dan 3<br>', '2,3 dan 4<br>', '1,2 dan 4<br>', '3.4 dan 5<br>', '2,4 dan 5<br>', '1,2 dan 4<br>'),
(73, 7, '<div>Berikut ini data keuangan sebuah perusahaan :</div><div>Kas Rp.5.000.000,- Piutang Rp.2.500.000,- Perlengkapan Rp.10.000.000,- Utang 3.000.000,-</div><div>Dari data diatas hitunglah berapa kekayaan perusahaan tersebut …</div>', '&nbsp;Rp.5.000.000,-<br>', 'Rp.7.500.000.-<br>', 'Rp.10.000.000,-<br>', 'Rp.17.500.000,-<br>', 'Rp.20.500.000,-<br>', 'Rp.17.500.000,-<br>'),
(74, 7, '<div>Upaya untuk menarik calon investor dapat dilakukan dengan mengajukan ...</div>', 'Surat undangan<br>', 'Pamplet produk<br>', 'Proposal usaha<br>', 'Proposal kegiatan<br>', 'Proposal pameran<br>', 'Proposal usaha<br>'),
(75, 7, '<div>PT. Sejahtera memproduksi sepatu olahraga dengan biaya tetap sebesar Rp. 36.000.000,- biaya variabel Rp.4.000/unit dan harga jual Rp.10.000/unit. Berapakah BEP (Q) nya …</div>', '2.570 unit<br>', '3.600 unit<br>', '6.000 unit<br>', '9.000 unit<br>', '10.000 unit<br>', '6.000 unit<br>'),
(76, 7, '<div>Likuiditas adalah kemampuan perusahaan untuk melunasi utang jangka pendeknya, untuk melunasi utang tersebut diambil dari …</div>', 'Harta tetap<br>', 'Modal sendiri<br>', 'Harta lancar<br>', 'Utang jangka panjang<br>', 'Laba/keuntungan<br>', 'Harta lancar<br>'),
(77, 7, '<div>Berikut sebagian data perusahaan jasa :</div><div>Pendapatan jasa Rp. 1.500.000,-</div><div>Pendapatan lain-lain Rp.400.000,-</div><div>Beban gaji Rp. 600.000,-</div><div>Beban listrik Rp. 100.000,-</div><div>Modal Rp. 1.100.000,-</div><div>Berdasarkan data diatas besarnya laba perusahaan adalah …</div>', 'Rp. 800.000,-<br>', 'Rp. 850.000,-<br>', 'Rp. 900.000,-<br>', 'Rp. 1.100.000,-<br>', 'Rp. 1.200.000,-<br>', 'Rp. 1.200.000,-<br>'),
(78, 7, '<div>Faktor yang bukan penyebab proposal usaha disusun oleh wirausahawan adalah ...</div>', 'Untuk memperoleh sumber dana dari luar<br>', 'Untuk menuntun pembukaan usaha atau bisnis<br>', 'Untuk menghambur-hamburkan kertas<br>', 'Untuk tetap fokus pada target dan strategi<br>', 'Untuk tetap fokus pada segmen pasar<br>', 'Untuk menghambur-hamburkan kertas<br>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `fk_soal_pelajaran` (`soal_pelajaran`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `soal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `soal`
--
ALTER TABLE `soal`
  ADD CONSTRAINT `fk_soal_pelajaran` FOREIGN KEY (`soal_pelajaran`) REFERENCES `pelajaran` (`id_pelajaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
