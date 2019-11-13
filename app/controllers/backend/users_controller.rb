module Backend
 class UsersController < FrontendController
   def index
    @users = User.paginate(page: params[:page], per_page: 5)
   end

   def new
   @user = User.new
   end

   def edit
     @user = User.find(params[:id])
   end

   def create
    @user = User.new(user_params)
       if @user.save
       flash[:notice] = 'Creado'
         redirect_to backend_user_path
     else
       flash.now[:alert] = 'Error'
       render :new
     end
   end

   private

   def user_params
     params.require(:user).permit(:name)
   end
end
end
