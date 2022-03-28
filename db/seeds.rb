# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Booking.destroy_all
Dog.destroy_all
User.destroy_all
addresses = [
  "9 Smalldale Road, Birmingham, B42 2RX",
  "82 Grammar School Road, Brigg, DN20 8AY",
  "1A Queens Road, Annitsford, NE23 7RA",
  "4 Morley Road, Romford, RM6 6XB",
  "Kimberley, Horton Road, Staines, TW19 6BQ",
  "17 Charles Street, Leabrooks, DE55 1LZ",
  "Bryn Gwynt, Beddgelert, LL55 4UU",
  "41 Douglas Road, Tonbridge, TN9 2TH",
  "2 Victoria Place, Wanswell, GL13 9SB",
  "16 Windy Street, Chipping, PR3 2GD",
  "55 Moorland Avenue, Lincoln, LN6 7RE",
  "40 Hazelwood Road, Oxted, RH8 0HZ",
  "2 Willow Close, Watlington, PE33 0JR",
  "26 Bell Hill, Finedon, NN9 5ND",
  "242 Little Brays, Harlow, CM18 6ER",
  "8 Ilchester Road, Chilthorne Domer, BA22 8RF",
  "119 New Road, Chatteris, PE16 6BU",
  "Gwynfa, Cae Garw, Llanfair, LL46 2RL",
  "4 West Court, Braybrooke Road, Market Harborough, LE16 8GB",
  "6 Swanholme Close, Lincoln, LN6 3DE",
  "77 Windsor Court, London, N14 5HT",
  "47 Pendeford Mill Lane, Codsall, WV8 1JG",
  "4 The Mews, Pulborough, RH20 2BB",
  "71 Norbury Road, Feltham, TW13 4SR",
  "Flat 28, St. Peters House, Queens Row, London, SE17 2PT",
  "1 Cawley Lane, Heckmondwike, WF16 0BJ",
  "26 Rowe Avenue, Peacehaven, BN10 7PF",
  "8 Beaufort Close, Plymouth, PL5 1AR",
  "6 Kingsmoor Road, Harlow, CM19 4HR",
  "24 Hood Close, Sleaford, NG34 7WJ",
  "8 Fitzroy Court, Bartlett Crescent, High Wycombe, HP12 3DW",
  "Rose Villa, Cherry Chase, Tiptree, CO5 0AE",
  "Flat A-C, 122 Whitechapel Road, London, E1 1JE",
  "2 May Pasture, Great Shelford, CB22 5FA",
  "Woodville Surgery, Burton Road, Woodville, DE11 7JG",
  "Flat 1, Highcroft, 30 Old Lodge Lane, Purley, CR8 4DF",
  "81 Wakefield Road, Streethouse, WF7 6BT",
  "N E C House, Bickenhill Lane, Birmingham, B40 1PQ",
  "Vaddicott Corner, Shebbear, EX21 5QT",
  "33 Moorland Avenue, Milnrow, OL16 3DZ",
  "Trevithal An Mor, Paul, TR19 6UQ",
  "38 Weigall Road, London, SE12 8HE",
  "1 Newbridge Cottages, Newbridge, PL18 9LH",
  "122 Light Oaks Road, Salford, M6 8WL",
  "3 Harley Way, Bridgnorth, WV16 5PA",
  "50 Albion Crescent, Lincoln, LN1 1EB",
  "79D Forest Road, Colchester, CO4 3XH",
  "21 Ffordd Y Ffynnon, Bangor, LL57 1HB",
  "3 Hollygate Close, Melton Mowbray, LE13 1HD",
  "13 Flan Close, Ulverston, LA12 7DW",
  "34A Salisbury Street, Amesbury, SP4 7HD",
  "2 Palmers Lodge Cottages, Garlinge Green Road, Petham, CT4 5RL",
  "Kerseycleugh, Kielder, NE48 1EN",
  "The Granary, The Causeway, Mark, TA9 4QJ",
  "80 Leamington Drive, Sutton-In-Ashfield, NG17 5BJ",
  "6 Civic Court, Hebburn, NE31 2YB",
  "43 Strand Meadow, Burwash, TN19 7BP",
  "31 Pepper Hill, Northfleet, DA11 8EW",
  "86 Church Close, Stanton By Bridge, DE73 7GH",
  "13 Martin Close, Bedford, MK41 7JY",
  "Mandalay, Waberthwaite, LA19 5YL",
  "First Floor North, 10 Furnival Street, London, EC4A 1AB",
  "10 Kammond Avenue, Seaford, BN25 3JL",
  "Station House, Breedon Road, Worthington, LE65 1RA",
  "Lanscove, The Coombes, Polperro, PL13 2RG",
  "Unit 6 Mendip Vale Trading Estate, Cheddar, BS27 3EL",
  "8C Bowes Road, Middlesbrough, TS2 1LU",
  "3 Thicket Walk, Thornbury, BS35 2JN",
  "21 Beech Road, East Malling, ME19 6DH",
  "Bod Thelwal, 2 Bay View Road, Benllech, LL74 8TT",
  "12 Stainer Close, Witham, CM8 1RU",
  "69 Princess Way, Stourport-On-Severn, DY13 0EL",
  "42 Patterdale Road, Blyth, NE24 5JX",
  "30 Ollerton Road, Retford, DN22 7TQ",
  "Ceidio Isaf, Llanerchymedd, LL71 7BH",
  "66 Buckland Avenue, Dover, CT16 2NW",
  "Thorne Barton Farmhouse, Chesham Road, Ashley Green, HP5 3PQ",
  "66 Crown Road, Twickenham, TW1 3ER",
  "4 Rossetti Court, Lyell Road, Birchington, CT7 9JE",
  "Michelham Gate, Michelham Priory Road, Upper Dicker, BN27 3QR",
  "1 The Old School House, Brickwall Lane, Liverpool, L29 9AD",
  "39 Thorne Street, London, SW13 0PT",
  "168 Timken Way North, Duston, NN5 6WF",
  "44 Blackberry Walk, Lychpit, RG24 8SN",
  "8 Priory Road, Chilton Polden, TA7 9EH",
  "Westwynds, Old Mains Lane, Poulton-Le-Fylde, FY6 7LA",
  "28 Square Road, Todmorden, OL14 7SU",
  "584 Malling Road, Kings Hill, ME19 4PU",
  "2 Jordan Orchard, Buckfastleigh, TQ11 0NG",
  "Old Forge, Stiffords Bridge, Cradley, WR13 5NN",
  "9 Ball Walk, Hyde, SK14 3PY",
  "1 Milburn Court, Brampton, CA8 1NE",
  "7 St Michaels Close, Erith, DA18 4DY",
  "9 Garden Court, Hanworth Road, Hampton, TW12 3EH",
  "8 George Street, Brunswick Village, NE13 7ED",
  "4 School Road, Hurst, RG10 0DR",
  "117 Yonder Street, Ottery St Mary, EX11 1HH",
  "17 Dunveth Business Park, Wadebridge, PL27 7FE",
  "5 Suddards Fold, Bradford, BD7 3LQ",
  "146 Park Road, Westhoughton, BL5 3DD",
  "8 Wyedale Close, Buxton, SK17 9RF",
  "Flat 21, Maltings Court, Hoe Lane, Ware, SG12 9LS",
  "18 Ripley Drive, Harrogate, HG1 3JD",
  "41 Hays Mews, London, W1J 5QA",
  "52 St Albans Drive, Stevenage, SG1 4RU",
  "Fields Cottage, Field Lane, Bishops Castle, SY9 5AG",
  "3 Whinmoor Walk, Manchester, M40 5NX",
  "The Qube, Windward Way, Middlesbrough, TS2 1QG",
  "65 Ashburnham Road, Southend-On-Sea, SS1 1QE",
  "56A London Road, Tonbridge, TN10 3DE",
  "49 Glentworth Gardens, Wolverhampton, WV6 0SH",
  "16 Tarrants Hill, Hungerford, RG17 0BL",
  "20 Lagoon Road, Bognor Regis, PO21 4TJ",
  "24 Waterloo Street, Cheltenham, GL51 9BT",
  "Church Farm House, Winsley, BA15 2JH",
  "21 Stanmore Gardens, Richmond, TW9 2HN",
  "69 Teddington Grove, Perry Barr, B42 1RG",
  "36 Rydal Avenue, Fleetwood, FY7 7JU",
  "Devon House, Water Street, Menai Bridge, LL59 5DD",
  "26 Algarth Road, Pocklington, YO42 2HP",
  "12 Bramble Gardens, Worcester, WR5 1SQ",
  "132 Bolton Road, Turton, BL7 0AE",
  "25 Wellfarm Close, Walton, L9 6GD",
  "14 Swancote Green, Bracknell, RG12 7BJ",
  "30 Commercial Street, Middlesbrough, TS2 1JW",
  "Oakdene, Dunmow Road, Rayne, CM77 6SF",
  "7A High Street, Eccleshall, ST21 6BW"
]

