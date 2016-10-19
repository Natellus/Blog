#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:blog.db"

class Post < ActiveRecord::Base
end

class Comment < ActiveRecord::Base
end

get '/' do
  @posts = Post.all

  erb :index
end

get '/new' do
  @p = Post.new
  erb :new
end

post '/new' do
  #@p = Post.new params[:content]
  #@p.save
  #puts '!'*999
  #puts params[:content]
  #puts params

  #@p = Post.create content: params[:content]
  @p = Post.create  params

end
