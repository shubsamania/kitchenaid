# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"


Review.destroy_all
Booking.destroy_all
Kitchen.destroy_all
User.destroy_all

user = User.new(email: "emma@gmail.com", password: "1234567", first_name: "Emma", last_name: "Preysing")
file = URI.open("https://media.licdn.com/dms/image/D5603AQFviLMSU6nNzg/profile-displayphoto-shrink_800_800/0/1699914603422?e=1706140800&v=beta&t=-_nEa2-rLt75uyGXEdjPwaxbC3-ANx_wEsCkXfLz6hQ")
user.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
user.save!

kitchen = Kitchen.new(name: "Electric Grill", availiability: true, description: "Provides a convenient indoor grilling experience, great for meats and veggies.", tag: "Outdoor_Cooking", user: user, price: rand(1..100))
file = URI.open("https://images.pexels.com/photos/4940617/pexels-photo-4940617.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

booking = Booking.create!(start_date: Date.today, end_date: Date.tomorrow, user:user, kitchen:kitchen, total_price: 10)

review = Review.new(content: "Indoor grilling made easy! Provides delicious, grilled dishes without the hassle.", rating: 4, booking_id: booking.id)
review.save!

review = Review.new(content:  "An absolute game-changer! This grill delivers restaurant-quality grilling indoors. Easy cleanup, and the adjustable temperature makes it perfect for all types of meats and veggies.", rating: 5, booking_id: booking.id)
review.save!

review = Review.new(content: "Incredible performance! I was skeptical at first, but this grill exceeded expectations. Compact, heats up fast, and the non-stick surface makes cooking and cleaning a breeze. Highly recommended for BBQ lovers!", rating: 5, booking_id: booking.id)
review.save!

kitchen = Kitchen.new(name: "Waffle Maker", availiability: true, description: "Makes crispy waffles quickly for breakfast or desserts.", tag: "Cooking_Appliances", user: user, price: rand(1..100))
file = URI.open("https://pyxis.nymag.com/v1/imgs/def/2d9/c90dac2a67dbd715424dc3f84527c6c53f-bic-waffle-irons.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Makes crispy waffles every time! Simple to clean and a family favorite.", rating: 4, booking_id: booking.id)
# review.save!

# review = Review.new(content:  "Waffle perfection every time! This maker creates crisp and golden waffles effortlessly. The non-stick surface ensures easy cleanup, and its compact design makes storage a breeze.", rating: 5, booking_id: booking.id)
# review.save!

# review = Review.new(content: "A breakfast game-changer! This waffle maker consistently delivers delicious waffles with the ideal texture. Quick heating and the indicator light ensure foolproof waffles. A must-have for breakfast enthusiasts!", rating: 5, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Pasta Maker", availiability: true, description: "Makes fresh pasta from scratch, offering versatility in pasta shapes and flavors.", tag: "Food_Preparation", user: user, price: rand(1..100))
file = URI.open("https://www.philips.com/c-dam/b2c/category-pages/Household/kitchen-appliances/pasta-maker/EU7/philips-pastmaker-EU7-thumbnail.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Love making fresh pasta! Sturdy build and creates restaurant-quality noodles effortlessly.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Cotton Candy Machine", availiability: true, description: "Spins sugar into fluffy cotton candy, a hit at parties or for sweet treats.", tag: "Specialty_Appliances", user: user, price: rand(1..100))
file = URI.open("https://images.thdstatic.com/productImages/44465477-3002-44b6-8abc-1ecdd8ee1884/svn/pink-vevor-cotton-candy-machines-mhtjlj00000000001v1-64_600.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Brings carnival fun home! Makes fluffy cotton candy easily, a hit at parties.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Ice Cream Maker", availiability: true, description: "Creates homemade ice cream, giving you control over flavors and ingredients.", tag: "Beverage_Appliances", user: user, price: rand(1..100))
file = URI.open("https://cdn.thewirecutter.com/wp-content/media/2021/06/icecreammaker-2048px-6533-2x1-1.jpg?auto=webp&quality=75&crop=2:1&width=1024")
kitchen.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
kitchen.save!

# review = Review.new(content: "Fantastic for homemade treats! Simple operation and churns out creamy ice cream in no time.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Bread Maker", availiability: true, description: "Automates bread baking, allowing you to make fresh bread easily at home.", tag: "Outdoor_Cooking", user: user, price: rand(1..100))
file = URI.open("https://static01.nyt.com/images/2023/02/01/multimedia/01bread-maker1-lgvm/30bread-maker1-lgvm-videoSixteenByNineJumbo1600.jpg")
kitchen.photo.attach(io: file, filename: "nes.jpg", content_type: "image/jpg")
kitchen.save!

# review = Review.new(content: "This bread maker is a game-changer! Easy to use, makes delicious bread, and the aroma fills the house.", rating: 4, booking_id: booking.id)
# review.save!


kitchen = Kitchen.new(name: "Food Dehydrator", availiability: true, description: "Removes moisture from foods to preserve them or create healthy snacks like dried fruits or jerky.", tag: "Outdoor_Cooking", user: user, price: rand(1..100))
file = URI.open("https://www.sencor.com/Sencor/media/content/products/abf81e6e-e34b-4304-8f41-3f1f0816c8c5.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Great for preserving fruits and making jerky! Works efficiently and is a space-saving kitchen asset.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Soda Maker", availiability: true, description: "Carbonates water to make homemade sodas or sparkling water with various flavors.", tag:"Outdoor_Cooking", user: user, price: rand(1..100))
file = URI.open("https://hips.hearstapps.com/hmg-prod/images/sodastream-1623695227.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Convenient and eco-friendly! Enjoy homemade soda with customizable flavors.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Popcorn Machine", availiability: true, description: "Pops popcorn kernels, ideal for movie nights or snack time.", tag: "Cooking_Appliances", user: user, price: rand(1..100))
file = URI.open("https://images.unsplash.com/photo-1620177088260-a9150572baf4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cG9wY29ybiUyMG1hY2hpbmV8ZW58MHx8MHx8fDA%3D")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Movie nights made better! Makes fluffy popcorn quickly and hassle-free.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Egg Cooker", availiability: true, description: "Cooks eggs in various styles, from boiled to poached, often with precise settings.", tag: "Food_Preparation", user: user, price: rand(1..100))
file = URI.open("https://www.foodandwine.com/thmb/AvRL5VNjYIBQS1EZ443VYZ-pU1w=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/chefschoice-electric-egg-cooker-137ae553903e43f19261eb022055c495.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Life-saver for perfect eggs! Versatile gadget for easy breakfast prep.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Rice Cooker", availiability: true, description: "Automates the cooking process for rice, ensuring perfectly cooked grains.", tag: "Cooking_Appliances", user: user, price: rand(1..100))
file = URI.open("https://assets.bonappetit.com/photos/5c40fc8ad716ea67c8803357/master/pass/rice-cooker.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Effortless rice cooking! Consistently fluffy rice, a must-have for busy kitchens.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Sushi Maker", availiability: true, description: "Aids in rolling sushi at home, simplifying the process for homemade sushi.", tag: "Food_Preparation", user: user, price: rand(1..100))
file = URI.open("https://cdn3.vox-cdn.com/thumbor/LI_byH2ybWbT_EW9q1sxMy6bTTc=/0x1080/volume-assets.voxmedia.com/production/d5959263f3e1f70a8d0faa44e89d7896/EAT_KTG_019_SushiMaker_OYThumb.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Fun and easy sushi making! Great for beginners and sushi enthusiasts.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Donut Maker", availiability: true, description: "Helps in making homemade donuts easily, allowing for customized flavors and toppings.", tag: "Cooking_Appliances", user: user, price: rand(1..100))
file = URI.open("https://i.otto.de/i/otto/341cabb6-95c5-4c45-aed6-e16d45fefea2/yoyaxi-waffeleisen-220-v-antihaft-donut-maker-maschine-1400w-fruehstuecksmaschine.jpg?$formatz$")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Delightful homemade treats! Creates tasty donuts in minutes, kids love it.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Chocolate Fountain", availiability: true, description: "Creates a cascading flow of melted chocolate for dipping fruits, marshmallows, etc.", tag: "Beverage_Appliances", user: user, price: rand(1..100))
file = URI.open("https://vivani.de/wp-content/uploads/2017/10/Schokobrunnen_1200x800-1054x703.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Impressive dessert centerpiece! Perfect for fondue and gatherings.", rating: 4, booking_id: booking.id)
# review.save!

kitchen = Kitchen.new(name: "Panini Press", availiability: true, description: "Grills sandwiches, creating toasted and pressed paninis with various fillings.", tag: "Specialty_Appliances", user: user, price: rand(1..100))
file = URI.open("https://foodandnutrition.org/wp-content/uploads/2017/04/Up-Your-Sandwich-Game-with-a-Panini-Press-780x520.jpg")
kitchen.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
kitchen.save!

# review = Review.new(content: "Grills perfect sandwiches! Versatile for various pressed meals, a kitchen essential.", rating: 4, booking_id: booking.id)
# review.save!
