Given("have a before hook in place") do
  expect(@users).to be_a(Array)

end

Then("I can validate the information in the before hook") do
  expect(@users).to eq(['Dave','susan','Jamie'])
  expect(@enviroment).to eq('development')
end
