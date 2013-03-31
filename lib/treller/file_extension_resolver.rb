class FileExtensionResolver
  def resolve_output_filename(input_json_filename)
    output_file_location = ''
    if input_json_filename.end_with? ".json"
      output_file_location = input_json_filename.chomp(".json") + ".csv"
    else
      output_file_location = "#{input_json_filename}.csv"
    end
    output_file_location
  end
end