# frozen_string_literal: true
class PayController < ApplicationController

  def index
    # This action renders the default index view for payment information
    # No additional logic is required as the view handles the display
  end

  def update_dd_info
    msg = false
    pay = Pay.new(
      bank_account_num: params[:bank_account_num],
      bank_routing_num: params[:bank_routing_num],
      percent_of_deposit: params[:dd_percent],
      user_id: current_user.id
    )

    msg = true if pay.save!
    respond_to do |format|
      format.json { render json: {msg: msg } }
    end
  end

  def show
   respond_to do |format|
     format.json { render json: {user: current_user.pay.as_json} }
   end
  end

  def destroy
    pay = Pay.find_by_id(params[:id])
    # Verify ownership before deletion to prevent unauthorized access
    # Only allow users to delete their own payment records
    if pay.present? && pay.user_id == current_user.id && pay.destroy
      flash[:success] = "Successfully Deleted Entry"
    else
      flash[:error] = "Unable to process that request at this time"
    end
    redirect_to user_pay_index_path
  end

  def decrypted_bank_acct_num
    decrypted = Encryption.decrypt_sensitive_value(params[:value_to_decrypt])
    respond_to do |format|
      format.json { render json: {account_num: decrypted || "No Data" } }
    end
  end
end