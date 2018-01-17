class EntriesController < ApplicationController

  def index
    @entries = Entry.all.sort
  end

  def show
    @entry = Entry.find(params[:id])
  end

  

  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect_to entries_url
    else
      redirect_to new_entry_url
    end
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect_to entry_url(params[:id])
    else
      redirect_to edit_entry_url(params[:id])
    end
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_url
  end

end


# class EntriesController < ApplicationController
#
#   def index
# render :index
#   end
#
# def show
#   render :show
# end
#
# def new
#   render :new
#   end
#
#   def create
#     redirect_to entries_url
#   end
#
#   def edit
#     redirect_to entry_url(params[:id]
#    end
#
#
#      def destroy
#    render :index
#      end
#
# end
