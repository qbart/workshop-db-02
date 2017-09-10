class Xyz < ActiveRecord::Base
  self.table_name = :xyz

  def readonly?
    true
  end
end
