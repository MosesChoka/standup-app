class AccountsController < ApplicationController
    load_and_authorize_resource # adds CanCanCan command
    # the new action  will render the form to capture the new accounts name
    def new
        redirect_to root_path unless current_user.account.nil? # redirect to root_path if there's already an account

        @account = Account.new
    end


    # the create action to handle the saving of the Accounts record
    def create
        @account = Account.new(account_params)

        if @account.save
            current_user.account = @account
            current_user.add_role( :admin , @account )
            current_user.save
            redirect_to root_path, success: "Your account has been created!"
        else
            render :new
        end
    end

    private

    def account_params
        params.require(:account).permit(:name, :addr1, :addr2, :city, :state, :zip, :country)
    end
end
