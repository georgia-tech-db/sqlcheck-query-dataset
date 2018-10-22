CREATE TABLE IF NOT EXISTS `cnae` ( `id_cnae` INT(16) NOT NULL AUTO_INCREMENT , `codigo_cnae` VARCHAR(16) NOT NULL , `desc_cnae` TEXT NOT NULL , PRIMARY KEY (`id_cnae`) )
CREATE TABLE IF NOT EXISTS `ncm` ( `id_ncm` INT(16) NOT NULL AUTO_INCREMENT , `cod_ncm` VARCHAR(8) NOT NULL , `nome_ncm` VARCHAR(128) NOT NULL , PRIMARY KEY (`id_ncm`) )
CREATE TABLE `tabelacest` ( `codigo_tbc` int(11) NOT NULL auto_increment COMMENT 'Chave Primaria Auto-Incremento', `legal_tbc` int(11) NOT NULL COMMENT 'Código do CEST', `ncm_tbc` int(11) NOT NULL COMMENT 'Código do NCM', `descricao_tbc` varchar(300) NOT NULL COMMENT 'Descrição do CEST', PRIMARY KEY (`codigo_tbc`), KEY `ncm_tbc` (`ncm_tbc`))
CREATE TABLE IF NOT EXISTS `ipi` ( `id_ipi` INT(16) NOT NULL AUTO_INCREMENT , `codigo_ipi` VARCHAR(16) NOT NULL , `desc_ipi` TEXT NOT NULL , PRIMARY KEY (`id_ipi`) )
CREATE TABLE IF NOT EXISTS `icms_modalidade_st` ( `id_icms_modalidade_st` int(16) NOT NULL AUTO_INCREMENT, `codigo_icms_modalidade_st` varchar(16) NOT NULL, `desc_icms_modalidade_st` varchar(128) NOT NULL, PRIMARY KEY (`id_icms_modalidade_st`))
CREATE TABLE IF NOT EXISTS `icms_origem` ( `id_icms_origem` int(16) NOT NULL AUTO_INCREMENT, `codigo_icms_origem` varchar(16) NOT NULL, `desc_icms_origem` varchar(128) NOT NULL, PRIMARY KEY (`id_icms_origem`))
CREATE TABLE IF NOT EXISTS `icms_desoneracao` ( `id_icms_desoneracao` int(16) NOT NULL AUTO_INCREMENT, `codigo_icms_desoneracao` varchar(16) NOT NULL, `desc_icms_desoneracao` varchar(128) NOT NULL, PRIMARY KEY (`id_icms_desoneracao`))
CREATE TABLE IF NOT EXISTS `ipi_operacao` ( `id_ipi_operacao` INT(16) NOT NULL AUTO_INCREMENT , `nome_ipi_operacao` VARCHAR(64) NOT NULL , PRIMARY KEY (`id_ipi_operacao`) )
CREATE TABLE IF NOT EXISTS `csosn` ( `id_csosn` int(16) NOT NULL AUTO_INCREMENT, `codigo_csosn` varchar(4) NOT NULL, `nome_csosn` varchar(128) NOT NULL, `desc_csosn` text, PRIMARY KEY (`id_csosn`))
CREATE TABLE IF NOT EXISTS `icms` ( `id_icms` INT(16) NOT NULL AUTO_INCREMENT , `codigo_icms` VARCHAR(16) NOT NULL , `desc_icms` TEXT NOT NULL , PRIMARY KEY (`id_icms`) )
CREATE TABLE IF NOT EXISTS `ipi_enquadramento` ( `id_ipi_enquadramento` INT(16) NOT NULL AUTO_INCREMENT , `id_ipi_operacao` INT(16) NOT NULL , `codigo_ipi_enquadramento` VARCHAR(4) NOT NULL , `desc_ipi_enquadramento` TEXT NOT NULL , PRIMARY KEY (`id_ipi_enquadramento`) , INDEX `fk_ipi_enquadramento_ipi_operacao1_idx` (`id_ipi_operacao` ASC) , CONSTRAINT `fk_ipi_enquadramento_ipi_operacao1` FOREIGN KEY (`id_ipi_operacao` ) REFERENCES `ipi_operacao` (`id_ipi_operacao` ) ON DELETE CASCADE ON UPDATE CASCADE)
CREATE TABLE IF NOT EXISTS `icms_modalidade_bc` ( `id_icms_modalidade_bc` int(16) NOT NULL AUTO_INCREMENT, `codigo_icms_modalidade_bc` varchar(16) NOT NULL, `desc_icms_modalidade_bc` varchar(128) NOT NULL, PRIMARY KEY (`id_icms_modalidade_bc`))
CREATE TABLE IF NOT EXISTS `pis` ( `id_pis` INT(16) NOT NULL AUTO_INCREMENT , `codigo_pis` VARCHAR(16) NOT NULL , `desc_pis` TEXT NOT NULL , PRIMARY KEY (`id_pis`) )
