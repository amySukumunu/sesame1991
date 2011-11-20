class Comment < ActiveRecord::Base
  belongs_to :microposts
end
