require 'rails_helper'

RSpec.describe Answer, type: :model do
let(:question) { Question.create!(title: "New Post Title", body: "New Post Body", resolved: false) }
   let(:answer) { Comment.create!(body: 'Comment Body', question: question) }
 
   describe "attributes" do
     it "should respond to body" do
       expect(comment).to respond_to(:body)
     end
   end
end
