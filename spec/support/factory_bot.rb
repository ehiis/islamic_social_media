RSpec.configure do |config|
  config.before { FactoryBot.rewind_sequences }
  config.include FactoryBot::Syntax::Methods
end
