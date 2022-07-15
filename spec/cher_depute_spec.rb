#require_relative '../lib/cher_depute'



#  ************      SPEC DESACTIVE POUR L'INSTANT CAR MET PLUS DE 20 MINUTES !!    *************



=begin 
describe 'we are getting verify the class of the final list' do
  it'should return an array or hash' do
    expect(final_array.class).to eq(Array)
    expect(final_array[4].class).to eq(Hash)
    expect(final_array[28].class).to eq(Hash)
  end
  end

describe 'verify the number of elements in the final list' do
  it'should return the right number of elements' do
    expect(final_array.length).to eq(577)
  end
end
=end