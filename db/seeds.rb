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

bored1 = Cheerup.create({name: "bored.gif", img_url: "file:///..app/assets/images/bored/bored.gif", data_type: "gif"})

bored2 = Cheerup.create({name: "bored_1.gif", img_url: "file:///..app/assets/images/bored/bored_1.gif", data_type: "gif"})

bored3 = Cheerup.create({name: "bored_2.gif", img_url: "file:///..app/assets/images/bored/bored_1.gif", data_type: "gif"})

bored4 = Cheerup.create({name: "bored_3.gif", img_url: "file:///..app/assets/images/bored/bored_1.gif", data_type: "gif"})

bored5 = Cheerup.create({name: "bored_4.gif", img_url: "file:///..app/assets/images/bored/bored_1.gif", data_type: "gif"})

bored6 = Cheerup.create({name: "bored_5.gif", img_url: "file:///..app/assets/images/bored/bored_5.gif", data_type: "gif"})

bored_home = Cheerup.create({name: "bored_home.gif", img_url: "file:///..app/assets/images/bored/bored_home.gif", data_type: "gif"})

stressed1 = Cheerup.create({name: "stressed_1.gif", img_url: "file:///..app/assets/images/bored/stressed_1.gif", data_type: "gif"})

stressed2 = Cheerup.create({name: "stressed_2.gif", img_url: "file:///..app/assets/images/bored/stressed_2.gif", data_type: "gif"})

stressed3 = Cheerup.create({name: "stressed_3.gif", img_url: "file:///..app/assets/images/bored/stressed_3.gif", data_type: "gif"})

stressed4 = Cheerup.create({name: "stressed_4.gif", img_url: "file:///..app/assets/images/bored/stressed_41.gif", data_type: "gif"})

stressed5 = Cheerup.create({name: "stressed_5.gif", img_url: "file:///..app/assets/images/bored/stressed_5.gif", data_type: "gif"})

sad1 = Cheerup.create({name: "sad_1.gif", img_url: "file:///..app/assets/images/bored/sad_1.gif", data_type: "gif"})

sad2 = Cheerup.create({name: "sad_2.gif", img_url: "file:///..app/assets/images/bored/sad_2.gif", data_type: "gif"})

sad3 = Cheerup.create({name: "sad_3.gif", img_url: "file:///..app/assets/images/bored/sad_3.gif", data_type: "gif"})

sad4 = Cheerup.create({name: "sad_4.gif", img_url: "file:///..app/assets/images/bored/sad_4.gif", data_type: "gif"})

sad5 = Cheerup.create({name: "sad_5.gif", img_url: "file:///..app/assets/images/bored/sad_5.gif", data_type: "gif"})

frustrated1 = Cheerup.create({name: "frustrated_1.gif", img_url: "file:///..app/assets/images/bored/frustrated_1.gif", data_type: "gif"})

frustrated2 = Cheerup.create({name: "frustrated_2.gif", img_url: "file:///..app/assets/images/bored/frustrated_2.gif", data_type: "gif"})

frustrated3 = Cheerup.create({name: "frustrated_3.gif", img_url: "file:///..app/assets/images/bored/frustrated_3.gif", data_type: "gif"})

frustrated4 = Cheerup.create({name: "frustrated_4.gif", img_url: "file:///..app/assets/images/bored/frustrated_4.gif", data_type: "gif"})

frustrated5 = Cheerup.create({name: "frustrated_5.gif", img_url: "file:///..app/assets/images/bored/frustrated_5.gif", data_type: "gif"})

angry1 = Cheerup.create({name: "angry_1.gif", img_url: "file:///..app/assets/images/bored/angry_1.gif", data_type: "gif"})

angry2 = Cheerup.create({name: "angry_2.gif", img_url: "file:///..app/assets/images/bored/angry_2.gif", data_type: "gif"})

angry3 = Cheerup.create({name: "angry_3.gif", img_url: "file:///..app/assets/images/bored/angry_3.gif", data_type: "gif"})

angry4 = Cheerup.create({name: "angry_4.gif", img_url: "file:///..app/assets/images/bored/angry_4.gif", data_type: "gif"})

angry5 = Cheerup.create({name: "angry_5.gif", img_url: "file:///..app/assets/images/bored/angry_5.gif", data_type: "gif"})

seriously1 = Cheerup.create({name: "seriously_1.gif", img_url: "file:///..app/assets/images/bored/seriously_1.gif", data_type: "gif"})

seriously2 = Cheerup.create({name: "seriously_2.gif", img_url: "file:///..app/assets/images/bored/seriously_2.gif", data_type: "gif"})

seriously3 = Cheerup.create({name: "seriously_3.gif", img_url: "file:///..app/assets/images/bored/seriously_3.gif", data_type: "gif"})

seriously4 = Cheerup.create({name: "seriously_4.gif", img_url: "file:///..app/assets/images/bored/seriously_4.gif", data_type: "gif"})

seriously5 = Cheerup.create({name: "seriously_5.gif", img_url: "file:///..app/assets/images/bored/seriously_5.gif", data_type: "gif"})
