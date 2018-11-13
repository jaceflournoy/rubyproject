# README

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
Get dropdowns working of each table
Add authorization & Add roles
add image compatibility on Car table
PDF compatibility for Quote table
add math to Loan and Quote tables
Add Dealership page / Sales Page
	
