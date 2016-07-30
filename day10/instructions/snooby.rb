require 'colorize'
require 'colorized_string'
require 'snooby'

reddit = Snooby::Client.new

p reddit.subreddit('askscience').posts.first.colorize(:blue)
