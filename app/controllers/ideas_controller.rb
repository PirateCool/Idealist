class IdeasController < ApplicationController

	

  before_action :find_idea, only: [:show, :edit, :update, :destroy]

    def idea_params
		params.require(:idea).permit(:content, :name, :user_id)
	end


	def new 
		@idea = Idea.new
	end

	def create
			@idea = Idea.new(idea_params)
			@idea.user = current_user
		
		if @idea.save
			redirect_to ideas_path	
		else 
			puts "Error"
			#render :new
		end
	end

	def index
		# if params[:category]
			# @ideas = Idea.where(category: params[:category])
		# else
			@ideas = Idea.all
		# end
	end

	def show
		@idea = Idea.find(params[:id])
   	end

   	def edit    
	end

	def update
		if 
			@idea.update(idea_params)
			redirect_to root # ideas_path
		else 
			render :edit
		end
	end

	def destroy		
		@idea.destroy
		redirect_to root # ideas_path
	end


	private

	def find_idea 
		@idea = Idea.find(params[:id])
	end


end
