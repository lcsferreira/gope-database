ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID` (`id`),
  ADD UNIQUE KEY `ID_2` (`id`);

--
-- Índices de tabela `demographic_data_admin`
--
ALTER TABLE `demographic_data_admin`
  ADD PRIMARY KEY (`id_country`);

--
-- Índices de tabela `demographic_data_agreement`
--
ALTER TABLE `demographic_data_agreement`
  ADD PRIMARY KEY (`id_country`);

--
-- Índices de tabela `demographic_data_comments_admin`
--
ALTER TABLE `demographic_data_comments_admin`
  ADD PRIMARY KEY (`id_country`);

--
-- Índices de tabela `demographic_data_comments_contact`
--
ALTER TABLE `demographic_data_comments_contact`
  ADD PRIMARY KEY (`id_country`);

--
-- Índices de tabela `demographic_data_contact`
--
ALTER TABLE `demographic_data_contact`
  ADD PRIMARY KEY (`id_country`);

--
-- Índices de tabela `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_country`,`table_name`,`col_name`,`inc`);

--
-- Índices de tabela `pa_prevalence_admin`
--
ALTER TABLE `pa_prevalence_admin`
  ADD PRIMARY KEY (`id_country`);

--
-- Índices de tabela `pa_prevalence_contact`
--
ALTER TABLE `pa_prevalence_contact`
  ADD PRIMARY KEY (`id_country`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ID` (`id`);

--
-- Índices de tabela `user_country_relations`
--
ALTER TABLE `user_country_relations`
  ADD PRIMARY KEY (`id_user`,`id_country`),
  ADD KEY `id_country` (`id_country`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `demographic_data_admin`
--
ALTER TABLE `demographic_data_admin`
  ADD CONSTRAINT `demographic_data_admin_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `demographic_data_agreement`
--
ALTER TABLE `demographic_data_agreement`
  ADD CONSTRAINT `demographic_data_agreement_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `demographic_data_comments_admin`
--
ALTER TABLE `demographic_data_comments_admin`
  ADD CONSTRAINT `demographic_data_comments_admin_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `demographic_data_comments_contact`
--
ALTER TABLE `demographic_data_comments_contact`
  ADD CONSTRAINT `demographic_data_comments_contact_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `demographic_data_contact`
--
ALTER TABLE `demographic_data_contact`
  ADD CONSTRAINT `demographic_data_contact_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `documents`
--
ALTER TABLE `documents`
  ADD CONSTRAINT `documents_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `pa_prevalence_admin`
--
ALTER TABLE `pa_prevalence_admin`
  ADD CONSTRAINT `pa_prevalence_admin_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `user_country_relations`
--
ALTER TABLE `user_country_relations`
  ADD CONSTRAINT `user_country_relations_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_country_relations_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
