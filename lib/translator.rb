require 'yaml'

def load_library
  emoticons = YAML.load_file('./lib/emoticons.yml')
end

def get_japanese_emoticon(western)
  japanese = nil
  emoticons.each do |name, symbols|
    if symbols[0] == western
      japanese = symbols[1]
    end
  end
  return japanese
end

def get_english_meaning(japanese)
  western = nil
  emoticons.each do |name, symbols|
    if symbols[1] == japanese
      western = symbols[0]
    end
  end
  return western
end
