users = ["John", "Paul", "Adam"]
user_models = []
categories = ["Work", "Family", "Personal"]
category_models = []

users.each { |user|
  user_models.push(User.create!(name: user))
}

categories.each { |category|
  category_models.push(Category.create(name: category))
}

TodoItem.create!(title: "Go back to the gym", category: category_models[2], user: user_models[0] )
TodoItem.create!(title: "Go to the doctor", category: category_models[2], user: user_models[1])
TodoItem.create!(title: "Form 32B", category: category_models[0], user: user_models[2])
TodoItem.create!(title: "Give back Milton's stapler", category: category_models[0], user: user_models[2])
TodoItem.create!(title: "Buy Mother's birthday gift", category: category_models[1], user: user_models[1])
TodoItem.create!(title: "Buy coffee", category: category_models[1], user: user_models[0])