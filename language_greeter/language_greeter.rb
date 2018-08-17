require 'pry'

class LanguageGreeter
  # You could do several things here, like store it in a hash within
  # the class, or in an external file like YML
  LANGUAGES_AND_GREETINGS = {
    "romanian" => "Doriti sa vorbiti romaneste?",
    "french" => "Preferez-vous parler francais?",
    "english" => "Do you want to speak English?"
  }

  def initialize(native_language)
    # You can do something like downcase it so you don't
    # have to check for the user either putting in lower
    # or uppercase
    @native_language = native_language.downcase
  end

  def greetings
    # Check if the hash or whatever you use has the language
    if LANGUAGES_AND_GREETINGS.key?(@native_language)
      puts LANGUAGES_AND_GREETINGS[@native_language].to_s
      true
    else
      puts "Sorry, I don't speak that language."
      puts "I speak the following languages:"
      LANGUAGES_AND_GREETINGS.each do |language, greeting|
        puts language + ": " + greeting
      end
      false
    end
  end
end

LanguageGreeter.new("Romanian").greetings
LanguageGreeter.new("dothraki").greetings
