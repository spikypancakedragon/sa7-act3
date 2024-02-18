data_array = []
File.open('data.csv', 'r') do |file|
  header = file.readline.chomp.split(',')

  file.each_line do |line|
    values = line.chomp.split(',')

    data_hash = {}
    header.each_with_index do |column_name, index|
      data_hash[column_name] = values[index]
    end

    data_array << data_hash
  end
end

puts data_array.inspect
