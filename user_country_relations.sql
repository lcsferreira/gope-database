CREATE TABLE `user_country_relations` (
  `id_user` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `is_main` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;