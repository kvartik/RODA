class User < Sequel::Model
  require 'json'
  one_to_many :post
  one_to_one :profile
  attr_accessor :password, :login

  def validae
    super
    validates_presence :password
    validates_length_range 6..40, :password
  end
  def show
    @user = User.find(params[:id])
  end
    def creare
     @user = User.new(login: @login, password: @password )
      if @user.valid?
        @user.save
      else
        #NOT CREATE
     end
    end


    def destroy

       end
end