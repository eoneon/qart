class Item < ActiveRecord::Base
  has_many :groupings
  has_many :details, through: :groupings

  accepts_nested_attributes_for :groupings, reject_if: proc { |attributes| attributes['detail_id'].blank? }
end
