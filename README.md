# README


Known Bugs:

    When logged in:
    - If you delete the account you're logged in as, the app crashes 
    because it kind find the session ID. A temporary fix for this is to restart the application
    and clear your browser cache.
    
    When adding a new car:
    - If you don't insert every field when adding a new car, the code used to insert
    an image breaks and you won't be able to load cars. You can fix by temporarily removing
    the image code on the cars index page and then refreshing and deleting the record causing
    problems
    



Scaffold:

	Car:
		VIN:string
		color:string
		make:string
		model:string
		WholesalePrice:decimal
		Vehicle Image // Add Later

	Customer:
		FirstName:String
		LastName:String
		PhoneNumber:String

	Role:
		Name:String

	Employee:
		FirstName:String
		LastName:String
		Role:references - Create a drop down when selecting it

	Loan:
		Type:integer
		InterestRate:decimal

	Quote:
		TotalPrice:decimal
		Multiplier:decimal
		Customer:references //Reference from customer
		Employee:references //Reference from Employee
		Sold:Boolean
		Car:references //Reference from Car
		Loan:references //Reference from Loan
		Wholesale Price
		
		
New Branch List:
Feature Branches:

	Login (complete)
	Authorization (complete)
	Image capability (complete)
	Roles/Permissions (need to finish)
	Search functionality
	Get dropdowns working of each table
	PDF compatibility for Quote table
	add math to Loan and Quote tables
	Add Dealership page / Sales Page
	
