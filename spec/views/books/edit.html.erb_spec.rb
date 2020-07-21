require 'rails_helper'

RSpec.describe 'books/edit', type: :view do
  before(:each) do
    @book = assign(:book, create(:book))
  end

  it 'renders the edit book form' do
    render

    assert_select 'form[action=?][method=?]', book_path(@book), 'post' do
      assert_select 'input[name=?]', 'book[name]'

      assert_select 'input[name=?]', 'book[authors]'
    end
  end
end
