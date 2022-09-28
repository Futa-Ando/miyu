# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create ([
    {name: "A", iden: 0},
    {name: "B", iden: 0},
    {name: "C", iden: 0},
    {name: "A-A", iden: 1},
    {name: "A-B", iden: 1},
    {name: "A-C", iden: 1},
    {name: "B-A", iden: 2},
    {name: "B-B", iden: 2},
    {name: "B-C", iden: 2},
    {name: "C-A", iden: 3},
    {name: "C-B", iden: 3},
    {name: "A-A-A", iden: 4},
    {name: "A-A-B", iden: 4},
    {name: "A-B-A", iden: 5},
    {name: "A-B-B", iden: 5},
])