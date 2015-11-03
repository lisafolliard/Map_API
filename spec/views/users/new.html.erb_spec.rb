require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :latitude => 1.5,
      :longitude => 1.5,
      :address => "MyString",
      :description => "MyText",
      :title => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_latitude[name=?]", "user[latitude]"

      assert_select "input#user_longitude[name=?]", "user[longitude]"

      assert_select "input#user_address[name=?]", "user[address]"

      assert_select "textarea#user_description[name=?]", "user[description]"

      assert_select "input#user_title[name=?]", "user[title]"
    end
  end
end
