# phase-4-week-1-code-challenge
This is an an API for tracking pizzas restaurants.

## Deployed Application 

This is application has been deployed on render and is available through the following link:
-

## Application usage
### Dependancies
For the appication to work  the following must be installed on your local machine:
- ruby 
- bundler 
- ruby on rails
### Usage
After ensuring that the dependancies are installed and working,follow these steps to get the appliction up and running:
- fork and clone this repository into your local machine
- open a terminal session in the directory where the app is contained and run the command: **bundle install** 
- after the gems are installs run the command **rails server**
- follow the generated link to access the application
- the application can also  be accessed in a console from the terminal by running **rails console**
### Installation
To install and use this API, follow these steps:
1. Clone the repository
   git clone https://github.com/maqiie/pizzas
2. install the dependencies and
   bundle install
3. Set up the database:
   rails db:migrate
   rails db:seed
4. Start the server
   rails server
Once the server is up and runnning, you should be able to access the API at `https://localhost:3000`.
### Models
- This API has the following models:
#### Restaurant
- A `Restaurant` has many `pizza`s through `RestaurantPizza`
Attributes:
- `name`:string
- `ingredients`:string
#### RestaurantPizza
A `RestaurantPizza` belongs to a `Restaurant` and belongs to a `pizza`.
Attributes:
- `price`:integer
#### Validations
The `RestaurantPizza` model has a validation for the `price` attribute, which must be between 1 and 30.
#### Routes
- This API has the following routes:
# GET/restaurants
- Returns a list of all restaurants
example response:
[ { "id": 1, "name": "Sottocasa NYC", "address": "298 Atlantic Ave, Brooklyn, NY 11201" }, { "id": 2, "name": "PizzArte", "address": "69 W 55th St, New York, NY 10019" }]
## GET/restaurants/:id
- Returns the details of a restaurant, including the pizzas it serves.
- Example response
{
"id": 1,
"name": "Sottocasa NYC",
"address": "298 Atlantic Ave, Brooklyn, NY 11201",
"pizzas": [
{
"id": 1,
"name": "Cheese",
"ingredients": "Dough, Tomato Sauce, Cheese"
},
{
"id": 2,
"name": "Pepperoni",
"ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni"
}
]
}
#### DELETE/restaurants/:id
-Deletes a restaurant and all of its associated restaurant pizzas.
- Returns an empty response body.

#### POST/restaurant_pizzas
- Creates a new restaurant pizza associated with an existing restaurant and pizza.
- Example request body:
{
"price": 5
}
## Development and Status

This application was developed using the following technologies:
-  [Ruby](https://www.ruby-lang.org/en/)
-  [Ruby on Rails](https://rubyonrails.org/)

Status: Maintained

## Author and Licence

Author:[markpaul](https://github.com/maqiie)

Licence: MIT Licence