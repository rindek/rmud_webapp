class EntriesController < ApplicationController
  before_filter :authenticate_account!
  expose(:entry)
  expose(:entries)

  def index
  end

  def new
  end

  def create
    if entry.save
      redirect_to entries_path
    else
      render :new
    end
  end
end
