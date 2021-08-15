require 'rails_helper'

RSpec.describe "Api::V1::Books", type: :request do
  
  describe "Make HTTP Request of Book" do
       
    let(:author) {create(:author)}
    let(:book) {create(:book, author: author)}
    let(:book_params){ attributes_for(:book, author_id: author.id)}
    let(:header){ headers = { 'ACCEPT' => "application/json"}}
   
    context "Book API" do

    it '#Get book /api/v1/book' do
     
     get api_v1_book_index_path
      expect(response).to have_http_status(200)
     end
 
 
    it '#Post /api/v1/book' do
  
     
      post api_v1_book_index_path, params: {book: book_params}, headers: headers
 
      expect(response.body).to include_json( 
          title: book_params.fetch(:title),
          author: { first_name: author.first_name }  
       )
      
    end

    it '#Show /api/v1/book/:id' do 
      
      get api_v1_book_path(book)
      expect(response).to have_http_status(200)
    
    end
 

    it '#Update /api/v1/book/:id' do
      
      book.title += " - Update book title here"

      patch api_v1_book_path(book), params: {book: book_params}, headers: headers

       expect(response.body).to include_json( 
           title: book_params.fetch(:title),
           author: { first_name: author.first_name }  
        )

    end

    it '#Delete /api/v1/book/:id' do 

      delete api_v1_book_path(book), params: {book: book_params}, headers: headers
      expect(response).to have_http_status(204)

    end

  end

  end


end
