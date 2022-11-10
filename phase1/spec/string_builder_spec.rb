require "string_builder.rb"

RSpec.describe StringBuilder do
    string = StringBuilder.new()
    it "Create new instance of string" do
        expect(string.output).to eq("")
    end

    it "Creates a longer string" do
        string.add("Hello from Abbey and Matt")
        expect(string.output).to eq("Hello from Abbey and Matt")
    end

    it "Returns length of the string" do
        expect(string.size).to eq(25)
    end
end