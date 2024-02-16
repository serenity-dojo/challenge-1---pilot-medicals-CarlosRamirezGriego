Scenario Outline: Medical Certificate has different expiration time depending the Pilot Class and Age
	Given that the Pilot has the following <ClassType> and <Age> 
	When the pilot gets a new certificate on this date
	| Date |
	|  Jan 01 2023  |
	|  Jan 30 2023  |
	|  Jan 31 2023  |
	Then the certificate should expire on <ExpireDate>
	
	Examples: How the expire date depends on the Class and Age
	| ClassType |  Age | ExpireDate  |
	| Class 1   | <40  | Dec 31 2023 |
	| Class 1   | >=40 | Jun 30 2023 |
	| Class 2   | <40  | Dec 31 2024 |
	| Class 2   | >=40 | Dec 31 2024 |
	| Class 3   | <40  | Dec 31 2028 | 
	| Class 3   | >=40 | Dec 31 2025 | 
