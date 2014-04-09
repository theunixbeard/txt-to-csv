if ARGV.length > 0
  file_name = ARGV.first.chomp
else
  puts "NEED A FILENAME"
  exit
end

output_file_name_pieces = file_name.split('.txt')
output_file_name = output_file_name_pieces.first + '.csv'

start_time = []
end_time = []

File.open(file_name, 'r').each_line do |line|
  # puts line
  words = line.split(' ')
  start_time << words[0]
  end_time << words[1]
end

File.open("/Users/tyw/Desktop/csv_files/#{output_file_name}", 'w') do |f|
  start_time.zip(end_time).each do |s, e|
    f.puts "#{s}, #{e}"
  end
end

