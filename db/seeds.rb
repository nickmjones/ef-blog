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