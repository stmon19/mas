class Meeting < ActiveRecord::Base
  has_many :sessions
end
