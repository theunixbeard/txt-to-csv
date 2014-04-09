if ARGV.length > 0
  file_name = ARGV.first.chomp
else
  puts "NEED A FILENAME"
  exit
end


start_time = []
end_time = []

File.open(file_name, 'r').each_line do |line|
  # puts line
  words = line.split(' ')
  start_time << words[0]
  end_time << words[1]
end
File.open(file_name + '_start.txt', 'w') do |f|
  start_time.each do |t|
    f.puts t
  end
end
File.open(file_name + '_end.txt', 'w') do |f|
  end_time.each do |t|
    f.puts t
  end
end

