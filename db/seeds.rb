print "Seeding standard categories... "


ruby = Category.create!(name: 'Ruby')
javascript = Category.create!(name: 'JavaScript')
react = Category.create!(name: 'React')
html = Category.create!(name: 'HTML')

puts "seeded #{Category.count} categories!"

print "Seeding some questions... "


Question.create!(question: "What is an object?", answer: "Textbook answer here is that an object is an instance of a class and has state, behavior, and identity. In a plain text example, you can say that a truck and a car are both objects of the class Vehicle, or that apple and pear are both objects of the class Fruit.", category: ruby)
Question.create!(question: "How does a symbol differ from a string?", answer: "Short answer: symbols are immutable and reusable, retaining the same object_id.", category: ruby)
Question.create!(question: "What is Ruby Gems?", answer: "Ruby Gem is a software package, commonly called a “gem”. Gem contains a packaged Ruby application or library. The Ruby Gems software itself allows you to easily download, install and manipulate gems on your system.", category: ruby)
Question.create!(question: "What is Gemfile and Gemfile.lock?", answer: "The Gemfile is where you specify which gems you want to use, and lets you specify which versions. The Gemfile.lock file is where Bundler records the exact versions that were installed. This way, when the same library/project is loaded on another machine, running bundle install will look at the Gemfile.lock and install the exact same versions, rather than just using the Gemfile and installing the most recent versions. (Running different versions on different machines could lead to broken tests, etc.) You shouldn’t ever have to directly edit the lock file.", category: ruby)
Question.create!(question: "What is Session and Cookies?", answer: "Session: are used to store user information on the server side.
cookies: are used to store information on the browser side or we can say client side
Session : say session[:user] = “srikant” it remains when the browser is not closed", category: ruby)
Question.create!(question: "What things can we define in the model?", answer: "There are lot of things you can define in models few are:
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
