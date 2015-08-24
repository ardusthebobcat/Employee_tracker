require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
#require('./lib/task')
#require('./lib/list')
also_reload('lib/**/*.rb')
require('pg')

get '/' do
  erb(:index)
end
