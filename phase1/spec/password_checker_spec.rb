require "password_checker"

RSpec.describe PasswordChecker do
    it "password is over 8 characters" do
        password = PasswordChecker.new
        expect(password.check("passwords")).to eq true
    end
    it "password is under 8 characters" do
        password = PasswordChecker.new
        expect{ password.check("hello") }.to raise_error "Invalid password, must be 8+ characters."
    end
end
