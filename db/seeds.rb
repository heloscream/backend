# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
[
    {id: 1, title: 'test', url: '/test', summary:'aaaaa', description:'testing'},
    {id: 2, title: 'test1', url: '/test1', summary:'bbbbb', description:'testing'},
    {id: 3, title: 'test2', url: '/test2', summary:'ccccc', description:'testing'},
    {id: 4, title: 'test3', url: '/test3', summary:'ddddd', description:'testing'},
    {id: 5, title: 'test4', url: '/test4', summary:'eeeee', description:'testing'},

].each do |article|
  Article.create!(title: article[:title], url: article[:url], summary: article[:summary], description: article[:description])
end