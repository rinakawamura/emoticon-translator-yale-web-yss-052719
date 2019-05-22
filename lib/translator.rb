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

def get_japanese_emoticon(path, symbol)
  emoticons = load_library(path)
  emoticons["get_emoticon"].each do |english_emoticon, japanese_emoticon|
    if english_emoticon == symbol
      return japanese_emoticon
    end
  end
  "Sorry, that emoticon was not found"
end

def get_english_meaning(path, symbol)
  emoticons = load_library(path)
  emoticons["get_meaning"].each do |japanese_emoticon, meaning|
    if japanese_emoticon == symbol
      return meaning
    end
  end
  "Sorry, that emoticon was not found"
end
