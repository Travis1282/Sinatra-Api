class CharicterController < ApplicationController

get '/ajax' do
		erb :item_index_ajax
	end



	post '/' do 

		@charicter = Charicter.new
		@charicter.numerics = params[:numerics]
		@charicter.alpha_numerics = params[:alpha_numerics]
		@charicter.special_charicters = params[:special_charicters]

		@charicter.save
		resp = {
			status: {
				all_good: true,
				message: "Added charicter  #{@charicter.id}" 
			},
			charicter: @charicter
		}
		resp.to_json
	end

	get '/:id' do 

		@charicter = Charicter.find params[:id]
		resp = {
			status: {
				all_good: true,
				message: "Found #{@charicter.id}" 
			},
			charicter: @charicter
		}
		resp.to_json
	end


	delete '/:id' do 

		@charicter = Charicter.find params[:id]
		@charicter.delete
		resp = {
			status: {
				all_good: true,
				message: "deleted item #{@charicter.id}" 
			},
			charicter: @charicter
		}
		resp.to_json
	end


	patch '/:id' do 

		@charicter = Charicter.find params[:id]
		@charicter.numerics = params[:numerics]
		@charicter.alpha_numerics = params[:alpha_numerics]
		@charicter.special_charicters = params[:special_charicters]
		@charicter.save

		resp = {
			status: {
				all_good: true,
				message: "Found #{@charicter.id}" 
			},
			charicter: @charicter
		}
		resp.to_json
	end

end


