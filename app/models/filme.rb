class Filme < ApplicationRecord
    # validations
   validates_presence_of :titulo, :created_by
end
