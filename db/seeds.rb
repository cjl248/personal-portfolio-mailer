# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mails = [
  { name: "chris", email: "chris@gmail.com", subject: "message1", text: "text1" },
  { name: "julian", email: "julian@gmail.com", subject: "message2", text: "text for2" },
  { name: "liendo", email: "liendo@gmail.com", subject: "message3", text: "text for this3" },
  { name: "elisa", email: "elisa@gmail.com", subject: "message4", text: "text for this message4" },
]
mails.map {|mail| FormMail.create(mail)}
