RSpec.describe ConversationHistory, type: :model do
  it "validates presence of comment or status" do
    conversation = ConversationHistory.new
    expect(conversation.valid?).to be_falsey
  end
end
