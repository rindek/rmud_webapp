class AccountsController < ApplicationController
  before_filter :authenticate_account!

  expose(:players) { current_account.players }

  def my
  end
end
