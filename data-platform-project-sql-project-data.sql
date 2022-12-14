CREATE TABLE `data_platform_project_project_data`
(
	`Project`			            varchar(24) NOT NULL,
	`OwnerBusinessPartner`          int(12) DEFAULT NULL,
	`ProjectDescription`            varchar(200) DEFAULT NULL,
	`ProjectProfileCode`            varchar(7) DEFAULT NULL,
	`PlannedStartDate`              date DEFAULT NULL,
	`PlannedEndDate`                date DEFAULT NULL,
	`ResponsiblePerson`             int(12) DEFAULT NULL,
	`ResponsiblePersonName`         varchar(100) DEFAULT NULL,
	`CreationDate`                  date DEFAULT NULL,
	`LastChangeDate`                date DEFAULT NULL,
	`BasicDatesLastScheduledDate`   date DEFAULT NULL,
	`FcstdDatesLastScheduledDate`   date DEFAULT NULL,
	`ForecastedStartDate`           date DEFAULT NULL,
	`ForecastedEndDate`             date DEFAULT NULL,
	`PlantBusinessPartner`          int(12) DEFAULT NULL,
	`Plant`                         varchar(4) DEFAULT NULL,
	`Currency`                      varchar(5) DEFAULT NULL,
	`Language`                      varchar(2) DEFAULT NULL,

	PRIMARY KEY (`Project`),

	CONSTRAINT `DataPlatformProjectProjectDataOwnerBusinessPartner_fk` FOREIGN KEY (`OwnerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
	CONSTRAINT `DataPlatformProjectProjectDataPlant_fk` FOREIGN KEY (`PlantBusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`),
	CONSTRAINT `DataPlatformProjectProjectDataCurrency_fk` FOREIGN KEY (`Currency`) REFERENCES `data_platform_currency_currency_data` (`Currency`),
	CONSTRAINT `DataPlatformProjectProjectDataLanguage_fk` FOREIGN KEY (`Language`) REFERENCES `data_platform_language_language_data` (`Language`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
