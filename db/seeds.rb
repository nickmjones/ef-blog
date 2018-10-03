require 'faker'

p "Creating authors..."
Author.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('authors')
Author.create(
    email: 'lauren.taylor@eventfarm.com', 
    password: '1234567e',
    full_name: 'Lauren Taylor',
    shortbio: 'Event Farm person'
)
Author.create(
    email: 'staff@eventfarm.com', 
    password: '1234567e',
    full_name: 'Event Farm Staff',
    shortbio: 'Event Farm people'
)
Author.create(
    email: 'nick.jones@eventfarm.com', 
    password: '1234567e',
    full_name: 'Nick Jones',
    shortbio: 'Event Farm person'
)

p "Creating posts..."
Post.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('posts')
5.times do
  Post.create(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(12, false, 8),
    meta_desc: Faker::Lorem.sentence,
    meta_keys: 'foo, bar, bat, baz',
    created_at: DateTime.now,
    author_id: 1
    )  
end
p "Done."