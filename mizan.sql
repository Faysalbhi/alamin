-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 26, 2024 at 01:53 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mizan`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desp` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Jackets', 'jackets', '2024-10-15 22:53:05', '2024-10-15 22:53:05');

-- --------------------------------------------------------

--
-- Table structure for table `client_messages`
--

CREATE TABLE `client_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desp` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci,
  `sts` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint UNSIGNED NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `password`, `created_at`, `updated_at`) VALUES
(1, '123456', '2024-10-24 18:29:46', '2024-10-25 20:48:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2024_10_14_034847_create_categories_table', 2),
(17, '2024_10_15_025821_create_products_table', 3),
(18, '2024_10_15_042311_create_product_galleries_table', 3),
(23, '2024_10_16_051922_create_blogs_table', 4),
(24, '2024_10_16_052006_create_s_e_o_s_table', 4),
(25, '2024_10_16_070616_create_messages_table', 5),
(26, '2024_10_16_081150_create_pages_table', 6),
(27, '2024_10_25_000903_create_customers_table', 7),
(28, '2024_10_26_083009_create_client_messages_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desp` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `desp` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `short_desp`, `desp`, `created_at`, `updated_at`) VALUES
(4, 'About Us', 'about-us', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Totam officia, mollitia quam veritatis natus, itaque consequuntur quis sequi animi voluptates ullam temporibus cum adipisci amet molestiae possimus voluptatibus exercitationem, laborum cumque facere ipsam? Impedit, tempore iusto dolorum, distinctio illum saepe quos, veritatis enim odio nihil modi nobis rem. Consectetur, velit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Expedita \r\nrepellat suscipit, rerum cupiditate doloremque assumenda atque, labore \r\noptio aspernatur fugit voluptates accusantium voluptatem minima! \r\nDelectus tenetur enim commodi ipsa eos magnam sapiente molestiae \r\nperferendis nisi eligendi impedit alias praesentium amet distinctio \r\nfacilis, atque accusamus a quidem. Error corrupti mollitia quaerat \r\ndeserunt hic ipsa odit laudantium harum maxime magni ut amet dolores \r\nsunt cupiditate maiores enim molestiae quas libero, unde iste quia \r\npraesentium! Consectetur impedit porro aut! Incidunt repudiandae magni \r\ncumque eos molestias, quidem totam numquam porro magnam, cum rerum optio\r\n labore dicta esse voluptatum laborum saepe, sed hic tempore! Debitis \r\ndistinctio tenetur aliquam deleniti odit nobis alias, totam voluptatum \r\nrecusandae quo quae in labore quasi animi maxime cumque inventore \r\nvoluptate atque eaque magnam. Culpa consequuntur cupiditate tempore \r\nexpedita! Omnis repudiandae laboriosam corrupti nulla voluptatum. \r\nReiciendis iusto optio quia culpa quasi reprehenderit eum natus eius \r\nvoluptas quo nobis doloremque eligendi, asperiores incidunt deleniti \r\nnulla exercitationem quidem sunt molestiae at. Suscipit molestias animi \r\ndignissimos in, aspernatur consequatur quis officiis quam officia sit \r\nrepudiandae quasi! Praesentium maiores earum ipsum reiciendis velit \r\nmolestias rem assumenda! Suscipit, necessitatibus. Deleniti, error ullam\r\n recusandae voluptates a eos animi ea expedita soluta repudiandae quis \r\naccusantium dicta quam. Dignissimos!<h1></h1>', '2024-10-23 06:35:52', '2024-10-25 20:10:27'),
(5, 'Privacy Policy', 'privacy-policy', 'Our privacy policy outlines how we collect, use, and protect your data. We prioritize transparency, detailing cookies, data sharing, and your rights to ensure your personal information stays secure.', '<br><br>At [Your Company Name], we are committed to safeguarding your personal information and maintaining your trust. Our **Privacy Policy** outlines how we collect, use, store, and protect your data while ensuring complete transparency. This policy is designed to provide you with a clear understanding of what information we gather, how we use it, and the steps we take to keep your data secure. <br><br>#### 1. Information We Collect<br><br>To provide you with the best possible service, we may collect the following types of information:<br><br>- **Personal Information**: This includes your name, email address, phone number, billing and shipping addresses, and any other information you voluntarily provide when interacting with our services, such as during account creation or product purchases.<br>&nbsp; <br>- **Usage Data**: We gather data about how you interact with our website or app, including pages viewed, links clicked, and the duration of your visit. This helps us improve our services and enhance your experience.<br><br>- **Device Information**: We may collect details about the device you use to access our platform, such as the IP address, browser type, operating system, and other technical information.<br><br>- **Cookies and Tracking Technologies**: To personalize your experience, we use cookies and similar tracking technologies to store information about your preferences, login sessions, and user behavior.<br><br>#### 2. How We Use Your Information<br><br>We use the information we collect for various purposes, including but not limited to:<br><br>- **Service Provision**: Your data is essential for providing, maintaining, and improving the services you request from us. This includes processing transactions, managing your account, and ensuring proper customer support.<br>&nbsp; <br>- **Personalization**: We use your preferences and usage data to personalize content, product recommendations, and services to meet your specific needs and enhance your overall experience.<br><br>- **Communication**: Your contact information allows us to send updates, notifications, and marketing materials (with your consent) regarding our products, promotions, or changes to our policies.<br><br>- **Legal Compliance**: We may need to use or disclose your information as required by law, for example, in response to a valid court order or to comply with regulations.<br><br>#### 3. Data Sharing and Disclosure<br><br>We respect your privacy, and as such, we do not sell or share your personal information with third parties for direct marketing purposes. However, we may share your data with trusted partners and service providers for the following reasons:<br><br>- **Service Providers**: Third-party vendors may assist us with specific services like payment processing, data analytics, website hosting, or customer support. These partners are obligated to use your data solely for the services they perform on our behalf and are required to comply with strict confidentiality terms.<br><br>- **Legal Requirements**: In cases where we are legally obliged to disclose information, such as in compliance with a subpoena or other legal processes, we will do so only to the extent necessary.<br><br>- **Business Transfers**: If our company undergoes a merger, acquisition, or asset sale, your data may be transferred as part of that transaction. You will be notified of any change in data handling through a prominent notice on our website.<br><br>#### 4. Data Security<br><br>We take the security of your data seriously and implement a variety of technical and organizational measures to protect your information from unauthorized access, disclosure, alteration, or destruction. These include:<br><br>- **Encryption**: We use encryption protocols to secure sensitive information, especially during transmission (e.g., when you enter your credit card details).<br><br>- **Access Controls**: Access to your personal information is restricted to authorized personnel who require it for legitimate business purposes. <br><br>- **Regular Security Audits**: Our systems undergo regular security audits and updates to protect against potential vulnerabilities.<br><br>While we strive to protect your data, it\'s important to remember that no system is 100% secure. We encourage you to use strong passwords and be cautious with sharing sensitive information online.<br><br>#### 5. Your Rights and Choices<br><br>You have the right to access, update, or delete your personal information at any time. Depending on your location, you may also have additional rights under applicable privacy laws, such as:<br><br>- **Accessing Your Data**: You can request a copy of the personal information we hold about you.<br><br>- **Data Correction**: If your information is inaccurate or incomplete, you can request that we update it.<br><br>- **Data Deletion**: In certain circumstances, you can ask us to delete your personal data, except for data we are required to retain for legal or business reasons.<br><br>- **Marketing Preferences**: You can opt out of receiving promotional emails from us by following the unsubscribe link in the emails we send or by adjusting your preferences in your account settings.<br><br>#### 6. Children’s Privacy<br><br>Our services are not intended for individuals under the age of 13, and we do not knowingly collect personal information from children. If we become aware that we have inadvertently gathered information from a child, we will take steps to delete it promptly.<br><br>#### 7. Changes to This Privacy Policy<br><br>We may update this Privacy Policy from time to time to reflect changes in our practices, technologies, or legal requirements. When we make changes, we will notify you by updating the', '2024-10-23 07:32:01', '2024-10-23 07:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_link2` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_link3` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `preview` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_galleries`
--

CREATE TABLE `product_galleries` (
  `id` bigint UNSIGNED NOT NULL,
  `gallery` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_e_o_s`
--

CREATE TABLE `s_e_o_s` (
  `id` bigint UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonical` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_locale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_card` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_site` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_data` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Mizan Ahmed', 'mizan@gmail.com', NULL, '$2y$12$TloBBxzLyiy3WjpBw65hxO/jOftSHuntjEt8qgDrR6.n9ZKP3d33q', NULL, '2024-10-26 01:22:20', '2024-10-26 07:29:39');

-- --------------------------------------------------------

--
-- Table structure for table `web_contents`
--

CREATE TABLE `web_contents` (
  `id` bigint UNSIGNED NOT NULL,
  `footer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_desp` longtext COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `web_contents`
--

INSERT INTO `web_contents` (`id`, `footer`, `number`, `email`, `facebook`, `twitter`, `linkedin`, `instagram`, `address`, `contact_title`, `contact_desp`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'we specialize in delivering innovative tech solutions tailored to your business needs. From software development to IT consulting, we drive digital transformation with cutting-edge technology and expertise. Connect with us for personalized support and stay ahead in the fast-evolving tech landscape.', '0187786823', 'ami@mailinator.com', 'facebook.com', 'tw', 'li', 'in', '123 Demo St, Lakeland, FL 45678, United States.', 'Contact Us For More Information', 'Your questions, feedback, and suggestions are always welcome . Please don\'t hesitate to contact us at your convenience. Your valuable insights are crucial in our continuous effort to improve our services.', 'footerlogo.png', '2024-09-30 00:08:00', '2024-10-25 19:48:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blogs_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `client_messages`
--
ALTER TABLE `client_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_galleries_product_id_foreign` (`product_id`);

--
-- Indexes for table `s_e_o_s`
--
ALTER TABLE `s_e_o_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `web_contents`
--
ALTER TABLE `web_contents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `client_messages`
--
ALTER TABLE `client_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `product_galleries`
--
ALTER TABLE `product_galleries`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `s_e_o_s`
--
ALTER TABLE `s_e_o_s`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `web_contents`
--
ALTER TABLE `web_contents`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product_galleries`
--
ALTER TABLE `product_galleries`
  ADD CONSTRAINT `product_galleries_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
