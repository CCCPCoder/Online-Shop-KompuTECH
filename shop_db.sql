-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2025 pada 13.21
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(2, 'rahul', 'f865b53623b121fd34ee5426c792e5c33af8c227');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(19, 7, 5, 'Camera Nikon D3500', 4199000, 1, 'IMG-20250618-WA0041.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 2, 'kurnia setia', 'kurniasetia12@gmail.com', '0812312314', 'semoga barang saya cepat di anulir ya min makasih '),
(3, 7, 'riski pertama', 'riski123@gmail.com', '0812314443', 'admin tolong paket saya nge stuck'),
(4, 8, 'juyen', 'juyenganteng123@gmaiil.com', '0812312431', 'bang tokonya jelek '),
(6, 0, 'asd', 'asd@gmail.com', '081231235433', 'Hi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(11) NOT NULL,
  `delivery` varchar(30) NOT NULL,
  `placed_on` datetime NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `delivery`, `placed_on`, `payment_status`) VALUES
(13, 13, 'Amin', '0895645423', 'amin123@gmail.com', 'dana', 'flat no. Cijantung no. 12, Jakarta Timur, DKI Jakarta, Indonesia - 12620', 'Mouse Nova Pro Pressplay  (499000 x 1) - ', 499000, 'next day', '2025-07-02 13:54:59', 'pending'),
(15, 19, 'User', '0895645686', 'user@gmail.com', 'gopay', 'flat no. Gedong, Jakarta Timur, DKI Jakarta, Indonesia - 13780', 'Mouse Nova Pro Pressplay  (499000 x 1) - Smartphone POCO X7 Pro 5G (4798000 x 1) - ', 5297000, 'reguler', '2025-07-02 20:54:32', 'completed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(5000) NOT NULL,
  `price` int(11) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(3, 'Mouse Logitech g102', 'Deskripsi Logitech G102 RGB v2 Lightsync\r\nSPECIFICATIONS\r\n\r\nREQUIREMENTS :\r\n- Windows 7 or later\r\n- macOS 10.10 or later\r\n- Chrome OSTM\r\n- USB port\r\n\r\nPHYSICAL SPECS :\r\n- Height: 116.6 mm\r\n- Width: 62.15 mm\r\n- Depth: 38.2 mm\r\n- Weight: 85 g, (mouse only)\r\n- Cable Length: 2.1 m\r\n\r\nTECHNICAL SPECIFICATIONS :\r\n- LIGHTSYNC RGB lighting\r\n- 6 programmable buttons\r\n- Resolution: 200 – 8,000 DPI\r\n', 265000, 'IMG-20250618-WA0054.jpg', 'IMG-20250618-WA0057.jpg', 'IMG-20250618-WA0046.jpg'),
(4, 'Mouse Nova Pro Pressplay ', 'Specs and features:\r\n- up to 12000 DPI (adjustable)\r\n- 1000hz polling rate (customizable)\r\n- glass skate feet available (sold separately as bundle)\r\n- Pixart 3311 sensor\r\n- 35G, 300IPS\r\n- HUANO Blue Shell White Dot switches, 20million click expectancy\r\n- 2.4G dongle connection, no delay + wired via USB C\r\n- 6 button = L-click, R-click, Mousewheel, 2 side buttons, 1 DPI button + 1 power\r\n- grip tape included\r\n- customization software\r\n- Ultralight: 60gr only!\r\n- virgin grade PTFE feet\r\n- battery: 300mAh\r\n- 125', 499000, 'IMG-20250618-WA0044.jpg', 'IMG-20250618-WA0045.jpg', 'IMG-20250618-WA0043.jpg'),
(5, 'Camera Nikon D3500', 'Product Highlights :\r\n24.2MP DX-Format CMOS Sensor\r\nEXPEED 4 Image Processor\r\nNo Optical Low-Pass Filter\r\nNative ISO 100-25600; 5 fps Shooting\r\n3.0&#34; 921k-Dot LCD Monitor\r\nFull HD 1080p Video Recording at 60 fps\r\nMulti-CAM 1000 11-Point AF System\r\nSnapBridge Bluetooth Connectivity\r\nGuide Mode and Special Effects\r\n18-55mm f/3.5-5.6G VR Lens\r\n\r\nKELENGKAPAN STANDAR BOX :\r\nNikon D3500 DSLR Camera\r\nNIKKOR 18-55mm f/3.5-5.6G VR Lens (KHUSUS VARIAN KIT LENSA)\r\nEN-EL14A Rechargeable Li-Ion Battery\r\nMH-24 Quick Charger\r\nC', 4199000, 'IMG-20250618-WA0041.jpg', 'IMG-20250618-WA0055.jpg', 'IMG-20250618-WA0053.jpg'),
(6, 'Camera Canon EOS 600D', 'Description\r\nSporting an 18MP CMOS sensor, user friendly design, and fantastic features; the Canon EOS 600D lets nothing stand in the way of your photography. An ISO range of 100 to 6400 enables high quality handheld shooting in low lighting while the 14bit DIGIC 4 Image processor provides\r\n\r\nBrandCanon\r\nDigital Camera TypeSLR Camera\r\nOptical ZoomOther\r\nMegapixel18 MP\r\n\r\nUkuran Layar LCD 3 in\r\nFormat Gambar JPEG, RAW\r\nFormat Video MOV\r\nEffective Megapixels 18 Megapixels\r\nResolusi Layar 230000 dots\r\nMaximum V', 3749000, 'IMG-20250618-WA0048.jpg', 'IMG-20250618-WA0047.jpg', 'IMG-20250618-WA0049.jpg'),
(7, 'IEM Celest Wyvern Abyss Pro', 'In ancient Chinese mythology, Wyvern, also known as Feilong or Huanglong, is a creator god, originating from the Heavens. Wyern created the earth and brought forth the Phoenix and Qilin. It has nine heads, each with a unique face and color, and a body covered in scales. Wyvern is a god dragon with wings and four large claws, it can breathe fire and controls the weather as well.\r\n\r\nDragon Wing Face Covers\r\n\r\nCelest Wyvern Abyss has solid looks with 3D-printed medical-grade resin ear shells. The shell', 449000, 'IMG-20250618-WA0050.jpg', 'IMG-20250618-WA0052.jpg', 'IMG-20250618-WA0042.jpg'),
(8, 'IEM Tang Zhu Wan&#39; Er S.G 2 3.5mm', 'Arise Greatness Refined\r\n\r\nThis upgraded version retains  its original soul while introducing enhancements in design, materials, and performance, making it an even more compelling choice for audiophiles. Now available in two stunning colorways, white and black, each carries its own. Charisma the white embodies a sleek and sophisticated purity, while the black exudes a bold and timeless elegance. No matter the choice, both versions reflect-the next step in Tangzu&#39;s dedication to the traditional chi', 319000, 'IMG-20250618-WA0056.jpg', 'IMG-20250618-WA0051.jpg', 'IMG-20250618-WA0040.jpg'),
(9, 'Apple Watch SE GPS', 'Fitur esensial untuk membantu Anda tetap terhubung, aktif, sehat, dan aman.\r\n\r\n\r\n\r\nPoin-poin fitur utama\r\n\r\n(1). MENGAPA APPLE WATCH SE — Semua fitur esensial untuk memantau kesehatan Anda serta membantu Anda tetap aktif, termotivasi, terhubung, dan aman. watchOS 11 menghadirkan lebih banyak kecerdasan, personalisasi, dan konektivitas. Dengan fitur seperti Deteksi Jatuh (1)dan metrik olahraga yang disempurnakan, Apple Watch SE luar biasa hemat.(2)\r\n\r\n(2). TETAP TERHUBUNG — Kirim teks, terima telepon, de', 4499000, 'WhatsApp Image 2025-06-25 at 21.29.37_ed793843.jpg', 'WhatsApp Image 2025-06-25 at 21.29.37_2b32c608.jpg', 'WhatsApp Image 2025-06-25 at 21.29.37_5093cb8d.jpg'),
(10, 'Smartphone POCO X7 Pro 5G', 'Prosesor : Dimensity 8400-Ultra\r\n\r\nCPU: CPU octa-core, hingga 3,25 GHz\r\n\r\nGPU: Mali-G720\r\n\r\nPenyimpanan & RAM : 12 GB+512 GB\r\n\r\nLPDDR5X + UFS 4.0\r\n\r\n\r\n\r\nDimensi\r\n\r\nTinggi: 160,95 mm\r\n\r\nLebar: 75,24 mm\r\n\r\nTebal: 8,31 mm（plastik）/ 8,45 mm（PU）\r\n\r\nBobot: 195.5 g (plastik) / 198.5 (PU）\r\n\r\n\r\n\r\nLayar\r\n\r\nLayar CrystalRes AMOLED 6,67&#34;\r\n\r\nResolusi: 2712 x 1220 (Resolusi 1,5 K)\r\n\r\nRefresh rate: Hingga 120 Hz\r\n\r\nTouch sampling rate: Touch sampling rate 480 Hz，Touch sampling rate instan 2560 Hz，Sentuhan resolusi super 16X\r\n\r\nLayar AdaptiveSy', 4798000, 'WhatsApp Image 2025-06-25 at 21.24.50_193eb62f.jpg', 'WhatsApp Image 2025-06-25 at 21.24.50_5e7d14e2.jpg', 'WhatsApp Image 2025-06-25 at 21.24.50_d88e38cc.jpg'),
(11, 'Laptop LENOVO LOQ 15 I5 12450HX RTX3050', 'LENOVO LOQ 15 I5 12450HX RTX3050 6GB/ 12GB 512GB W11+OHS 15.6FHD 144HZ 100SRGB BLIT 2Y+ADP GRY -1JID\r\n\r\nspesifikasi:\r\n- Intel Core i5-12450HX ( 4.40 GHz - Frekuensi Turbo | 8 Core 12 Threads )\r\n- RAM 12GB SO-DIMM DDR5-4800 ( 1x12 ) / 20GB SO-DIMM DDR5-4800 ( 12 + 8 | MANUAL UPGARDE )\r\n- 512GB SSD M.2 2242 PCIe 4.0x4 NVMe\r\n- Screen 15.6&#34; FHD (1920x1080) IPS 300nits Anti-glare, 100% sRGB, 144Hz, G-SYNC\r\n- NVIDIA GeForce RTX 3050 6GB GDDR6, Boost Clock 1732MHz, TGP 95W\r\n- Windows 11 Home\r\n\r\nOffice Home and S', 11499000, 'WhatsApp Image 2025-06-25 at 21.23.09_4f989b27.jpg', 'WhatsApp Image 2025-06-25 at 21.23.09_fff7a754.jpg', 'WhatsApp Image 2025-06-25 at 21.23.09_84c6f254.jpg'),
(12, 'Tv Toshiba 32E31KP', 'Television TOSHIBA 32E31KP adalah smart TV dengan layar 32 inch yang dilengkapi prosesor tercanggih Vidaa U4.2 dan berkemampuan mengolah data dengan begitu cepat sehingga Anda bisa lebih mudah dan nyaman menikmati berbagai hiburan tanpa batas. Menonton film atau bermain game dengan TOSHIBA 32E31KP akan lebih seru dengan REGZA Power Audio yang dipadukan dengan kecanggihan dari Dolby Audio. TOSHIBA 32E31KP juga dilengkapi dengan teknologi Color Re-master, Picture Optimizer, serta Contrast Booster, TOSHIBA 32', 1799000, '0c991b68-4312-480b-9742-49d46fbe20fc.jpg', '519c6f57-d7af-4b96-bda0-2f7d14d06fee.jpg', 'review-Smart-TV-Toshiba-32E31KP-1-1280x720.jpg'),
(13, 'Fridge Panasonic NR-BB211Q-PK Kulkas 2 Pintu + Inverter + Prime Fresh [210 L] - Sparkling Black', 'Panasonic NR-BB211Q-PK Kulkas 2 Pintu\r\nFitur Kulkas 2 Pintu\r\n1. Experience 7 days freshness with Prime Fresh!\r\nDengan teknologi Prime Fresh, makanan seperti daging dan ikan dapat dikondisikan di suhu -3 derajat celcius di bagian permukaannya. Alhasil, bagian dalam daging tidak sulit dipotong serta komponen gizi dan cita rasa dapat terjaga lebih lama\r\n2. 24/7 Hemat Energi yang Cerdas\r\nTiga jenis sensor ECONAVI mendeteksi kondisi penggunaan, dan mikroprosesor menganalisisnya. Dengan hasil analisis ini,', 4483000, 'e70f4b86c5b24e839a699731bcab120b~.jpeg', 'ec25287d736143e2a36a9883c2630de3~.jpeg', '37e1cf729d20496ea7fd9dd7443156f9~.jpeg'),
(14, 'Washing machine POLYTRON 1 Tabung Zeromatic Hijab 7.5 KG PAW 75518B - hitam', 'Bagi Anda yang sudah terbiasa menggunakan mesin cuci bukaan atas, juga banyak pilihannya. Oleh sebab itu sebelum membeli mesin cuci, ada baiknya disesuaikan dengan budget dan kebutuhan masing-masing. Salah Satunya adalah Polytron New Zeromatic PAW 18 Series. Mesin cuci ini tentunya juga bisa digunakan untuk berbagai tekstur kain, mulai dari kain tebal seperti sprei, handuk dan jins, hingga kain berjenis tipis atau ringan seperti scarf, hijab atau pakaian dalam. Dengan adanya mesin cuci otomatis ', 2229000, '38453ab854d64b089cb5ac070908b186~.jpeg', 'a637ecbbd71a4581a0bc0e2f49a7f87d~.jpeg', '016695c5b84d451f979d1f371ac34f30~.jpeg'),
(15, 'Smartphone POCO F7 (12/512GB) | Snapdragon 8s Gen 4 | 6.83&#34; 1.5K 120Hz AMOLED | 50MP OIS', 'POCO F7 : Super Speed Unleashed!\r\nSPESIFIKASI\r\nProsesor\r\nSnapdragon 8s Gen 4\r\nTSMC 4nm process\r\nCPU: Prosesor octa-core, hingga 3,21 GHz\r\nGPU: Adreno 825\r\nAl Engine: Qualcomm Hexagon NPU\r\nPenyimpanan & RAM\r\n12 GB + 512 GB\r\nLPDDR5X + UFS 4.1\r\n*Kapasitas penyimpanan dan RAM yang tersedia lebih kecil dari memori total karena sebagian digunakan untuk sistem operasi dan perangkat lunak bawaan.\r\nDimensi\r\n163,1 x 77,9 x 8,2 mm*\r\n215,7 g*\r\nLayar\r\nLayar 1.5K 6,83&#39;&#39;\r\nRasio Refresh Rate : Hingga 120 Hz\r\nRasio pengambilan sa', 5799000, 'ce09721f8c944e6e8bf07357d1bb7313~.jpeg', '6dfb8ff10d614d1ebaec8651093cdba7~.jpeg', '20a7d8cdb77e40ddb2d9eb5beafbc06b~.jpeg'),
(16, 'Laptop ASUS Gaming K16 K3605ZF GeForce RTX 2050 - i5 12500H 8GB 512GB - RAM 16GB', 'ASUS VIVOBOOK 16X-VIPS551\r\ni5 12500H RTX2050 4GB/ 8GB 512GB W11+OHS 16.0 WUXGA VIPS BLK\r\n\r\n\r\nSpecification :\r\nGraphics : NVIDIA GeForce RTX 2050 Laptop GPU, 4GB GDDR6\r\nProcessor : 12th Gen Intel Core i5-12500H Processor 2.5 GHz (18M Cache, up to 4.5 GHz, 12 cores: 4 P-cores and 8 E-cores)\r\nOperating System : Windows 11 Home\r\nMicrosoft Office :Office Home and Student 2021 included\r\nDisplay : 16.0-inch WUXGA (1920 x 1200) display having 16:10 Aspect Ratio || 300 nits Brightness\r\nMemory : 8GB DDR4 on board /', 10149000, '2a5cef6b-1e3e-4c84-98a2-97e0e50d7e31.jpeg', '20bd1a68-cd82-45b7-a0a4-6511b2c05bbf.jpeg', 'd7e7b0de-065a-4dde-8786-8754e7dddad1.jpg'),
(17, 'Xiaomi Redmi Watch 5 Lite', '- 1.96&#34; AMOLED Display\r\n- Built-in GNSS\r\n- Baterai tahan lama hingga 18 hari\r\n- Mendukung 150+ mode olahraga', 698999, 'xiomi smart watch.jpg', 'xiomi smart watch 2.jpg', 'xiomi smart watch 3.jpg'),
(18, 'Iphone 16', 'The iPhone 16 features a 6.1-inch OLED display and is powered by Apple&#39;s A18 processor. It includes a 3561 mAh battery, 8 GB of RAM, and storage options up to 512 GB. The device also boasts a dual camera system on the back and is designed with Ceramic Shield glass for enhanced durability.', 12300000, '615O-NFQKdL.jpg', 'iphone_16_plus_ultramarine_01_2_1.jpg', 'iPhone-16-Teal-1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'rahul gemink', 'rahul12@gmail.com', '38f078a81a2b033d197497af5b77f95b50bfcfb8'),
(2, 'kurnia setia', 'kurniasetia12@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(4, 'admin123', 'hazelpangeran@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(5, 'admin123', 'rifqizan@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(7, 'riski pertama', 'riski123@gmail.com', '38f078a81a2b033d197497af5b77f95b50bfcfb8'),
(8, 'juyen', 'juyenganteng123@gmaiil.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(9, 'admin123', 'negro12@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(10, 'admin123', 'juju12@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(11, 'admin123', 'rapi12@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(12, 'alkausar', 'aleldul@gmail.com', 'f865b53623b121fd34ee5426c792e5c33af8c227'),
(13, 'amin123', 'amin123@gmail.com', 'b6cf530ee4acbf9c2afe61862d8f10ca59e4baa8'),
(17, 'Test', 'test@gmail.com', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc'),
(19, 'user1', 'user@gmail.com', '95c946bf622ef93b0a211cd0fd028dfdfcf7e39e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
