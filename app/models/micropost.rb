class Micropost < ActiveRecord::Base
	belongs_to :users
	has_many :comments	
	
	attr_accessible :title,:content,:category
	
	validates :user_id, :presence => true
	validates :title,    :presence => true,
						 :length => {:maximum =>500}							
	validates :content,  :presence => true,
						 :length => {:maximum =>3000}							
	validates :category, :presence => true


end
