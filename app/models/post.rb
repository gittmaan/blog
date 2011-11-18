class Post
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated

  field :title,       :type => String
  field :content,     :type => String
  field :author,      :type => String
  field :markdown,    :type => String
  field :commentable, :type => Boolean
  field :posted_at,   :type => Time

  validates_presence_of :title, :content

  attr_accessible :title, :content, :markdown, :author, :commentable

  def to_param
    #1st: Removes all non alphanumeric characters from the string.
		#2nd: No more than one of the separator in a row.
		#3rd: Remove leading/trailing separator.
    "#{id}-#{title.downcase.gsub(/[^a-zA-Z0-9]+/, '-').gsub(/-{2,}/, '-').gsub(/^-|-$/, '')}"
  end
end
