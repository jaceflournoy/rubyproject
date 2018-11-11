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
	
