class Tagmap < ApplicationRecord
  belong_to :user
  belong_to :tag
end
