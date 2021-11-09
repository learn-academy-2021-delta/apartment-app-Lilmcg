# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

apartments = [
  {
    street: '54 Ocean Avenue',
    city: 'SD',
    state: 'CA',
    manager: 'Fred',
    email: 'fred@testing.com',
    price: '1200',
    bedrooms: 2,
    bathrooms: 2,
    pets: 'no cats'
  },
  {
    street: '789 Circle Street',
    city: 'SD',
    state: 'CA',
    manager: 'Bonnie',
    email: 'bonnie@testing.com',
    price: '1100',
    bedrooms: 1,
    bathrooms: 1,
    pets: 'all pets welcome'
  },
  {
    street: '12 Avocado Street',
    city: 'SD',
    state: 'CA',
    manager: 'George',
    email: 'george@testing.com',
    price: '1300',
    bedrooms: 2,
    bathrooms: 3,
    pets: 'all pets welcome'
  },
  {
    street: '469 Sunshine Street',
    city: 'SD',
    state: 'CA',
    manager: 'Ralph',
    email: 'ralph@testing.com',
    price: '1300',
    bedrooms: 2,
    bathrooms: 3,
    pets: 'no cats or dogs'
  },
]

first_user = User.first

apartments.each do |attribute|
  first_user.apartments.create attribute
end