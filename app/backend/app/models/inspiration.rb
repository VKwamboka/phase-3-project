class Inspiration < ActiveRecord::Base
    belongs_to :inspiration_author
    belongs_to :inspiration_category
end