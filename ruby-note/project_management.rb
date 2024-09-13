=begin
  [Project Management]
  - require and require_relative
  - Gem, Gemfile, Bundler
  - RuboCop(Ruby gem), code formatter
=end

## require and require_relative
#   require:
#     - Load libraries, files, or external gems that are NOT relative to the current file
#   require_relative:
#     - Load files whithin the same project directory or struture
# * local variables do not get loaded
# 
# require, example
require 'json'
require 'mygem'

# require_relative, example
require_relative 'utils/helper'  # Loads the 'helper.rb' file in the 'utils' directory relative to this file

## Gem
#  - packages Ruby
#  - use gem with 'require'
#  Command:
#   $ gem install rails

## Gemfile
#  - tell 'Bundler' what gems your project depends on, and versions used
# example Gemfile:
source 'https://rubygems.org'

gem 'rails', '~> 7.0'   # Use Rails version 7.0 or higher
gem 'pg', '~> 1.1'      # PostgreSQL adapter
gem 'puma', '~> 5.0'    # Puma web server
gem 'rspec', '~> 3.10'  # RSpec for testing

## Bundler
#  - dependency manager for Ruby projects
#  Command:
#   $ bundle install

## RuboCop (Ruby gem)
#  - linter and code formatter
#  Installation:
#   (1) add to Ruby project Gemfile:
#         gem 'rubocop', require: false
#   (2) bundle install
#         $ gem install rubocop
#   (3) running (in the root of project)
#         $ rubocop