require 'rails_helper'

RSpec.describe "Api::V1::Authors", type: :request do
  describe "Make HTTP Request of Author" do
     let(:author) { create(:author)  }
     let(:author_params){ attributes_for(:author)}
     let(:header){ headers = { 'ACCEPT' => "application/json"}}
     context "Author API" do 
      
      it '#Get authors /api/v1/author' do
        get api_v1_author_index_path
          expect(response).to have_http_status(200)
      end

      it '#Create author /api/v1/author ' do

         post api_v1_author_index_path, params: {author: author_params}, headers: headers
          expect(response.body).to include_json(  
            id: /\d/,  
            first_name: author_params.fetch(:first_name)
          
          )
                
      end

      it '#Show author /api/v1/author/:id' do
        
        get api_v1_author_path(author)
        expect(response).to have_http_status(200)

      end


      it '#Update author /api/v1/author/:id' do
        author.first_name += " - Change Author First Name"

        patch api_v1_author_path(author), params: {author: author_params}, headers: headers
  
         expect(response.body).to include_json( 
             first_name: author_params.fetch(:first_name)
          )
      end

    it '#Delete author /api/v1/author/:id' do 

      delete api_v1_author_path(author), params: {author: author_params}, headers: headers
      expect(response).to have_http_status(204)
    
    end






    end
  end
end
