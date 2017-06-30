class Detail < ActiveRecord::Base
  has_many :groupings
  has_many :items, through: :groupings

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Detail.create! row.to_hash
    end
  end
end
