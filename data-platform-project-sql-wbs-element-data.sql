CREATE TABLE `data_platform_project_wbs_element_data`
(
	`Project`		                 int(16) NOT NULL,
	`WBSElement`			         int(8) NOT NULL,
	`WBSElementCode`	             varchar(24) DEFAULT NULL,
	`WBSDescription`                 varchar(200) DEFAULT NULL,
	`ResponsiblePerson`              int(12) DEFAULT NULL,
	`ResponsiblePersonName`          varchar(100) DEFAULT NULL,
	`BusinessPartner`		         int(12) DEFAULT NULL,
 	`Plant`                          varchar(4) DEFAULT NULL,
	`CreationDate`                   date DEFAULT NULL,
	`LastChangeDate`                 date DEFAULT NULL,
	`PlannedStartDate`               date DEFAULT NULL,
	`PlannedEndDate`                 date DEFAULT NULL,
	`ActualStartDate`                date DEFAULT NULL,
	`ActualEndDate`                  date DEFAULT NULL,
 	`IsMarkedForDeletion`            tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Project`, `WBSElement`),
	
    CONSTRAINT `DPFMProjectWBSElementData_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMProjectWBSElementDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

)ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
