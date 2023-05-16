CREATE TABLE `data_platform_project_project_data`
(
	`Project`		                int(16) NOT NULL,
	`ProjectCode`	                varchar(24) NOT NULL,
	`OwnerBusinessPartner`          int(12) DEFAULT NULL,
	`ProjectDescription`            varchar(200) DEFAULT NULL,
	`ProjectProfile`	            varchar(7) DEFAULT NULL,
	`PlannedStartDate`              date DEFAULT NULL,
	`PlannedEndDate`                date DEFAULT NULL,
	`ActualStartDate`               date DEFAULT NULL,
	`ActualEndDate`                 date DEFAULT NULL,
	`ResponsiblePerson`             int(12) DEFAULT NULL,
	`ResponsiblePersonName`         varchar(100) DEFAULT NULL,
	`CreationDate`                  date DEFAULT NULL,
	`LastChangeDate`                date DEFAULT NULL,
	`PlantBusinessPartner`          int(12) DEFAULT NULL,
	`Plant`                         varchar(4) DEFAULT NULL,

	PRIMARY KEY (`Project`),

	CONSTRAINT `DataPlatformProjectProjectDataOwnerBusinessPartner_fk` FOREIGN KEY (`OwnerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
	CONSTRAINT `DataPlatformProjectProjectDataPlant_fk` FOREIGN KEY (`PlantBusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
