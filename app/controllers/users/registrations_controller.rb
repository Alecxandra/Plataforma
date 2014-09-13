class Users::RegistrationsController < Devise::RegistrationsController
  # def new
  #   super
  # end

  def create
    
    @user = User.create(params[:user].permit(:email, :password))
    build_resource(params[:user].permit(:email, :password))
    resource_saved = resource.save
    sign_in(resource_name, resource)
    if params[:rol] == 'maestro'
      redirect_to new_teacher_path
    else
      redirect_to new_student_path
    end
  end
end
