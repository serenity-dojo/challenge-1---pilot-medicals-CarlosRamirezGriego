Scenario Outline: Pilots Class status is updated when their Medical Certificate expires
	Given that the Pilot has this <ClassType> and <Age>
	When the Pilot medical certificate expires
	Then the Pilot Class is updated to <Type>
	And the Pilot Certificate expires in <Date>
	
	Examples: How the Class changes depending the date their Medical Certificate expires
	| ClassType| Age  |  Type   |   Date    |
	| Class 1  | <40  | Class 3 | 4 years   |
	| Class 1  | >=40 | Class 2 | 6 months  |
	| Class 2  | <40  | Class 3 | 4 years   |
	| Class 2  | >=40 | Class 3 | 12 months |
	| Class 3  | <40  | Invalid | Expired   |
	| Class 3  | >=40 | Invalid | Expired   |
	

Scenario Outline: Pilot Certificate expire date changes if the Pilot turns 40
	Given that the Pilot has this <Class>
	And the Pilot had the Medical certificate was obtained <Time> ago
	When the Pilot turns 40
	Then the Pilot Medical Certificate expires on <ExpireTime>
	
	Examples: When the user turns 40, the Medical Certificate expire date is updated
	| Class   |  Time     | ExpireTime |
	| Class 1 | 1 month   | 5 months   |
	| Class 1 | 5 months  | 1 months   |
	| Class 1 | 6 months  | now        |
	| Class 1 | 11 months | now        |
	| Class 1 | 12 months | now        |
	| Class 3 | 1 month   | 23 months  |
	| Class 3 | 23 months | 1 months   | 
	| Class 3 | 24 months | now        | 
	| Class 3 | 25 months | now        | 
	| Class 3 | 60 months | now        | 
	