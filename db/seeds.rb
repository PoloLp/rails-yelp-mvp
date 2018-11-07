# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
Restaurant.destroy_all

restaurants_attributes = [
  {
    name: "Polo's Place",
    address: '7 heaven cross ',
    category: 'belgian',
  },
  {
    name: 'Jacky Chan',
    address: '15 place des baguettes',
    category: 'chinese',
  },
  {
    name: 'Shrek west',
    address: '3 hole, Mud Place ',
    category:  'italian',
  },
  {
    name: 'GoKu Kamehameha',
    address: '125 small cloud',
    category:  'japanese',
  },
  {
    name: "L'ami Louis",
    address: '14 ile Saint Louis ',
    category:  'french',
  }
]

Restaurant.create!(restaurants_attributes)
