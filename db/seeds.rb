# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

# require_relative './feeling_data.rb'
# require_relative './cheerup_data.rb'

Feeling.destroy_all
Cheerup.destroy_all
Post.destroy_all
Tag.destroy_all

bore = Feeling.create({name: "Bored", tag: "Bored"})
stress = Feeling.create({name: "Stressed", tag: "Stressed"})
sadness = Feeling.create({name: "Sad", tag: "Sad"})
frustrate = Feeling.create({name: "Frustrated", tag: "Frustrated"})
anger = Feeling.create({name: "Angry", tag: "Angry"})
serious = Feeling.create({name: "Seriously", tag: "Seriously"})
