class Direction < ActiveRecord::Base
belongs_to :origin
belongs_to :destination
end
