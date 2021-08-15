# frozen_string_literal: true

module Api
  module V1
    class BookController < ApplicationController
      before_action :set_book, only: %i[show update destroy]

      def index
        @books = Book.all
        render json: @books, status: :ok
      end

      def create
        @book = Book.new(book_params)
        if @book.save
          render json: @book, status: :created, location: api_v1_book_index_path
        else
          render json: @book.errors.full_messages, status: :unprocessable_entity
        end
      end

      def update
        if @book.update(book_params)
          render json: @book, status: :ok
        else
          render json: @book.errors.full_messages, status: :unprocessable_entity
        end
      end

      def show
        render json: @book, status: :ok
      end

      def destroy
        if @book.destroy
          render json: @book, status: :no_content
        else
          render json: @book.errors.full_messages, status: :bad_request
        end
      end

      private

      def set_book
        @book = Book.find(params[:id])
      end

      def book_params
        params.require(:book).permit(:title, :genre, :publisher, :description, :published_date, :isbn, :author_id)
      end
    end
  end
end
