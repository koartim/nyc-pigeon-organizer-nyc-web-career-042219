require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  data.each do |attribute, colors|
    colors.each do |color,pigeons|
      pigeons.each do |pigeon|
        pigeon_hash[pigeon] ||= {}
        pigeon_hash[pigeon][attribute] ||= []
        pigeon_hash[pigeon][attribute] << color.to_s
        binding.pry
        end
      end
    end
    pigeon_hash
  end

def build_pigeon_attribute_hash

  # this will make the top level hash with the
  # pigeons names that point to empty objects
  # {
  #   'Theo' => {},
  #   'Alex' => {},
  #   ...,
  # }
end
