# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Entry.destroy_all


angie = User.create(email: "angie@angie.com", password: "angie")
ben = User.create(email: "ben@ben.com", password: "ben")
User.create(email: 'tegan@tegan.com', password:'tegan')
User.create(email: 'george@george.com', password:'george')
User.create(email: 'aude@aude.com', password:'aude')

hobby = Category.create(category_name: "hobby")
art = Category.create(category_name: "art")
Category.create(category_name: 'work')
Category.create(category_name: 'life')
Category.create(category_name: 'commute')


entry_1 = Entry.create(
    user_id: 1, 
    category_id: 1, 
    message: "everything is really great",
    colours: "127610",
    public?: true
)
entry_2 = Entry.create(
    user_id: 1, 
    category_id: 1, 
    message: "Today I did not feel so good",
    colours: "180061",
    public?: true
)

Entry.create(
    user_id: 1,
    category_id: 2,
    message: 'hello i am a penguin',
    colours: "236321",
    public?: false
)

Entry.create(
    user_id: 2,
    category_id: 4,
    message: 'i am really sad boohooohooo',
    colours: "0200e0",
    public?: true
)

Entry.create(
    user_id: 3,
    category_id: 3,
    message: 'today was a good day! I got stuff DONE',
    colours: "126700",
    public?: true
)

Entry.create(
    user_id: 4,
    category_id: 4,
    message: "la de da, i'm relaxing on a tropical island",
    colours: "014902",
    public?: true
)

Entry.create(
    user_id: 5,
    category_id: 1,
    message: 'this project is going to be so cool',
    colours: "222811",
    public?: true
)