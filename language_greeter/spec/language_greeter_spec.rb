require_relative "../language_greeter.rb"

describe "Language Greeter" do
  let(:romanian_language) { LanguageGreeter.new("romanian") }
  let(:dothraki_language) { LanguageGreeter.new("dothraki") }
  it "should return true if language exists" do
    expect(romanian_language.greetings).to eq(true)
  end

  it "should return false if a language doesnt exist" do
    expect(dothraki_language.greetings).to eq(false)
  end
end

