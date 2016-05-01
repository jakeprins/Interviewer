print "Seeding standard categories... "


ruby = Category.create!(name: 'Ruby')
javascript = Category.create!(name: 'JavaScript')
react = Category.create!(name: 'React')
html = Category.create!(name: 'HTML')

puts "seeded #{Category.count} categories!"

print "Seeding some questions... "


Question.create!(question: "What is Ruby?", answer: "A great language", category: ruby)
Question.create!(question: "What is an Object?", answer: "All", category: ruby)
Question.create!(question: "What does .each mean?", answer: "A loop", category: ruby)

Question.create!(question: "What is JavaScript?", answer: "An okay language", category: javascript)

Question.create!(question: "What is HTML?", answer: "A basic language", category: html)
Question.create!(question: "What is HTML test?", answer: "A basic language test", category: html)

Question.create!(question: "What is React?", answer: "A nice language", category: react)

puts "seeded #{Question.count} games!"
