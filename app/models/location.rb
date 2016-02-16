class Location < ActiveRecord::Base
has_many :directions
has_many :locations, through: :directions
end
