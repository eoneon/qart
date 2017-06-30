class Grouping < ActiveRecord::Base
  belongs_to :detail
  belongs_to :item
end
