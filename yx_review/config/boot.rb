ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' # Set up gems listed in the Gemfile.
#换成IP访问 需要做如下修改。。。。。。。
require 'rubygems'
require 'rails/commands/server'

module Rails
  class Server
    alias :default_options_bk :default_options
    def default_options
      default_options_bk.merge!(Host: '192.168.0.139')
    end
  end
end


