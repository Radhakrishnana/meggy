require 'meggy/pug'
require 'rubygems'
require 'highline/import'
require 'mixlib/cli'

class  Auth #< Meggy::Pug

    include Mixlib::CLI

  option :username,
    :short => "-u",
    :long => "--username",
    :description => "Enter username",
	:required => true

  option :password,
    :short => "-p",
    :long => "--password",
    :description => "Enter Password",
	:required => true
	
  def run(args)
	login = Auth.new
	#login.parse_options
	username = ask("Enter your username:  ") { |q| q.echo = true }
	password = ask("Enter your password:  ") { |q| q.echo = "*" }
	puts "Hi #{username} welcome"
=begin
	puts "Action : #{args[0]}"
	puts "User Name : #{args[2]}"
	puts "Password : #{args[4]}"
	puts "Welcome  #{args[2]}"

    puts "Enter username : "
    @username = $stdin.gets
    @password = ask("Enter password: ") { |q| q.echo = false }
    puts "Logged in as : "+@username+@password
=end
  end
  
end


