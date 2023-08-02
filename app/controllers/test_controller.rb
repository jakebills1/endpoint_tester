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
  def login
    render json: {
      'SessionToken': '12345'
    }
  end
  def create
    render json: {
      'Results': [
        { 'Success': true, 'Code': '54321' }
      ]
    }
  end
end
