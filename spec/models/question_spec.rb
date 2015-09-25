require 'rails_helper'

RSpec.describe Question, type: :model do
let(:question) { Question.create!(title: "New Post Title", body: "New Post Body", resolved: false) }
 
   describe "attributes" do
     it "should respond to title" do
       expect(post).to respond_to(:title)
     end
     it "should respond to body" do
       expect(post).to respond_to(:body)
   	 end
     it "should respond to resolved" do
     	expect(post).to respon_to(:resolved)
     end
   end
end
