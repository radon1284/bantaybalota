require 'rails_helper'

RSpec.describe "reports/new", type: :view do
  before(:each) do
    assign(:report, Report.new(
      :user => nil,
      :precinct_number => "MyString",
      :ballot_number => "MyString",
      :vote_receipt_number => "MyString",
      :bei_name => "MyString",
      :voted_president => 1,
      :pcos_result_president => 1,
      :voted_vice_president => 1,
      :pcos_result_vice_president => 1
    ))
  end

  it "renders new report form" do
    render

    assert_select "form[action=?][method=?]", reports_path, "post" do

      assert_select "input#report_user_id[name=?]", "report[user_id]"

      assert_select "input#report_precinct_number[name=?]", "report[precinct_number]"

      assert_select "input#report_ballot_number[name=?]", "report[ballot_number]"

      assert_select "input#report_vote_receipt_number[name=?]", "report[vote_receipt_number]"

      assert_select "input#report_bei_name[name=?]", "report[bei_name]"

      assert_select "input#report_voted_president[name=?]", "report[voted_president]"

      assert_select "input#report_pcos_result_president[name=?]", "report[pcos_result_president]"

      assert_select "input#report_voted_vice_president[name=?]", "report[voted_vice_president]"

      assert_select "input#report_pcos_result_vice_president[name=?]", "report[pcos_result_vice_president]"
    end
  end
end
