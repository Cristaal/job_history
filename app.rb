require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/jobs")
require('pry')

get('/') do
  erb(:index)
end

post("/success") do
  @job_one = params.fetch("job_one")
  @description_one = params.fetch("description_one")
  @job_two = params.fetch("job_two")
  @description_two = params.fetch("description_two")
  @job_three = params.fetch("job_three")
  @description_three = params.fetch("description_three")
  @job_four = params.fetch("job_four")
  @description_four = params.fetch("description_four")
  erb(:success)
end

# post("/add_form") do
#   extra_job = params.fetch("extra_job")
#   extra_description = params.fetch("extra_description")
#   extra_job = Jobs.new(extra_job, extra_description)
#   extra_job.save()
#   erb(:add_form)
# end
