CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `need_translation` tinyint(1) NOT NULL,
  `indicators_step` varchar(255) NOT NULL DEFAULT 'not started',
  `translation_step` varchar(255) DEFAULT 'not started',
  `card_english_step` varchar(255) NOT NULL DEFAULT 'not started',
  `card_translated_step` varchar(255) DEFAULT 'not started'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;