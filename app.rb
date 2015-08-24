require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
require('./lib/project')
require('./lib/employee')
also_reload('lib/**/*.rb')
require('pg')

get '/' do
  @projects = Project.all()
  erb(:index)
end

post '/project/new' do
  name = params.fetch("name")
  description = params.fetch("description")
  new_project = Project.new({:name => name, :description =>description })
  new_project.save()

  @projects = Project.all()
  redirect('/')
end

get '/project/:id' do
  @one_project = Project.find(params.fetch('id').to_i())
  erb(:project)
end
