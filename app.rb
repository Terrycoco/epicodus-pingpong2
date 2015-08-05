require('sinatra')
require('sinatra/reloader')
require('./lib/pingpong')
also_reload('lib/**/*.rb')

get('/') do
 erb(:index)
end

get('/get_ping') do
    @get_ping = params.fetch('inputnumber').to_i.pingpong()
    erb(:results)
end
