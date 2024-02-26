require '../stringwrapper'

RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses string" do
      str = "hello world"
      string_wrapper = StringWrapper.new(str)
      expect(string_wrapper.reverse).to eq(str.reverse)
    end
  end

  describe "#upcase" do
    it "makes string uppercase" do
      str = "hello world"
      string_wrapper = StringWrapper.new(str)
      expect(string_wrapper.upcase).to eq(str.upcase)
    end
  end

  describe "#downcase" do
    it "makes string lowercase" do
      str = "HELLO WORLD"
      string_wrapper = StringWrapper.new(str)
      expect(string_wrapper.downcase).to eq(str.downcase)
    end
  end
end
