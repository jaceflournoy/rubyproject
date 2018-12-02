# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
c1 = Car.create(vin: "1GCHK29285E276790", color: "Red", make: "Volkswagen", model: "Beetle", wholesaleprice: 20895,
                created_at: DateTime.now, updated_at: DateTime.now)
c1.image.attach(io: File.open('app/assets/images/inception images/beetle.jpg'), filename: 'beetle.jpg', content_type: 'image/jpg')

c2 = Car.create(vin: "4M2ZU86P81UJ01788", color: "Blue", make: "Tesla", model: "Model 3", wholesaleprice: 46000,
                created_at: DateTime.now, updated_at: DateTime.now)
c2.image.attach(io: File.open('app/assets/images/inception images/tesla3.jpg'), filename: 'tesla3.jpg', content_type: 'image/jpg')

c3 = Car.create(vin: "1D4GP25R93B258266", color: "Black", make: "Volkswagen", model: "GTI", wholesaleprice: 26415,
                created_at: DateTime.now, updated_at: DateTime.now)
c3.image.attach(io: File.open('app/assets/images/inception images/gti.jpg'), filename: 'gti.jpg', content_type: 'image/jpg')

c4 = Car.create(vin: "5N1AR18B28C611174", color: "Purple", make: "Cadillac", model: "El Dorado", wholesaleprice: 16500,
                created_at: DateTime.now, updated_at: DateTime.now)
c4.image.attach(io: File.open('app/assets/images/inception images/cadi.jpg'), filename: 'cadi.jpg', content_type: 'image/jpg')

c5 = Car.create(vin: "1N4AZ0CP2DC417195", color: "White", make: "Volkswagen", model: "Van", wholesaleprice: 56999,
                created_at: DateTime.now, updated_at: DateTime.now)
c5.image.attach(io: File.open('app/assets/images/inception images/minivan.jpg'), filename: 'minivan.jpg', content_type: 'image/jpg')


Customer.create(firstname: 'John', lastname: 'Freeman', phonenumber: '918-869-1074', created_at: DateTime.now, updated_at: DateTime.now)
Customer.create(firstname: 'Charles', lastname: 'Smith', phonenumber: '586-912-5526', created_at: DateTime.now, updated_at: DateTime.now)
Customer.create(firstname: 'James', lastname: 'Odegaard', phonenumber: '213-447-3945', created_at: DateTime.now, updated_at: DateTime.now)
Customer.create(firstname: 'Fumiko', lastname: 'Freeman', phonenumber: '313-358-5206', created_at: DateTime.now, updated_at: DateTime.now)
Customer.create(firstname: 'Ina', lastname: 'Oneal', phonenumber: '806-896-4217', created_at: DateTime.now, updated_at: DateTime.now)

User.create(firstname: 'Jace', lastname: 'Flournoy', email:'admin@compasscars.com', password: 'demo', role: 'admin')
User.create(firstname: 'Troy', lastname: 'Amundsen', email:'dealershipowner@compasscars.com', password: 'demo', role: 'dealership_owner')
User.create(firstname: 'Elsie', lastname: 'West', email:'salesmanager@compasscars.com', password: 'demo', role: 'sales_manager')
User.create(firstname: 'Tina', lastname: 'Garduno', email:'financemanager@compasscars.com', password: 'demo', role: 'finance_manager')
User.create(firstname: 'Linda', lastname: 'Drake', email:'inventorymanager@compasscars.com', password: 'demo', role: 'inventory_manager')
User.create(firstname: 'Daryl', lastname: 'Martin', email:'salesperson@compasscars.com', password: 'demo', role: 'sales_person')

Loan.create(loanname: '3 Year', year: 3, interestrate: 0.023)
Loan.create(loanname: '4 Year', year: 4, interestrate: 0.035)
Loan.create(loanname: '5 Year', year: 5, interestrate: 0.047)



p "Created a total of #{Car.count} Car entries."
p "Created a total of #{Customer.count} Customer entries."
p "Created a total of #{User.count} User entries."
p "Created a total of #{Loan.count} Loan entries."

