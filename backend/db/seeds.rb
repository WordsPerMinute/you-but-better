# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Goal.destroy_all
LoveBubble.destroy_all
GoalCategory.destroy_all
User.destroy_all
Faker::Config.random = Random.new(1)

goal_health = GoalCategory.create(name: "general health")
goal_emotional = GoalCategory.create(name: "emotional")
goal_lifestyle = GoalCategory.create(name: "lifestyle")
goal_work = GoalCategory.create(name: "work")
goal_spiritual = GoalCategory.create(name: "spiritual")
goal_friends_family = GoalCategory.create(name: "family")
goal_financial = GoalCategory.create(name: "financial")
goal_political = GoalCategory.create(name: "political")
goal_volunteer = GoalCategory.create(name: "volunteer")
goal_education = GoalCategory.create(name: "education")
goal_writing = GoalCategory.create(name: "writing")
goal_sports = GoalCategory.create(name: "sports")
goal_exercise = GoalCategory.create(name: "exercise")
goal_networking = GoalCategory.create(name: "networking")
goal_community = GoalCategory.create(name: "community")
goal_art = GoalCategory.create(name: "art")
goal_coding = GoalCategory.create(name: "coding")
goal_travel = GoalCategory.create(name: "travel")

# user_1 = User.create(username: "corey.h", password: "fortesting", email: "corey.h@email.com", bio: "", zip: 80204, photo: "/assets/")

