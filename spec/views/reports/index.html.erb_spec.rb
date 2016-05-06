require 'rails_helper'

RSpec.describe "reports/index", type: :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :user => nil,
        :precinct_number => "Precinct Number",
        :ballot_number => "Ballot Number",
        :vote_receipt_number => "Vote Receipt Number",
        :bei_name => "Bei Name",
        :voted_president => 1,
        :pcos_result_president => 2,
        :voted_vice_president => 3,
        :pcos_result_vice_president => 4
      ),
      Report.create!(
        :user => nil,
        :precinct_number => "Precinct Number",
        :ballot_number => "Ballot Number",
        :vote_receipt_number => "Vote Receipt Number",
        :bei_name => "Bei Name",
        :voted_president => 1,
        :pcos_result_president => 2,
        :voted_vice_president => 3,
        :pcos_result_vice_president => 4
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Precinct Number".to_s, :count => 2
    assert_select "tr>td", :text => "Ballot Number".to_s, :count => 2
    assert_select "tr>td", :text => "Vote Receipt Number".to_s, :count => 2
    assert_select "tr>td", :text => "Bei Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
