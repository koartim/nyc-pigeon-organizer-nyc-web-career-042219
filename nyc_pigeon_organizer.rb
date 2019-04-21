require 'pry'
def nyc_pigeon_organizer(pigeon_data)
  pigeon_hash = {}
  pigeon_data.each do |category, attributes|
    attributes.each do |attribute, pigeons|
      pigeons.each do |pigeon|

        add_attributes_to_pigeon(pigeon_hash, pigeon, attribute, category)
      end
    end
  end
  pigeon_hash
end

def add_attributes_to_pigeon(pigeon_hash, pigeon, attribute, category)
  if !pigeon_hash[pigeon]
    pigeon_hash[pigeon] = {}
    pigeon_hash[pigeon][category] = []
    pigeon_hash[pigeon][category] << attribute.to_s
  elsif !pigeon_hash[pigeon][category]
    pigeon_hash[pigeon][category] = []
    pigeon_hash[pigeon][category] << attribute.to_s
  else
    pigeon_hash[pigeon][category] << attribute.to_s
  end
  pigeon_hash
end

def pigeon_names(pigeon_data)
  pigeon_names = []
  pigeon_data.each do |category, attributes|
    attributes.each do |attribute, pigeons|
      pigeons.each do |pigeon|
        if !pigeon_names.include?(pigeon)
          pigeon_names << pigeon
        end
      end
    end
  end
  pigeon_names
end

def build_pigeon_attribute_hash

  # this will make the top level hash with the
  # pigeons names that point to empty objects
  # {}
  # {
  #   'Theo' => {},
  #   'Alex' => {},
  #   ...,
  # }
  # {
  #   'Theo' => {:color = []},
  #   'Alex' => {:color = []},
  #   ...,
  # }
  # {
  #   'Theo' => {:color = ['purple', 'grey']},
  #   'Alex' => {:color = ['black', 'purple']},
  #   ...,
  # }
end
