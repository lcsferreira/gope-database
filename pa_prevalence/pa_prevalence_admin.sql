CREATE TABLE `pa_prevalence_admin` (
  `id_country` int(11) NOT NULL,
  `boys_age_percent` float DEFAULT NULL,
  `girls_age_percent` float DEFAULT NULL,
  `children_age_percent` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
