class ImportDataFilesController < ApplicationController
  def index
    @data_files = DataFile.order(name: :desc).all
  end

  def new
    @data_file = DataFile.new
  end

  def create
    @data_file = DataFile.new(data_file_params)

    if @data_file.save
      ImportNamesJob.perform_later(@data_file)
      flash[:success] = "Data File Imported"
      redirect_to import_data_files_path
    else
      flash[:error] = "Could not import Data File."
      render 'new'
    end
  end

  private

  def data_file_params
    params.require(:data_file).permit(:name, :csv_file)
  end
end
