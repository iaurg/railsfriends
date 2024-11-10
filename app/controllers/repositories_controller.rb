require 'faraday'
require 'json'
class  RepositoriesController < ApplicationController
  def index
    repos_list = Faraday.get('https://api.github.com/users/iaurg/repos')
    @repos_list = JSON.parse(repos_list.body)
    @hello = "All repos"
  end
end