puts "Creating user..."

user = User.create(first_name: 'test', last_name: 'test', email: 'test@test.com', password: '123456')
user.save!

puts 'User Seed Complete!'

locations = [
  "14 Church Lane, London, N48 1OA", "9801 Main Road, London, N18 7ZX", "80 Church Street, London, SE69 8NU",
  "9176 Church Street, London, WC65 8BI", "13 Kings Road, London, SE03 8AK", "2 West Street, London, N86 3ZE",
  "87 Station Road, London, EC23 7KG", "1 Victoria Road, London, EC05 7LS", "84 Green Lane, London, SE68 3WP",
  "333 The Avenue, London, WC86 2WQ",
  "Flat 28, St. Peters House, Queens Row, London, SE17 2PT",
  "1 Cawley Lane, Heckmondwike, WF16 0BJ",
  "26 Rowe Avenue, Peacehaven, BN10 7PF",
  "8 Beaufort Close, Plymouth, PL5 1AR",
  "6 Kingsmoor Road, Harlow, CM19 4HR",
  "24 Hood Close, Sleaford, NG34 7WJ",
  "8 Fitzroy Court, Bartlett Crescent, High Wycombe, HP12 3DW",
  "Rose Villa, Cherry Chase, Tiptree, CO5 0AE",
  "Flat A-C, 122 Whitechapel Road, London, E1 1JE",
  "2 May Pasture, Great Shelford, CB22 5FA",
  "Woodville Surgery, Burton Road, Woodville, DE11 7JG",
  "Flat 1, Highcroft, 30 Old Lodge Lane, Purley, CR8 4DF",
  "81 Wakefield Road, Streethouse, WF7 6BT",
  "N E C House, Bickenhill Lane, Birmingham, B40 1PQ",
  "Vaddicott Corner, Shebbear, EX21 5QT",
  "33 Moorland Avenue, Milnrow, OL16 3DZ",
  "Trevithal An Mor, Paul, TR19 6UQ",
  "38 Weigall Road, London, SE12 8HE",
  "1 Newbridge Cottages, Newbridge, PL18 9LH",
  "122 Light Oaks Road, Salford, M6 8WL",
  "3 Harley Way, Bridgnorth, WV16 5PA",
  "50 Albion Crescent, Lincoln, LN1 1EB",
  "79D Forest Road, Colchester, CO4 3XH",
  "21 Ffordd Y Ffynnon, Bangor, LL57 1HB",
  "3 Hollygate Close, Melton Mowbray, LE13 1HD",
  "13 Flan Close, Ulverston, LA12 7DW",
  "34A Salisbury Street, Amesbury, SP4 7HD",
  "2 Palmers Lodge Cottages, Garlinge Green Road, Petham, CT4 5RL",
  "Kerseycleugh, Kielder, NE48 1EN",
  "The Granary, The Causeway, Mark, TA9 4QJ",
  "80 Leamington Drive, Sutton-In-Ashfield, NG17 5BJ",
  "6 Civic Court, Hebburn, NE31 2YB",
  "43 Strand Meadow, Burwash, TN19 7BP",
  "31 Pepper Hill, Northfleet, DA11 8EW",
  "86 Church Close, Stanton By Bridge, DE73 7GH",
  "13 Martin Close, Bedford, MK41 7JY",
  "Mandalay, Waberthwaite, LA19 5YL",
  "First Floor North, 10 Furnival Street, London, EC4A 1AB",
  "10 Kammond Avenue, Seaford, BN25 3JL",
  "Station House, Breedon Road, Worthington, LE65 1RA",
  "Lanscove, The Coombes, Polperro, PL13 2RG",
  "Unit 6 Mendip Vale Trading Estate, Cheddar, BS27 3EL",
  "8C Bowes Road, Middlesbrough, TS2 1LU",
  "3 Thicket Walk, Thornbury, BS35 2JN",
  "21 Beech Road, East Malling, ME19 6DH",
  "Bod Thelwal, 2 Bay View Road, Benllech, LL74 8TT",
  "12 Stainer Close, Witham, CM8 1RU",
  "69 Princess Way, Stourport-On-Severn, DY13 0EL",
  "42 Patterdale Road, Blyth, NE24 5JX",
  "30 Ollerton Road, Retford, DN22 7TQ",
  "Ceidio Isaf, Llanerchymedd, LL71 7BH",
  "66 Buckland Avenue, Dover, CT16 2NW",
  "Thorne Barton Farmhouse, Chesham Road, Ashley Green, HP5 3PQ",
  "66 Crown Road, Twickenham, TW1 3ER",
  "4 Rossetti Court, Lyell Road, Birchington, CT7 9JE",
  "Michelham Gate, Michelham Priory Road, Upper Dicker, BN27 3QR",
  "1 The Old School House, Brickwall Lane, Liverpool, L29 9AD",
  "39 Thorne Street, London, SW13 0PT"
]


