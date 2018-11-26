# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.create([
    {
        vin: "1GCHK29285E276790",
        color: "Red",
        make: "Volkswagen",
        model: "Beetle",
        wholesaleprice: 20895,
        created_at: DateTime.now,
        updated_at: DateTime.now
    },
    {
        vin: "4M2ZU86P81UJ01788",
        color: "Blue",
        make: "Tesla",
        model: "Model 3",
        wholesaleprice: 46000,
        created_at: DateTime.now,
        updated_at: DateTime.now
    },
    {
        vin: "1D4GP25R93B258266",
        color: "Black",
        make: "Volkswagen",
        model: "GTI",
        wholesaleprice: 26415,
        created_at: DateTime.now,
        updated_at: DateTime.now
    },
    {
        vin: "5N1AR18B28C611174",
        color: "Purple",
        make: "Cadillac",
        model: "El Dorado",
        wholesaleprice: 16500,
        created_at: DateTime.now,
        updated_at: DateTime.now
    },
    {
        vin: "1N4AZ0CP2DC417195",
        color: "Sad",
        make: "Truong",
        model: "MiniVan",
        wholesaleprice: 999,
        created_at: DateTime.now,
        updated_at: DateTime.now
    },

           ])















p "Created a total of #{Car.count} entries."