ENV['RACK-ENV'] = 'test'

require('rspec')
require('pg')
require('sinatra/activerecord')
require('project')
require('employee')

RSpec.configure do |config|
  config.after(:each) do
    Employee.all().each() do |employee|
      employee.destroy()
    end
    Project.all().each() do |project|
      project.destroy()
    end
  end
end
