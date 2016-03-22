# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# require_relative './feeling_data.rb'
# require_relative './cheerup_data.rb'

Feeling.destroy_all
Cheerup.destroy_all

bore = Feeling.create({name: "Bored"})
stress = Feeling.create({name: "Stressed"})
sadness = Feeling.create({name: "Sad"})
frustrate = Feeling.create({name: "Frustrated"})
anger = Feeling.create({name: "Angry"})
serious = Feeling.create({name: "Seriously"})

boredimg = Cheerup.create({name: "bored.gif", img_url: "/assets/bored/bored.gif", data_type: "img", feeling: bore})

bored1 = Cheerup.create({name: "bored.gif", img_url: "/assets/bored/bored.gif", data_type: "gif", feeling: bore})

bored2 = Cheerup.create({name: "bored_1.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling: bore})

bored3 = Cheerup.create({name: "bored_2.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling: bore})

bored4 = Cheerup.create({name: "bored_3.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling: bore})

bored5 = Cheerup.create({name: "bored_4.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling: bore})

bored6 = Cheerup.create({name: "bored_5.gif", img_url: "/assets/bored/bored_5.gif", data_type: "gif", feeling: bore})

bored_home = Cheerup.create({name: "bored_home.gif", img_url: "/assets/bored/bored_home.gif", data_type: "gif", feeling: bore})

stressed1 = Cheerup.create({name: "stressed_1.gif", img_url: "/assets/stressed/stressed_1.gif", data_type: "gif", feeling: stress})

stressed2 = Cheerup.create({name: "stressed_2.gif", img_url: "/assets/stressed/stressed_2.gif", data_type: "gif", feeling: stress})

stressed3 = Cheerup.create({name: "stressed_3.gif", img_url: "/assets/stressed/stressed_3.gif", data_type: "gif", feeling: stress})

stressed4 = Cheerup.create({name: "stressed_4.gif", img_url: "/assets/stressed/stressed_41.gif", data_type: "gif", feeling: stress})

stressed5 = Cheerup.create({name: "stressed_5.gif", img_url: "/assets/stressed/stressed_5.gif", data_type: "gif", feeling: stress})

sad1 = Cheerup.create({name: "sad_1.gif", img_url: "/assets/sad/sad_1.gif", data_type: "gif", feeling: sadness})

sad2 = Cheerup.create({name: "sad_2.gif", img_url: "/assets/sad/sad_2.gif", data_type: "gif", feeling: sadness})

sad3 = Cheerup.create({name: "sad_3.gif", img_url: "/assets/sad/sad_3.gif", data_type: "gif", feeling: sadness})

sad4 = Cheerup.create({name: "sad_4.gif", img_url: "/assets/sad/sad_4.gif", data_type: "gif", feeling: sadness})

sad5 = Cheerup.create({name: "sad_5.gif", img_url: "/assets/sad/sad_5.gif", data_type: "gif", feeling: sadness})

frustrated1 = Cheerup.create({name: "frustrated_1.gif", img_url: "/assets/frustrated/frustrated_1.gif", data_type: "gif", feeling: frustrate})

frustrated2 = Cheerup.create({name: "frustrated_2.gif", img_url: "/assets/frustrated/frustrated_2.gif", data_type: "gif", feeling: frustrate})

frustrated3 = Cheerup.create({name: "frustrated_3.gif", img_url: "/assets/frustrated/frustrated_3.gif", data_type: "gif", feeling: frustrate})

frustrated4 = Cheerup.create({name: "frustrated_4.gif", img_url: "/assets/frustrated/frustrated_4.gif", data_type: "gif", feeling: frustrate})

frustrated5 = Cheerup.create({name: "frustrated_5.gif", img_url: "/assets/frustrated/frustrated_5.gif", data_type: "gif", feeling: frustrate})

angry1 = Cheerup.create({name: "angry_1.gif", img_url: "/assets/angry/angry_1.gif", data_type: "gif", feeling: anger})

angry2 = Cheerup.create({name: "angry_2.gif", img_url: "/assets/angry/angry_2.gif", data_type: "gif", feeling: anger})

angry3 = Cheerup.create({name: "angry_3.gif", img_url: "/assets/angry/angry_3.gif", data_type: "gif", feeling: anger})

angry4 = Cheerup.create({name: "angry_4.gif", img_url: "/assets/angry/angry_4.gif", data_type: "gif", feeling: anger})

angry5 = Cheerup.create({name: "angry_5.gif", img_url: "/assets/angry/angry_5.gif", data_type: "gif", feeling: anger})

seriously1 = Cheerup.create({name: "seriously_1.gif", img_url: "/assets/seriously/seriously_1.gif", data_type: "gif", feeling: serious})

seriously2 = Cheerup.create({name: "seriously_2.gif", img_url: "/assets/seriously/seriously_2.gif", data_type: "gif", feeling: serious})

seriously3 = Cheerup.create({name: "seriously_3.gif", img_url: "/assets/seriously/seriously_3.gif", data_type: "gif", feeling: serious})

seriously4 = Cheerup.create({name: "seriously_4.gif", img_url: "/assets/seriously/seriously_4.gif", data_type: "gif", feeling: serious})

seriously5 = Cheerup.create({name: "seriously_5.gif", img_url: "/assets/seriously/seriously_5.gif", data_type: "gif", feeling: serious})
