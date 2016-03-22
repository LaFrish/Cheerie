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
frurstrate = Feeling.create({name: "Frustrated"})
angries = Feeling.create({name: "Angry"})
serious = Feeling.create({name: "Seriously"})

boredimg = Cheerup.create({name: "bored.gif", img_url: "/assets/bored/bored.gif", data_type: "img", feeling:bored})

bored1 = Cheerup.create({name: "bored.gif", img_url: "/assets/bored/bored.gif", data_type: "gif", feeling:bored})

bored2 = Cheerup.create({name: "bored_1.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling:bored})

bored3 = Cheerup.create({name: "bored_2.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling:bored})

bored4 = Cheerup.create({name: "bored_3.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling:bored})

bored5 = Cheerup.create({name: "bored_4.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling:bored})

bored6 = Cheerup.create({name: "bored_5.gif", img_url: "/assets/bored/bored_5.gif", data_type: "gif", feeling:bored})

bored_home = Cheerup.create({name: "bored_home.gif", img_url: "/assets/bored/bored_home.gif", data_type: "gif", feeling:bored})

stressed1 = Cheerup.create({name: "stressed_1.gif", img_url: "/assets/stressed/stressed_1.gif", data_type: "gif", feeling:stressed})

stressed2 = Cheerup.create({name: "stressed_2.gif", img_url: "/assets/stressed/stressed_2.gif", data_type: "gif", feeling:stressed})

stressed3 = Cheerup.create({name: "stressed_3.gif", img_url: "/assets/stressed/stressed_3.gif", data_type: "gif", feeling:stressed})

stressed4 = Cheerup.create({name: "stressed_4.gif", img_url: "/assets/stressed/stressed_41.gif", data_type: "gif", feeling:stressed})

stressed5 = Cheerup.create({name: "stressed_5.gif", img_url: "/assets/stressed/stressed_5.gif", data_type: "gif", feeling:stressed})

sad1 = Cheerup.create({name: "sad_1.gif", img_url: "/assets/sad/sad_1.gif", data_type: "gif", feeling:sad})

sad2 = Cheerup.create({name: "sad_2.gif", img_url: "/assets/sad/sad_2.gif", data_type: "gif", feeling:sad})

sad3 = Cheerup.create({name: "sad_3.gif", img_url: "/assets/sad/sad_3.gif", data_type: "gif", feeling:sad})

sad4 = Cheerup.create({name: "sad_4.gif", img_url: "/assets/sad/sad_4.gif", data_type: "gif", feeling:sad})

sad5 = Cheerup.create({name: "sad_5.gif", img_url: "/assets/sad/sad_5.gif", data_type: "gif", feeling:sad})

frustrated1 = Cheerup.create({name: "frustrated_1.gif", img_url: "/assets/frustrated/frustrated_1.gif", data_type: "gif", feeling:frustrated})

frustrated2 = Cheerup.create({name: "frustrated_2.gif", img_url: "/assets/frustrated/frustrated_2.gif", data_type: "gif", feeling:frustrated})

frustrated3 = Cheerup.create({name: "frustrated_3.gif", img_url: "/assets/frustrated/frustrated_3.gif", data_type: "gif", feeling:frustrated})

frustrated4 = Cheerup.create({name: "frustrated_4.gif", img_url: "/assets/frustrated/frustrated_4.gif", data_type: "gif", feeling:frustrated})

frustrated5 = Cheerup.create({name: "frustrated_5.gif", img_url: "/assets/frustrated/frustrated_5.gif", data_type: "gif", feeling:frustrated})

angry1 = Cheerup.create({name: "angry_1.gif", img_url: "/assets/angry/angry_1.gif", data_type: "gif", feeling:angry})

angry2 = Cheerup.create({name: "angry_2.gif", img_url: "/assets/angry/angry_2.gif", data_type: "gif", feeling:angry})

angry3 = Cheerup.create({name: "angry_3.gif", img_url: "/assets/angry/angry_3.gif", data_type: "gif", feeling:angry})

angry4 = Cheerup.create({name: "angry_4.gif", img_url: "/assets/angry/angry_4.gif", data_type: "gif", feeling:angry})

angry5 = Cheerup.create({name: "angry_5.gif", img_url: "/assets/angry/angry_5.gif", data_type: "gif", feeling:angry})

seriously1 = Cheerup.create({name: "seriously_1.gif", img_url: "/assets/seriously/seriously_1.gif", data_type: "gif", feeling:seriously})

seriously2 = Cheerup.create({name: "seriously_2.gif", img_url: "/assets/seriously/seriously_2.gif", data_type: "gif", feeling:seriously})

seriously3 = Cheerup.create({name: "seriously_3.gif", img_url: "/assets/seriously/seriously_3.gif", data_type: "gif", feeling:seriously})

seriously4 = Cheerup.create({name: "seriously_4.gif", img_url: "/assets/seriously/seriously_4.gif", data_type: "gif", feeling:seriously})

seriously5 = Cheerup.create({name: "seriously_5.gif", img_url: "/assets/seriously/seriously_5.gif", data_type: "gif", feeling:seriously})
