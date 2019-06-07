#
# Cookbook:: first_book
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

file "#{ENV['HOME']}/hello_admatic.txt" do
  content 'This text file was created by Chef!'
  end
