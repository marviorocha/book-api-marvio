# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'Validations' do
    context 'Check field is presence' do
      it { should validate_presence_of(:title) }
      it { should validate_presence_of(:genre) }
      it { should validate_presence_of(:isbn) }
      it { should validate_presence_of(:publisher) }
      it { should validate_presence_of(:description) }
    end
  end
end
