CREATE TABLE `data_platform_project_network_data`
(
	`Project`		                 int(16) NOT NULL,
	`WBSElement`			         int(8) NOT NULL,
	`Network`    			         int(4) NOT NULL,
	`NetworkDescription`             varchar(200) DEFAULT NULL,
	`BusinessPartner`		         int(12) NOT NULL,
 	`Plant`                          varchar(4) NOT NULL,
	`ResponsiblePerson`              int(20) DEFAULT NULL,
	`ResponsiblePersonName`          varchar(100) DEFAULT NULL,
	`PlannedStartDate`               date DEFAULT NULL,
	`PlannedEndDate`                 date DEFAULT NULL,
	`ActualStartDate`                date DEFAULT NULL,
	`ActualEndDate`                  date DEFAULT NULL,
	`CreationDate`                   date NOT NULL,
	`CreationTime`                   time NOT NULL,
	`LastChangeDate`                 date NOT NULL,
	`LastChangeTime`                 time NOT NULL,
    `IsReleased`   		  	         tinyint(1) DEFAULT NULL,
    `IsLocked`                       tinyint(1) DEFAULT NULL,
    `IsCancelled`                    tinyint(1) DEFAULT NULL,
	`IsMarkedForDeletion`			 tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Project`, `WBSElement`, `Network`),
	
    CONSTRAINT `DPFMProjectNetworkData_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMProjectNetworkDataPlant_fk` FOREIGN KEY (`BusinessPartner`, `Plant`) REFERENCES `data_platform_plant_general_data` (`BusinessPartner`, `Plant`)

)ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
