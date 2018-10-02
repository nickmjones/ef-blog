require 'faker'

p "Creating authors..."
Author.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('authors')
authors = Author.create(
  [
    {email: 'lauren.taylor@eventfarm.com', password: '1234567e'},
    {email: 'staff@eventfarm.com', password: '1234567e'}
  ]
)

p "Creating posts..."
Post.destroy_all
ActiveRecord::Base.connection.reset_pk_sequence!('posts')
30.times do
  Post.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(12, false, 8),
    meta_desc: Faker::Lorem.sentence,
    meta_keys: 'foo, bar, bat, baz',
    created_at: DateTime.now,
    author_id: 1
    )  
end
p "Done."