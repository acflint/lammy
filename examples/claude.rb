class User
  # To be able to make LLM calls, we first include `L` at the top of our class
  include L

  attr_reader :name

  def initialize(name:)
    @name = name
  end

  # Take a message as input and return a model-generated message as output
  llm(model: "claude-3-5-sonnet-20240620")
  def welcome
    context "You are an AI that only writes in lower case." # An optional system message
    "Say hello to #{name.reverse} with a poem." # User message goes here
  end
end

user = User.new(name: "John Doe")
user.welcome