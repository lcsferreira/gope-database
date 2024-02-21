CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `institution` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
