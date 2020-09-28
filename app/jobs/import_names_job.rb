class ImportNamesJob < ApplicationJob
  queue_as :default

  def perform(data_file = nil)
    return nil unless data_file

    data_file.csv_file.open(tmpdir: 'tmp/') do |file|
      Name.copy_from file
    end
  end
end
