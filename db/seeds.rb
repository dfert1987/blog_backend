# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Blog.create(title: "Bears make me sad", subtitle: 'Very very sad', body: 'boo hoo', mainImage: 'https://cdn.vox-cdn.com/thumbor/2hh0PkPPn8yIcjtylsRRxCDB5jA=/60x0:677x411/1400x1400/filters:focal(60x0:677x411):format(jpeg)/cdn.vox-cdn.com/uploads/chorus_image/image/47277282/Bears.0.0.jpg', category: 'Bears', tagOne: 'sad', tagTwo: 'offseason', tagThree: 'predraft', thumbsUp: 15, thumbsDown: 5, author: 'david')
Blog.create(title: "Joc Stinks", subtitle: 'Strike out central', body: 'cool stache though', mainImage: 'https://853504.smushcdn.com/1833116/wp-content/uploads/2020/02/joc-pederson-640x430.jpeg?lossy=1&strip=1&webp=1', category: 'Cubs', tagOne: 'joc peterson', tagTwo: 'hitting', tagThree: 'slump', thumbsUp: 1, thumbsDown: 0, author: 'david')
Blog.create(title: "The Snake's still got it: Even the shell of the 2015 ace is still pretty damn good.", subtitle: 'Even the shell of the 2015 ace is still pretty damn good.', mainImage: 'https://wgntv.com/wp-content/uploads/sites/5/2021/04/gettyimages-1310637848-594x594-1.jpg?w=594', category: 'Cubs', tagOne:'Jake Arieta', tagTwo: 'pitching', tagThree: 'starters', thumbsUp: 1, thumbsDown: 0, author: 'david')
Blog.create(title: "Bulls top Celts: Post-Trade Mojo sighting?", subtitle: 'Post-Trade Mojo sighting?', body: 'nope no mojo', mainImage: 'https://www.tsn.ca/polopoly_fs/1.1626464!/fileimage/httpImage/image.jpg_gen/derivatives/landscape_620/nikola-vucevic.jpg', category: 'Bulls', tagOne: 'trade', tagTwo: 'Vucevic', tagThree: 'deadline', thumbsUp: 1, thumbsDown: 0, author: 'david')
Blog.create(title: "Some like it hot...the Cubs don't: Why the heater has Cubs bats baffled.", subtitle: 'Why the heater has Cubs bats baffled.', body: 'duffy to the rescue', mainImage: 'https://www.cubshq.com/ezoimgfmt/2cic.nyc3.cdn.digitaloceanspaces.com/c/stories/19/baseball/baez_sad_brett_davis.jpg?ezimgfmt=ng:webp/ngcb10', category: 'Cubs', tagOne: 'hitting', tagTwo: 'slump', tagThree: 'offense', thumbsUp: 1, thumbsDown: 0, author: 'david')
Blog.create(title: "Be Nice to Andy: It's not his fault.", subtitle: 'Its not his fault', body: 'leave red rocket alone', mainImage: 'https://cdn.vox-cdn.com/thumbor/NCjh7SFts2SzVpkOO88Yheo3_GM=/0x0:3342x5013/1200x800/filters:focal(1696x1083:2230x1617)/cdn.vox-cdn.com/uploads/chorus_image/image/66732797/usa_today_13828958.0.jpg', category: 'Bears', tagOne: 'Andy Dalton', tagTwo: 'QB', tagThree: 'Ryan Pace', thumbsUp: 1, thumbsDown: 0, author: 'david')
Blog.create(title: "Theis Theis Baby: What's Not to like about the new German?", subtitle: 'Whats not to like about the new German', body:'greatest dunker ever?', mainImage: 'https://clutchpoints.com/wp-content/uploads/2021/03/Celtics-Bulls-Daniel-Theis.jpg', category: 'Bulls', tagOne: 'Daniel Theies', tagTwo: 'Trade', tagThree: 'Germany', thumbsUp: 1, thumbsDown: 0, author: 'david')

User.create(username: "MeatballKing", password: 'Trogdor4', email: 'davidj.fertitta@gmail.com', avatar: 'https://i.imgur.com/VHwGqaB.jpg', first_name: 'David', last_name: 'Fertitta', address_line_1: '2840 Blake St.', address_line_two: '', city: 'Denver', state: 'CO', address: '2840 Blake St. Denver CO', twitter: 'https://twitter.com/FertittaDavid', name: 'David Fertitta', dob: '09/14/1987', admin: true, about: '')


# COMMENTS 
# EACH COMMENT HAS A BLOG, A USER, UPVOTE, DOWNVOTE, TEXT


#REPLIES
#EACH REPLY HAS A COMMENT, A USER, UPVOTE, DOWNVOTE