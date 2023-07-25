CREATE TABLE `data_platform_project_wbs_element_data`
(
	`Project`		                 int(16) NOT NULL,
	`WBSElement`			         int(8) NOT NULL,
	`WBSElementCode`	             varchar(24) NOT NULL,
	`WBSElementDescription`          varchar(200) NOT NULL,
	`BusinessPartner`		         int(12) NOT NULL,
 	`Plant`                          varchar(4) NOT NULL,
	`ResponsiblePerson`              int(20) DEFAULT NULL,
	`ResponsiblePersonName`          varchar(100) DEFAULT NULL,
	`PlannedStartDate`               date DEFAULT NULL,
	`PlannedEndDate`                 date DEFAULT NULL,
	`ActualStartDate`                date DEFAULT NULL,
	`ActualEndDate`                  date DEFAULT NULL,
	`CreationDate`                   date NOT NULL,
	`LastChangeDate`                 date NOT NULL,
	`IsMarkedForDeletion`			 tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Project`, `WBSElement`),
	
    CONSTRAINT `DPFMProjectWBSElementData_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMProjectWBSElementDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

)ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
