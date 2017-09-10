class Abc < ActiveRecord::Base
  self.table_name = :abc

  def readonly?
    true
  end
end
