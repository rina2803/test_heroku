class UsersController < ApplicationController

	def new
		@quarters = Quarter.all
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		
		puts "*"*60
		puts params
      if @user.update(first_name: params['first_name'] , last_name: params['last_name'], age: params['age'], description: params['description'], gender: params['gender'], pseudonym: params['pseudonym'], quarter: params['quarter'])
        
        puts "*"*60
		puts params
		flash[:success] = 'Votre profil a été mise à jour'
        redirect_to user_path
        
      else
      	flash[:success] = 'Il a eu une erreur dans votre action, veuillez réessayer'
        render '/users/:id/edit'
      end
	end
end
