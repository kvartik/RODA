class Profile <  Sequel::Model
  one_to_one :user

  attr_accessor :user_id, :first_name, :last_name, :email

  def show
    @profile = Profile.find(params[:id])
  end

  def create
    @profile = Profile.new(first_name: @first_name, last_name: @last_name,  email: @email)
  end

  def update

  end

  def destroy
    @profile = Profile.find(params[:id])
    if @profile != nil
      @profile.destoy
      #render: OK
    else
      #render: NOT DETROY
    end

  end
end