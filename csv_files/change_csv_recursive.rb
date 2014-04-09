def output_csv file_name
  start_time = []
  end_time = []


  base_file_name = File.basename(file_name).chomp('.txt')
  if base_file_name == file_name
    return
  end
  output_file_name = "#{base_file_name}.csv"

  File.open(file_name, 'r').each_line do |line|
    # puts line
    words = line.split(' ')
    start_time << words[0]
    end_time << words[1]
  end

  File.open("/Users/primary/programming/ruby/tiffany_csv/csv_files/output/#{output_file_name}", 'w') do |f|
    start_time.zip(end_time).each do |s, e|
      f.puts "#{s}, #{e}"
    end
  end
end

=begin
if ARGV.length > 0
  folder_name = ARGV.first.chomp
else
  puts "NEED A FOLDER NAME"
  exit
end
=end
files_array = Dir['../audio_analysis_round_2/**/*.*']

files_array.each do |file_name|
  output_csv file_name
end

