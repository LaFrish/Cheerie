# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# require_relative './feeling_data.rb'
# require_relative './cheerup_data.rb'

Feeling.destroy_all
Cheerup.destroy_all

# feeling_data = get_feeling_data()
# cheerup_data = get_cheerup_data()

bore = Feeling.create({name: "Bored"})
stress = Feeling.create({name: "Stressed"})
sadness = Feeling.create({name: "Sad"})
frurstrate = Feeling.create({name: "Frustrated"})
angries = Feeling.create({name: "Angry"})
serious = Feeling.create({name: "Seriously"})

boredimg = Cheerup.create({name: "bored.gif", img_url: "/assets/bored/bored.gif", data_type: "img", feeling:bore})

bored1 = Cheerup.create({name: "bored.gif", img_url: "/assets/bored/bored.gif", data_type: "gif", feeling:bore})

bored2 = Cheerup.create({name: "bored_1.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling:bore})

bored3 = Cheerup.create({name: "bored_2.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling:bore})

bored4 = Cheerup.create({name: "bored_3.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling:bore})

bored5 = Cheerup.create({name: "bored_4.gif", img_url: "/assets/bored/bored_1.gif", data_type: "gif", feeling:bore})

bored6 = Cheerup.create({name: "bored_5.gif", img_url: "/assets/bored/bored_5.gif", data_type: "gif", feeling:bore})

bored_home = Cheerup.create({name: "bored_home.gif", img_url: "/assets/bored/bored_home.gif", data_type: "gif", feeling:bore})

stressed1 = Cheerup.create({name: "stressed_1.gif", img_url: "/assets/bored/stressed_1.gif", data_type: "gif", feeling:bore})

stressed2 = Cheerup.create({name: "stressed_2.gif", img_url: "/assets/bored/stressed_2.gif", data_type: "gif", feeling:bore})

stressed3 = Cheerup.create({name: "stressed_3.gif", img_url: "/assets/bored/stressed_3.gif", data_type: "gif", feeling:bore})

stressed4 = Cheerup.create({name: "stressed_4.gif", img_url: "/assets/bored/stressed_41.gif", data_type: "gif", feeling:bore})

stressed5 = Cheerup.create({name: "stressed_5.gif", img_url: "/assets/bored/stressed_5.gif", data_type: "gif", feeling:bore})

sad1 = Cheerup.create({name: "sad_1.gif", img_url: "/assets/bored/sad_1.gif", data_type: "gif", feeling:bore})

sad2 = Cheerup.create({name: "sad_2.gif", img_url: "/assets/bored/sad_2.gif", data_type: "gif", feeling:bore})

sad3 = Cheerup.create({name: "sad_3.gif", img_url: "/assets/bored/sad_3.gif", data_type: "gif", feeling:bore})

sad4 = Cheerup.create({name: "sad_4.gif", img_url: "/assets/bored/sad_4.gif", data_type: "gif", feeling:bore})

sad5 = Cheerup.create({name: "sad_5.gif", img_url: "/assets/bored/sad_5.gif", data_type: "gif", feeling:bore})

frustrated1 = Cheerup.create({name: "frustrated_1.gif", img_url: "/assets/bored/frustrated_1.gif", data_type: "gif", feeling:bore})

frustrated2 = Cheerup.create({name: "frustrated_2.gif", img_url: "/assets/bored/frustrated_2.gif", data_type: "gif", feeling:bore})

frustrated3 = Cheerup.create({name: "frustrated_3.gif", img_url: "/assets/bored/frustrated_3.gif", data_type: "gif", feeling:bore})

frustrated4 = Cheerup.create({name: "frustrated_4.gif", img_url: "/assets/bored/frustrated_4.gif", data_type: "gif", feeling:bore})

frustrated5 = Cheerup.create({name: "frustrated_5.gif", img_url: "/assets/bored/frustrated_5.gif", data_type: "gif", feeling:bore})

angry1 = Cheerup.create({name: "angry_1.gif", img_url: "/assets/bored/angry_1.gif", data_type: "gif", feeling:bore})

angry2 = Cheerup.create({name: "angry_2.gif", img_url: "/assets/bored/angry_2.gif", data_type: "gif", feeling:bore})

angry3 = Cheerup.create({name: "angry_3.gif", img_url: "/assets/bored/angry_3.gif", data_type: "gif", feeling:bore})

angry4 = Cheerup.create({name: "angry_4.gif", img_url: "/assets/bored/angry_4.gif", data_type: "gif", feeling:bore})

angry5 = Cheerup.create({name: "angry_5.gif", img_url: "/assets/bored/angry_5.gif", data_type: "gif", feeling:bore})

seriously1 = Cheerup.create({name: "seriously_1.gif", img_url: "/assets/bored/seriously_1.gif", data_type: "gif", feeling:bore})

seriously2 = Cheerup.create({name: "seriously_2.gif", img_url: "/assets/bored/seriously_2.gif", data_type: "gif", feeling:bore})

seriously3 = Cheerup.create({name: "seriously_3.gif", img_url: "/assets/bored/seriously_3.gif", data_type: "gif", feeling:bore})

seriously4 = Cheerup.create({name: "seriously_4.gif", img_url: "/assets/bored/seriously_4.gif", data_type: "gif", feeling:bore})

seriously5 = Cheerup.create({name: "seriously_5.gif", img_url: "/assets/bored/seriously_5.gif", data_type: "gif", feeling:bore})
