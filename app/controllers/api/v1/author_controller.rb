# frozen_string_literal: true

module Api
  module V1
    class AuthorController < ApplicationController
      before_action :set_author, only: %i[show update destroy]

      def index
        @authors = Author.all
        render json: @authors, status: :ok
      end

      def create
        @author = Author.new(author_params)
        if @author.save
          render json: @author, status: :created, location: api_v1_author_index_path
        else
          render json: @author.errors.full_messages, status: :unprocessable_entity
        end
      end

      def update
        if @author.update(author_params)
          render json: @author, status: :ok
        else
          render json: @author.errors.full_messages, status: :unprocessable_entity
        end
      end

      def show
        render json: @author, status: :ok
      end

      def destroy
        if @author.destroy
          render json: @author, status: :no_content
        else
          render json: @author.errors.full_messages, status: :bad_request
        end
      end

      private

      def set_author
        @author = Author.find(params[:id])
      end

      def author_params
        params.require(:author).permit(:first_name, :last_name, :age, :subject)
      end
    end
  end
end
