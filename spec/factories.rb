require 'factory_girl'

Factory.define :user do |user|
  user.name 'Test User'
  user.email 'user@test.com'
  user.password 'please'
end

Factory.define :post do |post|
  post.title       'Post Title'
  post.content     'Some content to put here'
  post.author      'test user'
  post.markdown    'Some markdown'
  post.commentable true
  post.created_at  Time.now
  post.updated_at  Time.now
  post.posted_at   Time.now
end

Factory.define :comment do |comment|
  comment.name          'Some Name'
  comment.email         'example-01@example.com'
  comment.website       'www.example.com'
  comment.content       'Some content'
  comment.admin         false
  comment.association   :post
  comment.comment_type  'basic'
  comment.permalink     'perma_link'
  comment.user_ip       '127.0.0.1'
  comment.user_agent    'some_agent'
  comment.referrer      'google.com'
end
