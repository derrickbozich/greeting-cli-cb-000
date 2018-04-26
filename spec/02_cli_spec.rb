require_relative "../lib/greeting.rb"

describe './bin/greet executing a CLI Application' do
  it 'outputs a welcome message and asks the user for input' do
    allow($stdout).to receive(:puts)
    allow(self).to receive(:gets).and_return("Don")

    expect($stdout).to receive(:puts).with("Hi! I'm HAL, what's your name?"), "Make sure bin/greet has code that can output 'Hi! I'm HAL, what's your name?' exactly."

    run_file("./bin/greet")
  end


  end
