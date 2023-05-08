-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 08 2023 г., 09:33
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mustafo`
--

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_04_27_015400_create_news_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `viewers` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `image`, `title`, `text`, `images`, `viewers`, `created_at`, `updated_at`) VALUES
(5, 'uploads/H7DH0XgZsb9xII26KCGnsohQbuwA1rzVdOiJ7IUU.png', 'PHP haqida', 'Assalomu aleykum dasturchilar, dizayner yoki bo\'lajak dasturchilar :) Bugundan boshlab PHPdan shaxsiy maqolalarimni yozishni boshlayman.\r\n\r\nAvval o\'zimni tanishtirsam mani ismim Farrux, internetda esa WebStyle deb atashadi :). Mirobod kompyuter texnologiyalari kollejida o\'qiyman. Keling o\'zim haqimda emas PHP haqida ma\'lumot beray.\r\n\r\nPHP juda keng qo\'llanadigan dasturlash tilli bo\'lib, internet juda katta qismini egallab o\'lgan. Nega aynan internetni deyishingiz mumkin. Chunki PHP web server texnologiyalari hisoblanib, web server yani saytda ishlaydi. Masalan qolgan dasturlash tillarida tuzilgan dasturlar konsolda yoki windows(oyna) shaklida ishlaydi. Tuzgan dasturimizning natijasini ko\'pchilikga yoqimsiz va tushunarsiz bo\'lgan konsolda ko\'ramiz. Agarda biron-bir odamga oddiygina tuzgan dasturingizni ko\'rsatmoqchi bo\'lsangizchi? Yoqimisiz, qop-qora konsolni ko\'rsatasizmi? :) Windows elementlaridan foydalanib, o\'ziga xos dizaynga ega dastur tuzishga esa anchagina vaqt ketadi. Lekin tuzgan taqdiringizda ham oddiy foydalanuvchini e\'tiborini qozonish juda qiyin bo\'ladi.\r\n\r\nUnda qanaqa dastur tuzish kerak deb o\'ylaysiz. Masalan siz oddiy hisob kitob qiluvchi dasturning kompyuter uchun C++ yozdingiz va huddi shu dasturni PHPda yozib chiqdingiz. Endi shu dasturni do\'stingizga foydalanishni tavsiya qilsangiz, do\'stingiz nima qiladi? Albatta o\'sha PHPda yozilgan dasturni ishlatib ko\'radi. U oddiygina mobil telefoni yoki planshetidan o\'sha dastur joylashtirilgan saytga kirib ko\'radi va albatta bu dasturingizdan qoyil qo\'ladi :) Yani dastur foydalanish qulay bo\'lgan platformaga tuzish kerak. Ayni paytda web sayt va mobil telefonlar foydalanish hamma uchun qulay. Masalan hozir internet juda rivojlanib, foydalanish esa qulaylashib bormoqda. Demak kelajakda internet bundan ham rivojlanib ketadi. Shuning uchun internetga dastur ya\'ni Web App yozish kerak. Bunda esa bizga PHP yordam beradi.\r\n\r\nKeyingi maqolada esa PHPda ishlashni boshlaymiz.', '[\"1683181909php (1).jpg.jpg\",\"1683181909php.jpg.jpg\",\"1683181909php.png.png\",\"1683181909php-tutorial.jpg.jpg\"]', 3, '2023-05-04 01:31:49', '2023-05-04 01:33:17'),
(6, 'uploads/GgMSopbhpPC3IrY2k11Tdy9mSCC1zjH2d9s7b48t.webp', 'Python haqida', 'Python nima?\r\n\r\nPython - mashhur dasturlash tili. U Guido van Rossum tomonidan 1991 yilda ishlab chiqilgan.\r\n\r\nBu dasturlash tili o\'rganish uchun oson, foydalanish uchun qulay, ko\'p qirrali dasturlash tili bo\'lib, dasturlashga yangi kirganlar uchun ham, soha mutaxassislari uchun ham zo\'r tanlov.\r\n\r\nPython quyidagilar uchun ishlatiladi:\r\n\r\nveb-ishlab chiqish (server tomonida),\r\ndasturiy ta\'minotni ishlab chiqish,\r\nmatematik amallar,\r\ntizim skriptlari.\r\nBu dasturlash tilida nimalar qilishi mumkin?\r\n\r\nPython serverda veb-ilovalar ishlab chiqish uchun ishlatilinishi mumkin.\r\nPython ish oqimlarini yaratish uchun dasturiy ta\'minot bilan bir qatorda ishlatilishi mumkin.\r\nPython ma\'lumotlar bazasi tizimlariga ulanishi mumkin. Bundan tashqari, u fayllarni o\'qishi va o\'zgartirishi mumkin.\r\nPython katta ma\'lumotlarga ishlov berish va murakkab matematikani bajarish uchun ishlatilishi mumkin.\r\nPythonni tezkor prototiplash yoki ishlab chiqarishga tayyor dasturiy ta\'minotni ishlab chiqish uchun ishlatish mumkin.\r\nNima uchun aynan Python?\r\n\r\nPython turli xil platformalarda ishlaydi (Windows, Mac, Linux, Raspberry Pi va boshqalar).\r\nPython ingliz tiliga o\'xshash oddiy sintaksisga ega.\r\nPython dasturlash tiliga bo\'lgan talab yildan yilga oshib kelmoqda. CodingDojo portalining tadqiqotlariga ko\'ra, 2020 yilda aynan Python tilida dasturlovchi mutaxassislarga eng ko\'p talab bo\'lgan.\r\nPython Artificial Intelligence (Sun\'iy intellekt) va Data Science (Ulkan ma\'lumotlar bilan ishlash) sohalarining tili hisoblanadi. Bugungi kunda keng ommalashib borayotgan sun\'iy intellekt asosida ishlovchi dasturlarning aksari Pythonda yozilgan. Bu sohalardagi mutaxassislar bugungi kunda eng noyob va qimmatbaho kadrlar hisoblanadi.\r\nKeng qamrovli va universal til. Python dasturlari deyarli barcha operativ tizimlarda va platformalarda ishlaydi.\r\nO\'rganish uchun ham, tushunish uchun ham juda qulay va sodda kod.\r\nMoslashuvchanlik —Python dasturlash tili ma\'lum bir masalalarni yechish bilan chegaralanmagan. Bu til dasturchilarga yangi va yangi yo\'nalishlarga ki\'rish imkonini beradi. Python quyidagi sohalarda qo\'llaniladi: Web va Internet dasturlash, kompyuter o\'yinlarini yaratish, ma\'lumotlar bazasi bilan ishlash (DB), computer vision, foydalanuvchilar uchun grafik interfeys (GUI), juda tez rivojlanayotgan buyumlar interneti (IoT) texnologiyasi va hokazo.', '[\"16831930540_f2yYmYJFuG3pH07G.jpg.jpg\",\"16831930541_j7YF8H9CP9L1m3qFvgyZGg.jpeg.jpeg\",\"16831930541_LyZcwuLWv2FArOumCxobpA.png.png\",\"16831930547c38fa345d44bc0eec9b3fe433cac917.png.png\"]', 2, '2023-05-04 04:37:34', '2023-05-04 04:38:47'),
(7, 'uploads/yGuGEBxcadgkxIbKJNCZCbga1NltT1CdFgu9J0gS.png', 'JavaScript haqida tushuncha.', 'JavaScript - bu interaktiv va dinamik veb-saytlarni yaratish uchun keng qo\'llaniladigan dasturlash tili. U birinchi marta 1995 yilda Brendan Eich tomonidan ishlab chiqilgan va hozirda ECMAScript standartlari organi tomonidan qo\'llab-quvvatlanadi. JavaScript barcha asosiy veb-brauzerlar tomonidan qo\'llab-quvvatlanadigan yuqori darajali, talqin qilingan dasturlash tilidir.\r\n\r\nJavaScript asosan veb-brauzerda ishlaydigan mijoz tomoni skriptlarini yaratish uchun ishlatiladi. Bu shuni anglatadiki, u serverda emas, balki foydalanuvchining kompyuterida bajariladi. Bu foydalanuvchi tajribasini tezroq va sezgirroq qilish imkonini beradi, chunki kod to\'g\'ridan-to\'g\'ri brauzerda serverga borishni talab qilmasdan ishlashi mumkin. Bundan tashqari, JavaScript-dan Node.js kabi texnologiyalar yordamida server tomonidagi skriptlarni yaratish uchun foydalanish mumkin.', '[\"16833787640_f2yYmYJFuG3pH07G.jpg.jpg\",\"16833787641_j7YF8H9CP9L1m3qFvgyZGg.jpeg.jpeg\",\"1683378764arrays.png.png\"]', 2, '2023-05-06 08:12:44', '2023-05-06 08:13:31');

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
