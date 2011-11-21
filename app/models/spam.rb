class Spam
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :name,          :type => String
  field :email,         :type => String
  field :website,       :type => String
  field :content,       :type => String
  field :comment_type,  :type => String
  field :permalink,     :type => String
  field :user_ip,       :type => String
  field :user_agent,    :type => String
  field :referrer,      :type => String
  field :post_id,       :type => Integer

  belongs_to :post

  validates_presence_of :content

  attr_accessible :name, :email, :website, :content
end
