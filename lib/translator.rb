require 'yaml'

def load_library(path)
  emoticons = YAML.load_file(path)
  puts emoticons
end

load_library('./lib/emoticons.yml')

# def get_japanese_emoticon(western)
#   japanese = nil
#   emoticons.each do |name, symbols|
#     if symbols[0] == western
#       japanese = symbols[1]
#     end
#   end
#   return japanese
# end
#
# def get_english_meaning(japanese)
#   western = nil
#   emoticons.each do |name, symbols|
#     if symbols[1] == japanese
#       western = symbols[0]
#     end
#   end
#   return western
# end
