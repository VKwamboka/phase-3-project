class Poem < ActiveRecord::Base
    has_and_belongs_to_many :authors
    belongs_to :category

    # def authorName
    #     Author.all.select do |author|
    #         author.id == self.authors_id
    #     end
    # end
end