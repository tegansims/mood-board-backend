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
User.create(email: 'chris@chris.com', password:'chris')
User.create(email: 'paco@paco.com', password:'paco')

hobby = Category.create(category_name: "Hobbies")
art = Category.create(category_name: "Art and Culture")
Category.create(category_name: 'Work')
Category.create(category_name: 'Generic Life Stuff')
Category.create(category_name: 'Commute')
Category.create(category_name: 'Home')
Category.create(category_name: 'Feelings')


entry_1 = Entry.create(
    user_id: 1, 
    category_id: 4, 
    message: "everything is really great",
    colours: "127610",
    public?: true
)
entry_2 = Entry.create(
    user_id: 1, 
    category_id: 7, 
    message: "Today I did not feel so good",
    colours: "180061",
    public?: true
)

Entry.create(
    user_id: 7,
    category_id: 7,
    message: "I am analytically fearful tentatively angry and confidently joyful with sadness.",
    colours: "321190",
    public?: true
)

Entry.create(
    user_id: 1,
    category_id: 4,
    message: 'hello i am a penguin',
    colours: "236321",
    public?: false
)

Entry.create(
    user_id: 2,
    category_id: 7,
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
    category_id: 6,
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

Entry.create(
    user_id: 6,
    category_id: 3,
    message: "we now have to have categories, which is upsetting",
    colours: "430091",
    public?: true
)

Entry.create(
    user_id: 7,
    category_id: 3,
    message: "checking the one after validations",
    colours: "242223",
    public?: true
)

Entry.create(
    user_id: 3,
    category_id: 2,
    message: "i want someone to tell me what to wear. what to eat. what to like, what to hate, what to rage about, what to listen to, what to joke about. i want someone to tell me what to believe in, who to vote for, who to love and how to tell them",
    colours: "441251",
    public?: true
)

Entry.create(
    user_id: 2,
    category_id: 2,
    message: "I SOMETIMES WORRY I'D BE LESS OF A FEMINIST IF I HAD BIGGER TITS",
    colours: "261141",
    public?: true
)

Entry.create(
    user_id: 4,
    category_id: 2,
    message: "I SPEND MOST OF MY ADULT LIFE USING SEX TO DEFLECT THE SCREAMING VOID INSIDE MY EMTPY HEART",
    colours: "122180",
    public?: true
)

Entry.create(
    user_id: 4,
    category_id: 2,
    message: "BUT THEN YOU'RE FREE. NO LONGER A SLAVE, NO LONGER A MACHINE, WITH PARTS. YOU'RE JUST A PERSON IN BUSINESS.",
    colours: "813221",
    public?: true
)

Entry.create(
    user_id: 4,
    category_id: 2,
    message: "I JUST WANT TO CRY. ALL THE TIME",
    colours: "813221",
    public?: true
)

Entry.create(
    user_id: 3,
    category_id: 2,
    message: "YOU KNOW, EITHER EVERYONE FEELS LIKE THIS A LITTLE BIT, AND THEY'RE JUST NOT TALKING ABOUT IT, OR I'M COMPLETELY FUCKING ALONE.",
    colours: "521081",
    public?: true
)

Entry.create(
    user_id: 2,
    category_id: 2,
    message: "If you prick us do we not bleed? If you tickle us do we not laugh? If you poison us do we not die? And if you wrong us, shall we not revenge?",
    colours: "632211",
    public?: true
)

Entry.create(
    user_id: 6,
    category_id: 2,
    message: "To be, or not to be: that is the question",
    colours: "342233",
    public?: true
)

Entry.create(
    user_id: 7,
    category_id: 2,
    message: "Good night, good night! Parting is such sweet sorrow.",
    colours: "00213a",
    public?: true
)

Entry.create(
    user_id: 5,
    category_id: 2,
    message: "Love all, trust a few, do wrong to none",
    colours: "614212",
    public?: true
)

Entry.create(
    user_id: 2,
    category_id: 5,
    message: "i beg thee, do not take my daughter away from me",
    colours: "321190",
    public?: true
)

Entry.create(
    user_id: 4,
    category_id: 4,
    message: "damn this",
    colours: "431161",
    public?: true
)

