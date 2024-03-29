require '../testing_user'

RSpec.describe User do
  describe "#log_in" do
    it "logs user in" do
      user = User.new('garfield')
      user.log_in
      expect(user.logged_in).to eq(true)
    end
  end

  describe "#log_out" do
    it "logs user out" do
      user = User.new('garfield')
      user.log_in
      user.log_out
      expect(user.logged_in).to eq(false)
    end
  end

  describe "#username" do
    it "returns username" do
      username = 'garfield'
      user = User.new(username)
      expect(user.username).to eq(username)
    end
  end
end
