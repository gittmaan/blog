require 'factory_girl'

Factory.define :user do |u|
  u.name 'Test User'
  u.email 'user@test.com'
  u.password 'please'
end

Factory.define :post do |p|
  p.title       'Post Title'
  p.content     'Some content to put here'
  p.author      'test user'
  p.markdown    'Some markdown'
  p.commentable true
  p.created_at  Time.now
  p.updated_at  Time.now
  p.posted_at   Time.now
end
