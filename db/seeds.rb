
user1 = User.create(username: 'foobar', password:'barfoo')
user2 = User.create(username: 'noah', password: '123456')

illness1 = Illness.create(user_id: 1, name: 'Colitis', description: 'StomachAche')
illness2 = Illness.create(user_id: 1, name: 'Headache')

tracking1 = Tracking.create(illness_id:1 ,date: "2020-06-11" , mood:3, temperature: 36.5, medicines:["Omeprazol:1", "Peptobismol:2"], symptons:["Weakness:1, Stomache:3"])
tracking2 = Tracking.create(illness_id: 1, date: "2020-06-10" , mood:1, temperature: 36.7)