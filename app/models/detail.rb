class Detail < ActiveRecord::Base
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Detail.create! row.to_hash
    end
  end
end
