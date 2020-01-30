List.create!(title: 'List 1', description: 'For User 1', user: User.first)
Wish.create!(title: 'Wish 1', price: 111, comment: 'For list 1', list_id: 1)
Wish.create!(title: 'Wish 2', price: 22, comment: 'For list 1', list_id: 1)

List.create!(title: 'List 2', description: 'For User 1', user: User.first)
50.times{ |n| Wish.create!(title: 'test wish', price: 0, comment: 'example', list_id: 2) }

List.create!(title: 'List 3', description: 'For User 2', user: User.last)
Wish.create!(title: 'Wish 1', price: 111, comment: 'For list 3 user 2', list_id: 3)
Wish.create!(title: 'Wish 2', price: 22, comment: 'For list 3 user 2', list_id: 3)