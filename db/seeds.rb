include RandomData

5.times do
   user = User.create!(
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all

15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all


50.times do
	Post.create!(
	  topic:  topics.sample,
	  user:   users.sample,
		title: RandomData.random_sentence, 
		body: RandomData.random_paragraph)
end
posts = Post.all

100.times do
	Comment.create!(
		post: posts.sample,
		body: RandomData.random_paragraph
		)
end

 user = User.first
 user.update_attributes!(
   email: 'anionrush@gmail.com', # replace this with your personal email
   password: 'Anionrush12'
 )

puts "Seed Finished"
puts "#{User.count} users created"
puts "#{Topic.count} topics created"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"