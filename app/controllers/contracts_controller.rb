class ContractsController < ApplicationController
  
  def show
    @contract = Contract.find(params[:id])
  end

  def new
    @contract = Contract.new
  end
  
  def create
    @contract = Contract.new(params[:contract])
    @contract.user_id = current_user.id

    if @contract.save
      flash[:success] = "Contract creation successful!"
    else
      render 'new'
    end
  end
  
end
