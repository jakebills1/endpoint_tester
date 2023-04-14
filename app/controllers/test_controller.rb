class TestController < ApplicationController
  def post_file
		Dir.mkdir(Rails.root.join('tmp')) unless Dir.exists?(Rails.root.join('tmp'))

		open(File.join(Rails.root, 'tmp', params[:image].original_filename), 'wb') do |f|
		  f.write params[:image].read
		end
		render json: {}
	end
	def ping
		render json: "pong\n"
	end
end