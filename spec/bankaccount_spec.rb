require '../bankaccount'

RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases balance by deposit amount" do
      account = BankAccount.new(500)
      account.deposit(100)
      expect(account.balance).to eq(600)
    end
  end

  describe "#withdraw" do
    it "decreases balance by withdrawal amount if funds allow" do
      account = BankAccount.new(500)
      account.withdraw(100)
      expect(account.balance).to eq(400)
    end

    it "does not change balance if insufficient funds" do
      account = BankAccount.new(500)
      account.withdraw(1000)
      expect(account.balance).not_to eq(-500)
    end
  end

  describe "#balance" do
    it "returns current balance" do
      account = BankAccount.new(500)
      expect(account.balance).to eq(500)
    end
  end
end