user_17 = User.create(username: "adam.s", password: "fortesting", email: "@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80303, photo: "assets/user_photo/adam.jpeg")
goal_46 = Goal.create(title: "land a job", specific_goal: "Land a job $$$$", why: "because I want to buy my gf a promise ring", months: 8, attainable: true, current_action: "open LinkedIn.com and click jobs every morning", private: false, goal_category: goal_work, user: user_17)
goal_47 = Goal.create(title: "enduro races", specific_goal: "Place competitively in some enduro races", why: "I have Enduro posters all over my room, and ever since I was a little kinder I wanted to participate.", months: 12, attainable: true, current_action: "call the Enduro Races training facility tomorrow", private: false, goal_category: goal_sports, user: user_17)
goal_48 = Goal.create(title: "break into sports routes", specific_goal: "Break into 5.13 sport routes.", why: "to be featured in Free Solo 2: The Adam Shappy Story", months: 12, attainable: true, current_action: "hit the rocks every Sunday", private: false, goal_category: goal_sports, user: user_17)


user_12 = User.create(username: "miwha", password: "fortesting", email: "miwha@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80302, photo: "assets/user_photo/miwha.png")
goal_31 = Goal.create(title: "frisbee shape", specific_goal: "get in shape for frisbee", why: "My teammates are counting on me. Plus I wanna make sick jump-catches.", months: 2, attainable: true, current_action: "run every other morning", private: false, goal_category: goal_sports, user: user_12)
goal_32 = Goal.create(title: "drink water", specific_goal: "drink more water", why: "my doctor told me it'd be a good idea and I respect her opinion", months: 2, attainable: true, current_action: "drink 1 extra glass of water with lunch every day until it's a habit", private: false, goal_category: goal_health, user: user_12)
goal_33 = Goal.create(title: "get job", specific_goal: "get one of them jobs", why: "so I can buy some bling and impress people", months: 2, attainable: true, current_action: "sending donuts with attached resumes to lobbies of cool companies", private: false, goal_category: goal_work, user: user_12)

user_2 = User.create(username: "josh.c", password: "fortesting", email: "josh.c@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80204, photo: "assets/user_photo/josh.png")
goal_1 = Goal.create(title: "daily workout", specific_goal: "Get in some sort of exercise at least every other day :)", why: "because I want to have more energy", months: 1, attainable: true, current_action: "do 50 situps every other morning", private: false, goal_category: goal_health, user: user_2)
goal_2 = Goal.create(title: "read daily", specific_goal: "Read some good stuff for at least 30 mins every day", why: "I want more inspiration", months: 2, attainable: true, current_action: "set alarm for 8pm to go read", private: false, goal_category: goal_spiritual, user: user_2)
goal_3 = Goal.create(title: "stay in touch", specific_goal: "Keep in better touch with all the friends and fam", why: "I've seen people fade away and never want that for me", months: 12, attainable: true, current_action: "calling my brother every other Tuesday evening", private: false, goal_category: goal_friends_family, user: user_2)



user_3 = User.create(username: "jorge.s", password: "fortesting", email: "jorge.s@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80204, photo: "assets/user_photo/jorge.jpeg")
goal_4 = Goal.create(title: "job", specific_goal: "Get a job! That fits my core values.", why: "integrity is important to me", months: 8, attainable: true, current_action: "applying to 1 nonprofit a day", private: false, goal_category: goal_work, user: user_3)
goal_5 = Goal.create(title: "overall health", specific_goal: "Exercise regularly and keep a better diet", why: "I want to be a role model in my community", months: 3, attainable: true, current_action: "making fresh salads on Monday and Wednesday", private: false, goal_category: goal_health, user: user_3)
goal_6 = Goal.create(title: "vision statement", specific_goal: "Make a visions statement", why: "to help guide my choices and be a better partner", months: 1, attainable: true, current_action: "write down what I envision in my life, on a piece of notebook paper", private: false, goal_category: goal_spiritual, user: user_3)



user_4 = User.create(username: "john.r", password: "fortesting", email: "john.r@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80204, photo: "assets/user_photo/john.r.jpeg")
goal_7 = Goal.create(title: "summit 14ers", specific_goal: "summit all the 14'ers", why: "because I've wanted to since I was a kid", months: 24, attainable: true, current_action: "hiking a new 14er every Saturday", private: false, goal_category: goal_sports, user: user_4)
goal_8 = Goal.create(title: "fetch job", specific_goal: "fetch(“job.com”)", why: "It's time. I'm pro and ready to prove it.", months: 7, attainable: true, current_action: "meeting for coffee every week with a new contact", private: false, goal_category: goal_work, user: user_4)


user_5 = User.create(username: "parker.b", password: "fortesting", email: "parker.b@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80204, photo: "assets/user_photo/parker.b.jpeg")
goal_10 = Goal.create(title: "github pushing", specific_goal: "push it github everyday", why: "to challenge my coding skills and be more visible to employers", months: 3, attainable: true, current_action: "decide on what to code by 10am every morning", private: false, goal_category: goal_work, user: user_5)
goal_11 = Goal.create(title: "network", specific_goal: "make dev connects", why: "because I know I have what it takes, and just want a chance", months: 1, attainable: true, current_action: "asking people to coffee/lunch every Tuesday", private: false, goal_category: goal_community, user: user_5)
goal_12 = Goal.create(title: "blog", specific_goal: "blog posts", why: "to keep myself engaged and sharp as a coder", months: 3, attainable: true, current_action: "writing 1 blog post every Wednesday afternoon", private: false, goal_category: goal_writing, user: user_5)


user_6 = User.create(username: "kat.s", password: "fortesting", email: "kat.s@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80205, photo: "assets/user_photo/kat.s.jpeg")
goal_13 = Goal.create(title: "piano", specific_goal: "Learn piano", why: "because classical music and jazz piano always made me feel connected to something greater than myself", months: 6, attainable: true, current_action: "call the Piano Studio Denver for lessons", private: false, goal_category: goal_spiritual, user: user_6)
goal_14 = Goal.create(title: "full-stack React/RoR", specific_goal: "Build a full-stack React, RoR app", why: "I want to expand my knowledge and impact at the school", months: 1, attainable: true, current_action: "make a test page with React this Sunday", private: false, goal_category: goal_coding, user: user_6)
goal_15 = Goal.create(title: "monthly reading", specific_goal: "Read 2 books a month", why: "I want to read one fiction and nonfiction book a month because I like how it opens my eyes to new perspectives", months: 1, attainable: true, current_action: "open new book on the evening of the 1st and 15th", private: false, goal_category: goal_spiritual, user: user_6)


user_7 = User.create(username: "lillian.b", password: "fortesting", email: "lillian.b@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80205, photo: "assets/user_photo/lillian.png")
goal_16 = Goal.create(title: "stretch", specific_goal: "Stretch more before and after workouts.", why: "because being active is important to me and I want to prevent injury", months: 1, attainable: true, current_action: "do a circuit of 5 stretches after every time I work out", private: false, goal_category: goal_exercise, user: user_7)
goal_17 = Goal.create(title: "spontaneous", specific_goal: "Be more socially spontaneous", why: "I've been meeting great people at meetups and want more of that energy in my life", months: 3, attainable: true, current_action: "leave my house without a plan every Thursday night", private: false, goal_category: goal_lifestyle, user: user_7)
goal_18 = Goal.create(title: "be kinder to self", specific_goal: "Be less hard on myself for failure - embrace failure and learn from it.", why: "because I think this will help with being more adventerous", months: 12, attainable: true, current_action: "every weekday evening, I will write down 3 nice things about myself, and one tiny risk I want to take the next day", private: false, goal_category: goal_emotional, user: user_7)


user_8 = User.create(username: "evan.g", password: "fortesting", email: "evan.g@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80205, photo: "assets/user_photo/evan.jpeg")
goal_19 = Goal.create(title: "jerb", specific_goal: "Get a job,", why: "for money and for fulfillment", months: 4, attainable: true, current_action: "mail one resume to a favorite CEO every Monday", private: false, goal_category: goal_work, user: user_8)
goal_20 = Goal.create(title: "EDC helicopter", specific_goal: "Fly into EDC in a helicopter,", why: "I want to make a music video of me doing this to kickstart my record label", months: 6, attainable: true, current_action: "call a helicopter rental service next Tuesday", private: false, goal_category: goal_lifestyle, user: user_8)
goal_21 = Goal.create(title: "rent cabin", specific_goal: "Rent a cabin at a ski resort once job is acquired", why: "I love to ski and I can invite my aunt who's really chill", months: 12, attainable: true, current_action: "open excel document and paste in three cabin lstings I want to check on in the future", private: false, goal_category: goal_lifestyle, user: user_8)


user_9 = User.create(username: "bradley.h", password: "fortesting", email: "bradley.h@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80205, photo: "assets/user_photo/brad.png")
goal_22 = Goal.create(title: "Node", specific_goal: "learn node", why: "this will push my spaceship game to the next level and let me track the game's community", months: 1, attainable: true, current_action: "do one Udemy lesson every weekday", private: false, goal_category: goal_coding, user: user_9)
goal_23 = Goal.create(title: "get strong", specific_goal: "lift 1.5/2.5/4/5 pl8", why: "I could do this once, and want to see if I still got it", months: 3, attainable: true, current_action: "going to the WeWork gym for 1 hour every morning", private: false, goal_category: goal_exercise, user: user_9)
goal_24 = Goal.create(title: "get job", specific_goal: "get a job", why: "to stay engaged in my work and have less financial worry", months: 3, attainable: true, current_action: "messsage 1 new person on LinkedIn every day, and apply for a job every Mon/Wed/Fri", private: false, goal_category: goal_work, user: user_9)


user_10 = User.create(username: "tissiana.a", password: "fortesting", email: "tissiana.a@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80205, photo: "assets/user_photo/tissi.jpeg")
goal_25 = Goal.create(title: "learn 5 languages", specific_goal: "Learn and speak at least 5 different langs", why: "connecting with other cultures makes me feel sprititual and alive", months: 80, attainable: true, current_action: "", private: false, goal_category: goal_education, user: user_10)
goal_26 = Goal.create(title: "buy boat", specific_goal: "buy a boat", why: "the water is my favorite element and I hate the land", months: 24, attainable: true, current_action: "put money away the 15th of every month towards my boat down payment", private: false, goal_category: goal_lifestyle, user: user_10)
goal_27 = Goal.create(title: "make wine", specific_goal: "make my own wine", why: "because I want to get drunk with my friends when they visit me in Colorado", months: 5, attainable: true, current_action: "set aside every Sunday from 1-4pm for wine time, do research and visit supply stores during that time", private: false, goal_category: goal_education, user: user_10)


user_11 = User.create(username: "aaron.b", password: "fortesting", email: "aaron.b@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80302, photo: "assets/user_photo/aaron.jpeg")
goal_28 = Goal.create(title: "jerb", specific_goal: "Get a job", why: "to better myself and serve others in the community", months: 8, attainable: true, current_action: "attend 1 networking event every week", private: false, goal_category: goal_work, user: user_11)
goal_29 = Goal.create(title: "better at photoshop", specific_goal: "Get better at Photoshop (make my own front-end assets?)", why: "to make dank memes that keep team morale high", months: 1, attainable: true, current_action: "post 1 meme to slack everyday", private: false, goal_category: goal_art, user: user_11)
goal_30 = Goal.create(title: "LinkedIn shitpost more", specific_goal: "Become a Master Shitposter on LinkedIn like Kyle", why: "because Kyle's shitposting really touched my soul in a deep way, it's all I think about now", months: 2, attainable: true, current_action: "write 1 shitpost every Friday", private: false, goal_category: goal_lifestyle, user: user_11)




user_13 = User.create(username: "alice", password: "fortesting", email: "alice@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80302, photo: "assets/user_photo/alice.jpeg")
goal_34 = Goal.create(title: "visit Switzterland", specific_goal: "Go visit Switzerland", why: "ever since I was a little girl I imagined having coffee in the Alps", months: 5, attainable: true, current_action: "message 3 hosts on AirBnB and ask about best time of year to visit", private: false, goal_category: goal_travel, user: user_13)
goal_35 = Goal.create(title: "balance", specific_goal: "Proper Mindset and Balance", why: "so I show up as the best partner, daughter, employee I can be", months: 3, attainable: true, current_action: "drink 1 less coffee everyday, and meditate for 5 minutes before I go to sleep", private: false, goal_category: goal_spiritual, user: user_13)
goal_36 = Goal.create(title: "continuing education", specific_goal: "Continuing Education", why: "to stay inspired and motivated by others", months: 12, attainable: true, current_action: "schedule 4 private classes every month, call the boxing gym this Thursday", private: false, goal_category: goal_education, user: user_13)


user_14 = User.create(username: "rachel.e", password: "fortesting", email: "rachel.e@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80302, photo: "assets/user_photo/rachel.jpeg")
goal_37 = Goal.create(title: "more water", specific_goal: "Drink more water", why: "I feel better when I do, and have less caffeine headaches", months: 1, attainable: true, current_action: "fill up my water bottle at 9am and finish it by 11am", private: false, goal_category: goal_health, user: user_14)
goal_38 = Goal.create(title: "invest in relationships", specific_goal: "Invest more in all my relationships", why: "when I'm more connected to others, I feel more optimistic", months: 5, attainable: true, current_action: "text a different friend every night during dinner", private: false, goal_category: goal_friends_family, user: user_14)
goal_39 = Goal.create(title: "learn more", specific_goal: "Continue learning", why: "I feel great when I'm in a classroom or reading books, and want to feel that more often", months: 3, attainable: true, current_action: "attend an online or in-person course at least once a week", private: false, goal_category: goal_education, user: user_14)


user_15 = User.create(username: "aj.d", password: "fortesting", email: "aj.d@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80303, photo: "assets/user_photo/aj.jpeg")
goal_40 = Goal.create(title: "weekly workout", specific_goal: "work out 3 times a week.", why: "working out gives me an opportunity to spend time with my girlfriend and keep us both feeling energetic", months: 12, attainable: true, current_action: "wake up at 6:15am so I have time to visit the gym before the school", private: false, goal_category: goal_exercise, user: user_15)
goal_41 = Goal.create(title: "ride bike", specific_goal: "ride my bike 2 times a week.", why: "cycling is a spiritual practice to me, my favorite way to organize my thoughts and appreciate my neighborhood", months: 3, attainable: true, current_action: "ride to work on Mondays and Fridays", private: false, goal_category: goal_health, user: user_15)
goal_42 = Goal.create(title: "coding events", specific_goal: "go to more coding network events", why: "It motivates me to learn now things. And, I love free pizza!", months: 3, attainable: true, current_action: "go to 1 meetup a week", private: false, goal_category: goal_networking, user: user_15)


user_16 = User.create(username: "patrick.c", password: "fortesting", email: "patrick.c@email.com", bio: Faker::GreekPhilosophers.quote, zip: 80303, photo: "assets/user_photo/patrick.c.jpeg")
goal_43 = Goal.create(title: "write blog", specific_goal: "Write my blog", why: "Honestly, because I want to cover my arse for the moneyback guarantee", months: 1, attainable: true, current_action: "open medium on Tuesday night and write an intro paragraph", private: false, goal_category: goal_writing, user: user_16)
goal_44 = Goal.create(title: "flutter", specific_goal: "One flutter build and burn", why: "Flutter is a tech that will bring together so much of my knowledge.", months: 1, attainable: true, current_action: "go to a group coding meetup on Monday to get started", private: false, goal_category: goal_coding, user: user_16)
goal_45 = Goal.create(title: "jamstack", specific_goal: "Go to the Jamstack meetup tonight", why: "I've heard good things for so long. Just curious, think it could be fun.", months: 1, attainable: true, current_action: "drive to meetup this evening, ask Pat if they want to join.", private: false, goal_category: goal_community, user: user_16)




lb_1 = LoveBubble.create(user: user_2, friend: user_3)
lb_2 = LoveBubble.create(user: user_2, friend: user_4)
lb_3 = LoveBubble.create(user: user_2, friend: user_5)
lb_4 = LoveBubble.create(user: user_3, friend: user_6)
lb_5 = LoveBubble.create(user: user_3, friend: user_7)
lb_6 = LoveBubble.create(user: user_3, friend: user_8)
lb_7 = LoveBubble.create(user: user_4, friend: user_9)
lb_8 = LoveBubble.create(user: user_4, friend: user_10)
lb_9 = LoveBubble.create(user: user_5, friend: user_11)
