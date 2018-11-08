# README

Scaffold:

	Car:
		VIN:string
		color:string
		model:string
		make:string
		WholesalePrice:decimal
		Vehicle Image // Add Later

	Customer:
		FirstName:String
		LastName:String
		PhoneNumber:String


	Employees:
		FirstName:String
		LastName:String
		Role:references - Create a drop down when selecting it

	Role:
		Name:String

	Quote:
		TotalPrice:decimal
		Multiplier:decimal
		Customer:references //Reference from customer
		Employee:references //Reference from Employee
		Sold:Boolean
		Car:references //Reference from Car
		Loan:references //Reference from Loan
		Wholesale Price
		
	Loan:
		Type:integer
		InterestRate:decimal