puts "Creating dogs..."

file = URI.open('https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2021/11/10093442/Pug-puppy-sitting-outdoors.jpg')
file_two = URI.open('https://www.loveyourdog.com/wp-content/uploads/2020/12/Pug-Standing-on-Tree-Branch-900x500.jpg')
file_three = URI.open('https://scratchandpatch.co.uk/wp-content/uploads/2020/09/pexels-amit-talwar-3813324-1024x683.jpg')
dog = Dog.create(
  user: user,
  name: 'Nacho',
  breed: 'Pug',
  age: 5,
  description: "Very friendly and relaxed pug. Likes going on 1 to 2 walks a day. Has a good appetite!",
  price: 10,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!


file = URI.open('https://www.allthingsdogs.com/wp-content/uploads/2019/08/Black-Pug.jpg')
file_two = URI.open('https://live.staticflickr.com/78/166407398_1885ab77e9_h.jpg')
file_three = URI.open('https://www.thegoodypet.com/wp-content/uploads/2022/02/black-pug-a-complete-guide-to-this-pug-breed.jpg')
dog = Dog.create(
  user: user,
  name: 'Penelope',
  breed: 'Pug',
  age: 8,
  description: "Super playful and friendly pug, happy with one big walk. Enjoys cuddles and snoozes",
  price: 9,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!


file = URI.open('https://i.pinimg.com/564x/34/9f/70/349f70d3708f09b7d90e857827ffbaf2.jpg')
file_two = URI.open('https://i.pinimg.com/564x/f5/85/64/f58564373a05e39a1cb9e49344d7b11b.jpg')
file_three = URI.open('https://i.pinimg.com/736x/5a/18/8d/5a188d92bafa4d9c2e5c441f29effe41.jpg')
dog = Dog.create(
  user: user,
  name: 'Linda',
  breed: 'Pug',
  age: 2,
  description: "Young, happy and energitic pug. Super friendly with humans and other dogs. Likes to go on atleast two walks a day",
  price: 7,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/9f/a8/cd/9fa8cde88e378795feeef79f4746167b.jpg')
file_two = URI.open('https://i.pinimg.com/564x/89/63/67/89636728772534a4a9e01cc074fbdb53.jpg')
file_three = URI.open('https://i.pinimg.com/564x/0d/8c/c1/0d8cc199f1ef16ebc64fa45e53a86902.jpg')
dog = Dog.create(
  user: user,
  name: 'Susi',
  breed: 'border Terrier ',
  age: 1,
  description: "Very energetic and super friendly border. Great with people and other dogs, needs 2 walks a day. Will be very relaxed at home",
  price: 9,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!


file = URI.open('https://i.pinimg.com/736x/8e/51/b3/8e51b3859141f8740ce20662f8625900.jpg')
file_two = URI.open('https://i.pinimg.com/564x/24/08/e7/2408e714a3d4bf35b042cfc721974a98.jpg')
file_three = URI.open('https://i.pinimg.com/564x/1b/93/4d/1b934d1449a35c8cf097887f4a18b33d.jpg')
dog = Dog.create(
  user: user,
  name: 'Toast',
  breed: 'border Terrier ',
  age: 2,
  description: "Very content and playful young terrier. Great walking companion, content to go on long or short walks. Very chilled at home",
  price: 7,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/89/8e/2d/898e2dcb3da9b57e0d6d95c5b810dc2b.jpg')
file_two = URI.open('https://i.pinimg.com/564x/58/43/1f/58431f8cf66e762bb5abb373624735a3.jpg')
file_three = URI.open('https://i.pinimg.com/564x/85/03/61/8503618caf0742867417c4c1bc237b86.jpg')
dog = Dog.create(
  user: user,
  name: 'Uri',
  breed: 'border Terrier ',
  age: 5,
  description: "Mature and relaxed, but needs atleast one big walk a day. Great with new people, quit greedy, loves a snack!",
  price: 7,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!


file = URI.open('https://i.pinimg.com/564x/ae/84/f6/ae84f6161c1dd2448f30d8aa2fc36fd6.jpg')
file_two = URI.open('https://i.pinimg.com/564x/b6/c6/5c/b6c65c06621715affbcfb15232907309.jpg')
file_three = URI.open('https://i.pinimg.com/564x/89/d6/34/89d634d2072869c530e1c8b4e320552f.jpg')
dog = Dog.create(
  user: user,
  name: 'Ronnie',
  breed: 'Dachshund',
  age: 3,
  description: "Very cute and friendy sausage dog, likes to play and needs atleast one big walk a day",
  price: 11,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/b4/15/ae/b415ae29b281460845b2f1d7baca6c1c.jpg')
file_two = URI.open('https://i.pinimg.com/564x/90/ba/c3/90bac32a93c590ab446bad3e6d6dfcc6.jpg')
file_three = URI.open('https://i.pinimg.com/564x/8b/40/11/8b401161aca814dc0b848f5f58fd5bb3.jpg')
dog = Dog.create(
  user: user,
  name: 'Freya',
  breed: 'Dachshund',
  age: 6,
  description: "Well behaved and friendly, great with kids and loves to play",
  price: 10,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/59/35/ce/5935ced2ff3190d84b024f0052767392.jpg')
file_two = URI.open('https://i.pinimg.com/564x/c6/1b/06/c61b069dc869f9a0611ca6cb100ca7e9.jpg')
file_three = URI.open('https://i.pinimg.com/564x/05/0e/66/050e661eb4218f65d3661a109c56dacd.jpg')
dog = Dog.create(
  user: user,
  name: 'Dave',
  breed: 'Labrador',
  age: 9,
  description: "Super friendly and chilled, happy with only one or two short daily walks, loves an afternoon snooze and lots of dog treats",
  price: 6,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/cf/8e/04/cf8e047c3628ff76ceaf6657af11e2da.jpg')
file_two = URI.open('https://i.pinimg.com/564x/38/41/62/384162945ebdc780bd9ec2e35c5c84d5.jpg')
file_three = URI.open('https://i.pinimg.com/564x/1d/47/1b/1d471bcbc897f5488ef3c8e10f04ba92.jpg')
dog = Dog.create(
  user: user,
  name: 'Stella',
  breed: 'Labrador',
  age: 1,
  description: "Playful and friendly, young lab. Loves to meet new people and other dogs",
  price: 12,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!


file = URI.open('https://i.pinimg.com/564x/d2/5e/e8/d25ee8a822560f22e5bc05334d6dfc7f.jpg')
file_two = URI.open('https://i.pinimg.com/564x/01/a3/d0/01a3d02a2e2da98e4d2b2b97c0e31144.jpg')
file_three = URI.open('https://i.pinimg.com/564x/cd/fd/54/cdfd54d9e6a6e46c4e94457ae46d191a.jpg')
dog = Dog.create(
  user: user,
  name: 'Kai',
  breed: 'Shiba Inu',
  age: 3,
  description: "Confident and alert, but playful. Can be a bit wary of other dogs, but is overall very friendly",
  price: 9,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/736x/33/69/fe/3369fe2996d8c5c0dbd47ac714829feb.jpg')
file_two = URI.open('https://i.pinimg.com/564x/71/01/c4/7101c4221720cde8ecac1312e71472ea.jpg')
file_three = URI.open('https://i.pinimg.com/564x/35/c4/d3/35c4d34e0d1880cf70b174d91a749570.jpg')
dog = Dog.create(
  user: user,
  name: 'Bella',
  breed: 'Shiba Inu',
  age: 5,
  description: "Very friendly and energetic, requires two 30 minute plus walks and day and will be relaxed in between, very cuddly",
  price: 11,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/736x/33/69/fe/3369fe2996d8c5c0dbd47ac714829feb.jpg')
file_two = URI.open('https://i.pinimg.com/564x/71/01/c4/7101c4221720cde8ecac1312e71472ea.jpg')
file_three = URI.open('https://i.pinimg.com/564x/35/c4/d3/35c4d34e0d1880cf70b174d91a749570.jpg')
dog = Dog.create(
  user: user,
  name: 'Kiko',
  breed: 'Shiba Inu',
  age: 13,
  description: "Super chilled older Shibu Inu. Mature and very friendly with all people and other dogs. Needs one walk a day",
  price: 7,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/9d/23/a8/9d23a8efb6a0893254841d67ac231c66.jpg')
file_two = URI.open('https://i.pinimg.com/564x/57/48/c6/5748c6f1af2552255171bdd79ff65cd2.jpg')
file_three = URI.open('https://i.pinimg.com/564x/7d/ca/aa/7dcaaac25ade0a8d93d68369d479ace8.jpg')
dog = Dog.create(
  user: user,
  name: 'Jill',
  breed: 'Poodle',
  age: 4,
  description: "Very friendly and content poodle. Likes one big and one small walk a day, loves playing catch!",
  price: 13,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/87/77/ec/8777ec7e1563c98cf0932c1f1a6d0d73.jpg')
file_two = URI.open('https://i.pinimg.com/564x/e0/76/70/e076705145a6ef5581154625925b8713.jpg')
file_three = URI.open('https://i.pinimg.com/564x/4b/b3/fa/4bb3fad0011edd9394ceb14b078c81c5.jpg')
dog = Dog.create(
  user: user,
  name: 'Pappy',
  breed: 'Poodle',
  age: 2,
  description: "Super happy and confident poodle, loves to play and meet new dogs and people. Ideally has two big walks a day",
  price: 9,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/68/9c/d4/689cd4eadafb6a67f066c9f7a0b03b9d.jpg')
file_two = URI.open('https://i.pinimg.com/564x/6d/b2/01/6db20180469ef699775f740c9f30507c.jpg')
file_three = URI.open('https://i.pinimg.com/564x/c9/4f/e0/c94fe042f350b489fd862deafeba5972.jpg')
dog = Dog.create(
  user: user,
  name: 'Twingo',
  breed: 'Poodle',
  age: 5,
  description: "Very relaxed and friendly. Happy for two small walks a day, but does like to play at home. Good with kids",
  price: 12,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/f7/cf/c6/f7cfc68addf4c4f051530f1961adf8b8.jpg')
file_two = URI.open('https://i.pinimg.com/564x/0e/ce/dc/0ecedcc96116d308b33063f23bee23c8.jpg')
file_three = URI.open('https://i.pinimg.com/564x/f4/ee/ad/f4eead3770aecb8f01f1c8381dadffee.jpg')
dog = Dog.create(
  user: user,
  name: 'Bruce',
  breed: 'German Shepherd',
  age: 7,
  description: "Generally very friendly and loving with other dogs but does have his moments, suited to experienced dog owners, happy with one big walk a day",
  price: 12,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/0b/25/d9/0b25d9d1517ed3c38db33217affe0639.jpg')
file_two = URI.open('https://i.pinimg.com/564x/62/fc/0c/62fc0c4a1a4dba6781d9dbd5f878b7e3.jpg')
file_three = URI.open('https://i.pinimg.com/736x/03/38/47/033847eea036d1c06e0c7f787de2fcd9.jpg')
dog = Dog.create(
  user: user,
  name: 'Mae',
  breed: 'German Shepherd',
  age: 3,
  description: "A big softie, very cuddly and friendly. Very submissive and approachable, loves to play. Needs two walks a day minimum",
  price: 8,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/bd/00/6f/bd006fcadf06f7404e0facc2121877b7.jpg')
file_two = URI.open('https://i.pinimg.com/750x/10/b4/c8/10b4c899ae91bdf1169f67318ae962e4.jpg')
file_three = URI.open('https://i.pinimg.com/564x/d5/fb/88/d5fb8868d126eeb7b0b4125c50cc5a1d.jpg')
dog = Dog.create(
  user: user,
  name: 'Feddie',
  breed: 'French Bulldog',
  age: 2,
  description: "Very energetic and overall very friendly, is a rescue and can be wary of other dogs but is getting more confident",
  price: 7,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!

file = URI.open('https://i.pinimg.com/564x/16/52/89/16528989bac5df694663f9c4984636ee.jpg')
file_two = URI.open('https://i.pinimg.com/564x/28/da/d7/28dad7d6f817e100e9b2fa6247d2638b.jpg')
file_three = URI.open('https://i.pinimg.com/564x/b4/37/07/b437072dfb2e41f28db0c8be7fd95f6b.jpg')
dog = Dog.create(
  user: user,
  name: 'Basil',
  breed: 'French Bulldog',
  age: 8,
  description: "Submmisive and very good natured, playful needing two walks a day. Has a good appetite",
  price: 8,
  location: locations.sample
)
dog.photos.attach(io: file, filename: 'little_pug.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_two, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')
dog.photos.attach(io: file_three, filename: 'little_pug1.jpeg', content_type: 'image/jpeg')

dog.save!





# locations.each do |location|
#   dog = Dog.create!(
#     name: Faker::Creature::Dog.name,
#     breed: Faker::Creature::Dog.breed,
#     age: Faker::Number.within(range: 1..15),
#     description: Faker::Creature::Dog.meme_phrase,
#     price: Faker::Commerce.price(range: 3..20.0, as_string: true),
#     location: addresses.sample,
#     user: User.last
#   )
# end
puts 'Dog Seed Complete!'
