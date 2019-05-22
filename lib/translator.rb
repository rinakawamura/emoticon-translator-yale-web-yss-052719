require 'yaml'

def load_library(path)
  library = YAML.load_file(path)
  emoticons = {"get_meaning"=>{}, "get_emoticon"=>{}}
  library.each do |meaning, symbols|
    emoticons["get_meaning"][symbols[1]] = meaning
    emoticons["get_emoticon"][symbols[0]] = symbols[1]
  end
  return emoticons
end

def get_japanese_emoticon(symbol)
  emoticons["get_emoticon"].each do |english_emoticon, japanese_emoticon|
    if english_emoticon == symbols
      return japanese_emoticon
    end
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
