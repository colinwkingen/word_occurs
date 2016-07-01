require("rspec")
require("word_occurs")

describe("String#word_occurs") do
  it("takes text as input and finds occurances of a specified word") do
    expect("potato".word_occurs("potato")).to(eq(1))
  end
  it("takes text as input and finds multiple occurances of a specified word") do
    expect("the potato in potato potato mainly in the potato".word_occurs("potato")).to(eq(4))
  end
  it("takes text as input and if no occurances of a specified word are found, returns zero") do
    expect("normally I prefer yams".word_occurs("hustling")).to(eq(0))
  end
end
describe("String#string_process") do
  it("takes an input string and returns a string based on that input") do
    expect("potato".string_process()).to(eq("potato"))
  end
  it("takes an input string and returns a string based on that input with downcased letters") do
    expect("the Potato in Potato potato Mainly in the potato".string_process()).to(eq("the potato in potato potato mainly in the potato"))
  end
  it("takes an input string and returns a string based on that input with punctuation removed") do
    expect("normally! I pr*fer... yam$.".string_process()).to(eq("normally i prefer yams"))
  end
end
