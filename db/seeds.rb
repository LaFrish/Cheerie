# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

require_relative './feeling_data.rb'
require_relative './cheerup_data.rb'

Feeling.destroy_all
Cheerup.destroy_all

feeling_data = get_feeling_data()
cheerup_data = get_cheerup_data()


  end
end
