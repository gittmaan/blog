class Comment
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :name,          :type => String
  field :email,         :type => String
  field :website,       :type => String
  field :content,       :type => String
  field :admin,         :type => Boolean
  field :post_id,       :type => Integer
  field :comment_type,  :type => String
  field :permalink,     :type => String
  field :user_ip,       :type => String
  field :user_agent,    :type => String
  field :referrer,      :type => String

  validates_presence_of :content

  belongs_to :post

  attr_accessible :name, :email, :website, :content
end
