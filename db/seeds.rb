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


angie = User.create(email: "angie@angie.com", password_digest: "angie")
ben = User.create(email: "ben@ben.com", password_digest: "ben")
User.create(email: 'tegan@tegan.com', password_digest:'tegan')
User.create(email: 'george@george.com', password_digest:'george')
User.create(email: 'aude@aude.com', password_digest:'aude')

hobby = Category.create(category_name: "hobby")
art = Category.create(category_name: "art")
Category.create(category_name: 'work')
Category.create(category_name: 'life')
Category.create(category_name: 'commute')


entry_1 = Entry.create(
    user_id: 1, 
    category_id: 1, 
    message: "everything is really great", 
    emotions_hash: '{"emotion":{"Angry":0.0292482309,"Happy":0.5742702468,"Excited":0.2057780772,"Fear":0.1527531365,"Sad":0.0245192155,"Bored":0.013431093}}', 
    colours: "d663bb", 
    public?: true
)
entry_2 = Entry.create(
    user_id: 1, 
    category_id: 1, 
    message: "Today I did not feel so good", 
    emotions_hash: '{"emotion":{"Angry":0.379597349,"Happy":0.0823277677,"Excited":0.1620926857,"Fear":0.1020909454,"Sad":0.2570584763,"Bored":0.0168327759}}', 
    colours: "23b3e8", 
    public?: true)

Entry.create(
    user_id: 1,
    category_id: 2,
    message: 'hello i am a penguin',
    emotions_hash: '{"emotion":{"Angry":0.379597349,"Happy":0.0823277677,"Excited":0.1620926857,"Fear":0.1020909454,"Sad":0.2570584763,"Bored":0.0168327759}}', 
    colours: 'fc9d03',
    public?: false
)

Entry.create(
    user_id: 2,
    category_id: 4,
    message: 'i am really sad boohooohooo',
    emotions_hash: '{"emotion":{"Angry":0.379597349,"Happy":0.0823277677,"Excited":0.1620926857,"Fear":0.1020909454,"Sad":0.2570584763,"Bored":0.0168327759}}', 
    colours: '487fa1',
    public?: true
)

Entry.create(
    user_id: 3,
    category_id: 3,
    message: 'today was a good day! I got stuff DONE',
    emotions_hash: '{"emotion":{"Angry":0.379597349,"Happy":0.0823277677,"Excited":0.1620926857,"Fear":0.1020909454,"Sad":0.2570584763,"Bored":0.0168327759}}', 
    colours: 'a575d9',
    public?: true
)

Entry.create(
    user_id: 4,
    category_id: 4,
    message: "la de da, i'm relaxing on a tropical island",
    emotions_hash: '{"emotion":{"Angry":0.379597349,"Happy":0.0823277677,"Excited":0.1620926857,"Fear":0.1020909454,"Sad":0.2570584763,"Bored":0.0168327759}}', 
    colours: '2597cc',
    public?: true
)

Entry.create(
    user_id: 5,
    category_id: 1,
    message: 'this project is going to be so cool',
    emotions_hash: '{"emotion":{"Angry":0.379597349,"Happy":0.0823277677,"Excited":0.1620926857,"Fear":0.1020909454,"Sad":0.2570584763,"Bored":0.0168327759}}', 
    colours: 'd14e26',
    public?: true
)