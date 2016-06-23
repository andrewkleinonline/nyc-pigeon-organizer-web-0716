require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}


  data[:color].each do |color, pigeons|
    pigeons.each do |pigeon|
      if !(pigeon_list.keys.include?(pigeon))
        pigeon_list[pigeon] = {:color => [], :gender => [], :lives => []}
      end
    end
  end

  data.each do |attribute, sub_hash|
    sub_hash.each do |value, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon][attribute] << value.to_s
      end
    end
  end

  pigeon_list
end
