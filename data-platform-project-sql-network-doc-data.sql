CREATE TABLE `data_platform_project_network_doc_data`
(
  `Project`                        int(16) NOT NULL,
  `WBSElement`			           int(8) NOT NULL,
  `Network`    			           int(4) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`Project`, `WBSElement`, `Network`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DPFMProjectNetworkDocData_fk` FOREIGN KEY (`Project`, `WBSElement`, `Network`) REFERENCES `data_platform_project_network_data` (`Project`, `WBSElement`, `Network`),
    CONSTRAINT `DPFMProjectNetworkDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMProjectNetworkDocDataDocIssuerBusinessPartner_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
