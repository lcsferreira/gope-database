CREATE TABLE `demographic_data_contact` (
  `id_country` int(11) NOT NULL,
  `es_changed` tinyint(1) NOT NULL DEFAULT 0,
  `world_region` varchar(255) DEFAULT NULL,
  `income_classification` varchar(255) DEFAULT NULL,
  `total_population` int(11) DEFAULT NULL,
  `literacy_youth_total` float DEFAULT NULL,
  `gov_expenditure_education` float DEFAULT NULL,
  `entrance_age_pe` int(11) DEFAULT NULL,
  `entrance_age_se` int(11) DEFAULT NULL,
  `duration_pe` int(11) DEFAULT NULL,
  `duration_se` int(11) DEFAULT NULL,
  `duration_ce` int(11) DEFAULT NULL,
  `school_age_pe` int(11) DEFAULT NULL,
  `school_age_se` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;