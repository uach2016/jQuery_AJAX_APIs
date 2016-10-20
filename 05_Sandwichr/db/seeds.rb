
ingredients = Ingredient.create([
  {name: "ham", calories: "50"},
  {name: "cheese", calories: "30"},
  {name: "olives", calories: "80"},
  {name: "tomato", calories: "150"},
  {name: "onion", calories: "40"}
  ])

sandwiches = Sandwich.create([
  {name: "Mixto", bread_type: "Bimbo" },
  {name: "Vegetal", bread_type: "Bimbo" },
  {name: "Jumbo", bread_type: "Barra" },
  {name: "Tiny", bread_type: "Spicy" }
])

mixto = Sandwich.first
ham = Ingredient.first
cheese = Ingredient.second
mixto.ingredients.push(ham)
mixto.ingredients.push(cheese)


vegetal = Sandwich.second
tomato = Ingredient.fourth
olives = Ingredient.third
vegetal.ingredients.push(cheese)
vegetal.ingredients.push(ham)
vegetal.ingredients.push(tomato)
vegetal.ingredients.push(olives)
