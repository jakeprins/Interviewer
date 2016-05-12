print "Seeding standard categories... "


ruby = Category.create!(name: 'Ruby', description: "Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.")
javascript = Category.create!(name: 'JavaScript', description: "JavaScript is a high-level, dynamic, untyped, and interpreted programming language. Alongside HTML and CSS, it is one of the three core technologies of World Wide Web content production. The majority of websites employ it and it is supported by all modern Web browsers without plug-ins.")
react = Category.create!(name: 'React', description: "React is an open-source JavaScript library providing a view for data rendered as HTML. React views are typically rendered using components that contain additional components specified as custom HTML tags. React promises programmers a model in which subcomponents cannot directly affect enclosing components, efficient updating of the HTML document when data changes, and a clean separation between components on a modern single-page application.")
html = Category.create!(name: 'HTML', description: "HyperText Markup Language, commonly abbreviated as HTML, is the standard markup language used to create web pages. Along with CSS, and JavaScript, HTML is a cornerstone technology used to create web pages, as well as to create user interfaces for mobile and web applications. Web browsers can read HTML files and render them into visible or audible web pages.")

puts "seeded #{Category.count} categories!"

print "Seeding some questions... "

Question.create!(question: "What is an object?", answer: "An object is an instance of a class and has state, behavior, and identity. In a plain text example, you can say that a truck and a car are both objects of the class Vehicle, or that apple and pear are both objects of the class Fruit.", category: ruby)
Question.create!(question: "Explain MVC.", answer: "MVC stands for Models, Views and Controllers. Controllers do the work of parsing user requests, data submissions, cookies, sessions and the “browser stuff”. They’re the pointy-haired manager that orders employees around. The best controller is Dilbert-esque: It gives orders without knowing (or caring) how it gets done.
Models are Ruby classes. They talk to the database, store and validate data, perform the business logic and otherwise do the heavy lifting. They’re the chubby guy in the back room crunching the numbers.
Views are what the user sees: HTML, CSS, XML, Javascript, JSON. They’re the sales rep putting up flyers and collecting surveys, at the manager’s direction. Views are merely puppets reading what the controller gives them. They don’t know what happens in the back room.", category: ruby)
Question.create!(question: "What is a join table?", answer: "Join tables bridge the relationship between two resources that both have many of the other. If one resource has_many and the other belongs_to, you don’t need a join table, because it can be mapped out in two tables no problem. When they both has_many of each other, you need a third table because it creates a third dimension.
", category: ruby)
Question.create!(question: "What is a class?", answer: "A text-book answer: classes are a blue-print for constructing computer models for real or virtual objects... boring.
In reality: classes hold data, have methods that interact with that data, and are used to instantiate objects.", category: ruby)
Question.create!(question: "What are Ruby Gems?", answer: "Ruby Gem is a software package, commonly called a “gem”. Gem contains a packaged Ruby application or library. The Ruby Gems software itself allows you to easily download, install and manipulate gems on your system.", category: ruby)
Question.create!(question: "Can you tell me the three levels of method access control for classes and modules? What do they imply about the method?", answer: "All methods, no matter the access control, can be accessed within the class. But what about outside callers?
Public methods enforce no access control -- they can be called in any scope.
Protected methods are only accessible to other objects of the same class.
Private methods are only accessible within the context of the current object.", category: ruby)
Question.create!(question: "How does a symbol differ from a string?", answer: "Symbols are immutable and reusable, retaining the same object_id.", category: ruby)
Question.create!(question: "Can you name some things that we can define in the model?", answer: "There are lot of things you can define in models few are:
1. Validations
2. Relationships
3. Callbacks
4. Suppose you installed a plugin say validation_group, you can also define validation_group settings in your model
5. ROR Queries in Sql", category: ruby)
Question.create!(question: "How would you declare and use a constructor in Ruby?", answer: "Constructors are declared via the initialize method and get called when you call on a new object to be created.", category: ruby)
Question.create!(question: "Explain some of the looping structures available in Ruby?", answer: "The for loop is a little bit different from other programming languages. Basically, it let's you iterate over a series of 'words' within a string.
But in Ruby, the preferred way of doing a for-type of loop is to instead use the each method.
The while executes a piece of code if the control expression is true, and only stops when it is false (or a explicit break is found within the executed code.
The until loop is almost equal to the while loop, except that the code is executed while the control expression evaluates to false.
If you suspect that while and until are very similar you are right.", category: ruby)
Question.create!(question: "What is a Proc?", answer: "Procs, short for procedures, act similar to blocks, but can be saved as variables and reused. Think of them as blocks you can call over and over again on multiple arrays.", category: ruby)
Question.create!(question: "What is a lambda?", answer: "Lambdas are very similar to procs in terms of functionality. However, they have a few key differences. Lambdas check the number of arguments passed and will return an error if you try to pass the wrong number (while procs set extra variables to nil). The other difference is that lambdas can handle a return function, whereas procs will return an error.", category: ruby)
Question.create!(question: "What are the three levels of method access control for classes and what do they signify? What do they imply about the method?", answer: "Public, protected, and private.
Public methods can be called by all objects and subclasses of the class in which they are defined in.
Protected methods are only accessible to objects within the same class.
Private methods are only accessible within the same instance.", category: ruby)

Question.create!(question: "Can you name some of the various datatypes in javascript?", answer: "Number, String, Boolean, Function, Object, Null, Undefined", category: javascript)
Question.create!(question: "What is the difference between “==” and “===”?", answer: "While “==” checks only for equality, “===” checks for equality as well as the type.", category: javascript)
Question.create!(question: 'What does "1"+2+4 evaluate to?', answer: "Since 1 is a string, everything is a string, so the result is 124.", category: javascript)
Question.create!(question: "How many looping structures can you find in javascript?", answer: "If you are a programmer, you know the use of loops. It is used to run a piece of code multiple times according to some particular condition. Javascript being a popular scripting language supports the following loops: for, while and do-while loop", category: javascript)
Question.create!(question: "What is this keyword?", answer: "It refers to the current object.", category: javascript)

Question.create!(question: "What is HTML?", answer: "HTML stands for HyperText Markup Language. It is the dominant markup language for creating websites and anything that can be viewed in a web browser.", category: html)
Question.create!(question: "What does DOCTYPE mean?", answer: "The term DOCTYPE tells the browser which type of HTML is used on a webpage. In turn, the browsers use DOCTYPE to determine how to render a page.", category: html)
Question.create!(question: "How do you make comments without text being picked up by the browser?", answer: "Comments are used to explain and clarify code or to prevent code from being recognized by the browser. Comments start with “*<!--” and end with ” -->“.", category: html)
Question.create!(question: "My hyperlink or image is not displaying correctly, what could be wrong with it?", answer: "It could be any number of things, but the most common mistakes are leaving out a tag bracket or quote missing for href, src, or alt text may be the issue. You should also verify the link itself.", category: html)
Question.create!(question: "What is the syntax difference between a bulleted list and numbered list?", answer: "Bulleted lists use the <ul> tag, which stands for “unordered,” whereas <ol> is used to create an ordered list.", category: html)
Question.create!(question: "Describe the difference between cookies, sessionStorage, and localStorage.", answer: "Cookies are small text files that websites place in a browser for tracking or login purposes. Meanwhile, localStorage and sessionStorage are new objects, both of which are storage specifications but vary in scope and duration. Of the two, localStorage is permanent and website-specific whereas sessionStorage only lasts as long as the duration of the longest open tab.", category: html)

Question.create!(question: "ReactJS is developed by _____?", answer: "Facebook Engineers", category: react)
Question.create!(question: "Is ReactJS an MVC based framework?", answer: "Nope", category: react)
Question.create!(question: "ReactJS focuses on which of part when considering MVC?", answer: "V (View)", category: react)
Question.create!(question: "What is used to pass the data from parent to child", answer: "props", category: react)
Question.create!(question: "One can define default values for properties, props, using which of method?", answer: "getDefaultProps", category: react)
Question.create!(question: "The default value of input field could be set using which attribute?", answer: "defaultValue", category: react)


puts "seeded #{Question.count} questions!"
