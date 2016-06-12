# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  # person = params[:person]
  "#{params[:person]} is a programmer, and #{params[:person]} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# release 0
# write a GET route that retrieves
# an address

get "/address" do
  "The student's address is #{params[:address]}"
end

# write a GET route that
# takes a name as a query parameter or else returns a generic phrase

get "/great_job" do
  name = params[:name]
  if name
    "Great job, #{name}!"
  else
    "Good job!"
  end
end

# write a GET route that
# adds two parameters together

get "/add/:num1/:num2" do
  sum = params[:num1].to_i + params[:num2].to_i
  sum.to_s
end

# write a GET route that
# searches the database for a certain criteria

get "/location/:thing" do
  list = db.execute("SELECT name FROM students WHERE campus=?", [params[:thing]])
  result = ""
  list.each do |person|
    result << "#{person["name"]}<br>"
  end
  result
end
