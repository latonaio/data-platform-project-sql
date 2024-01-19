CREATE TABLE `data_platform_project_project_data`
(
	`Project`		                int(16) NOT NULL,
	`ProjectCode`	                varchar(24) NOT NULL,
	`ProjectDescription`            varchar(200) NOT NULL,
	`OwnerBusinessPartner`		    int(12) NOT NULL,
	`OwnerPlant`                    varchar(4) NOT NULL,
	`ProjectProfile`	            varchar(7) DEFAULT NULL,
	`ResponsiblePerson`             int(20) DEFAULT NULL,
	`ResponsiblePersonName`         varchar(100) DEFAULT NULL,
	`PlannedStartDate`              date DEFAULT NULL,
	`PlannedEndDate`                date DEFAULT NULL,
	`ActualStartDate`               date DEFAULT NULL,
	`ActualEndDate`                 date DEFAULT NULL,
	`CreationDate`                  date NOT NULL,
	`LastChangeDate`                date NOT NULL,
	`IsMarkedForDeletion`			tinyint(1) DEFAULT NULL,

	PRIMARY KEY (`Project`),

	CONSTRAINT `DataPlatformProjectProjectDataOwnerBusinessPartner_fk` FOREIGN KEY (`OwnerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
	CONSTRAINT `DataPlatformProjectProjectDataOwnerPlant_fk` FOREIGN KEY (`OwnerBusinessPartner`, `OwnerPlant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
