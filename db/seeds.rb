print "Seeding standard categories... "


ruby = Category.create!(name: 'Ruby', description: "Ruby is a dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.")
javascript = Category.create!(name: 'JavaScript', description: "JavaScript is a high-level, dynamic, untyped, and interpreted programming language. It has been standardized in the ECMAScript language specification. Alongside HTML and CSS, it is one of the three core technologies of World Wide Web content production; the majority of websites employ it and it is supported by all modern Web browsers without plug-ins.")
react = Category.create!(name: 'React', description: "React is an open-source JavaScript library providing a view for data rendered as HTML. React views are typically rendered using components that contain additional components specified as custom HTML tags. React promises programmers a model in which subcomponents cannot directly affect enclosing components, efficient updating of the HTML document when data changes, and a clean separation between components on a modern single-page application.")
html = Category.create!(name: 'HTML', description: "HyperText Markup Language, commonly abbreviated as HTML, is the standard markup language used to create web pages. Along with CSS, and JavaScript, HTML is a cornerstone technology used to create web pages,[1] as well as to create user interfaces for mobile and web applications. Web browsers can read HTML files and render them into visible or audible web pages.")

puts "seeded #{Category.count} categories!"

print "Seeding some questions... "


Question.create!(question: "What is an object?", answer: "Textbook answer here is that an object is an instance of a class and has state, behavior, and identity. In a plain text example, you can say that a truck and a car are both objects of the class Vehicle, or that apple and pear are both objects of the class Fruit.", category: ruby)
Question.create!(question: "How does a symbol differ from a string?", answer: "Symbols are immutable and reusable, retaining the same object_id.", category: ruby)
Question.create!(question: "What are Ruby Gems?", answer: "Ruby Gem is a software package, commonly called a “gem”. Gem contains a packaged Ruby application or library. The Ruby Gems software itself allows you to easily download, install and manipulate gems on your system.", category: ruby)
Question.create!(question: "What are Sessions and Cookies?", answer: "Sessions are used to store user information on the server side.
Cookies are used to store information on the browser side or we can say client side
Session : say session[:user] = “srikant” it remains when the browser is not closed", category: ruby)
Question.create!(question: "What can we define in the model?", answer: "There are lot of things you can define in models few are:
1. Validations (like validates_presence_of, numeracility_of, format_of etc.)
2. Relationships(like has_one, has_many, HABTM etc.)
3. Callbacks(like before_save, after_save, before_create etc.)
4. Suppose you installed a plugin say validation_group, So you can also define validation_group settings in your model
5. ROR Queries in Sql", category: ruby)
Question.create!(question: "How would you declare and use a constructor in Ruby?", answer: "Constructors are declared via the initialize method and get called when you call on a new object to be created.", category: ruby)
Question.create!(question: "Explain some of the looping structures available in Ruby?", answer: "The for loop is a little bit different from other programming languages. Basically, it let's you iterate over a series of 'words' within a string.
The while executes a piece of code if the control expression is true, and only stops when it is false (or a explicit break is found within the executed code.
The until loop is almost equal to the while loop, except that the code is executed while the control expression evaluates to false.
If you suspect that while and until are very similar you are right.", category: ruby)
Question.create!(question: "What is a Proc?", answer: "Procs, short for procedures, act similar to blocks, but can be saved as variables and reused. Think of them as blocks you can call over and over again on multiple arrays.", category: ruby)
Question.create!(question: "What is a lambda?", answer: "Lambdas are very similar to procs in terms of functionality. However, they have a few key differences. Lambdas check the number of arguments passed and will return an error if you try to pass the wrong number (while procs set extra variables to nil). The other difference is that lambdas can handle a return function, whereas procs will return an error.", category: ruby)
Question.create!(question: "What are the three levels of method access control for classes and what do they signify? What do they imply about the method?", answer: "Public, protected, and private.
Public methods can be called by all objects and subclasses of the class in which they are defined in.
Protected methods are only accessible to objects within the same class.
Private methods are only accessible within the same instance.", category: ruby)
Question.create!(question: "Explain what functional testing is.", answer: "Functional testing in Rails allows you to test the response of  various actions contained in a controller. Using the Rails default test library, mini test, functional tests use a collection of assert statements that will tell your testing library to expect a certain response based on a control request passed in (either a get, post, patch, put, head, delete request).", category: ruby)


Question.create!(question: "What is JavaScript?", answer: "An okay language", category: javascript)

Question.create!(question: "What is HTML?", answer: "A basic language", category: html)
Question.create!(question: "What is HTML test?", answer: "A basic language test", category: html)

Question.create!(question: "What is React?", answer: "A nice language", category: react)

puts "seeded #{Question.count} questions!"
