# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Movie.destroy_all
List.destroy_all
Bookmark.destroy_all
Movie.destroy_all
puts "creating movies"
movie_1 = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
movie_2 = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
movie_3 = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
movie_4 = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)
puts "completed"

puts "creating list"
list_1 = List.create(name: "Drama")
list_2 = List.create(name:"All time favourites")
list_3 = List.create(name:"Girl Power")
puts "list created"

# puts "#{list_1.id}"
# puts "#{movie_1.id}"

puts "creating bookmarks"
Bookmark.create(comment:"Recommended by John", movie_id: "#{movie_1.id}".to_i, list_id: "#{list_1.id}".to_i)
Bookmark.create(comment:"Superhero movie revisited", movie_id: "#{movie_2.id}".to_i, list_id: "#{list_3.id}".to_i )
Bookmark.create(comment:"2020 Release", movie_id: "#{movie_3.id}".to_i, list_id: "#{list_2.id}".to_i)
Bookmark.create(comment:"Recommended by Neelesh", movie_id: "#{movie_4.id}".to_i, list_id: "#{list_2.id}".to_i)
puts "bookmarks created"
