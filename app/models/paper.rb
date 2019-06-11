class Paper < ActiveRecord::Base
    has_many :submissions, dependent: :delete_all    
end
