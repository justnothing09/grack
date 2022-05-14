$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__) + '/lib')

use Rack::ShowExceptions

require 'grack/app'
require 'git/git_adapter'

config = {
  :project_root => 'path/to/bare/repositories',
  :allow_push => true,
  :git_path => '/usr/bin/git',
  :allow_pull => true,
  :git_adapter_factory => ->{ Grack::GitAdapter.new }
}  


run Grack::App.new(config)
