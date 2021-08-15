require 'rails_helper'

RSpec.describe Author, type: :model do
     describe "Check Author " do 
      context "Validations author" do 
     
        it {should validate_presence_of(:first_name)}
        it {should validate_presence_of(:last_name)}
        it {should validate_presence_of(:age)}
          
      end
     end
end
