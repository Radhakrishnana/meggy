require 'rubygems'
require 'mixlib/cli'
require 'yaml'
#module Commands
  class IdentityCreate < Nm::Command

banner "Usage: ruby mycli.rb sub-command (options)"

  option :help,
    :short => "-h",
    :long => "--help",
    :description => "Show this message",
    :on => :tail,
    :boolean => true

  option :identity_name,
    :short => "-i USER",
    :long => "--identity_name IDENTITY_NAME",
    :description => "User's Identity Name(Account_name)"

    def run(args)
	id_create = IdentityCreate.new
	#id_create.parse_options
	#puts id_create.to_yaml
	puts "Identity Create"
	puts args
    end

  end
#end




