class Product < ActiveRecord::Base
	belongs_to :category, :dependent => :destroy
	validates :category, presence: true
	belongs_to :producer
end
