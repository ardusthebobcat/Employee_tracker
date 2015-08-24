class Employee < ActiveRecord::Base
  belongs_to(:project)
  # scope(:==, -> do
  #   where({:done => false})
  # end)
end
