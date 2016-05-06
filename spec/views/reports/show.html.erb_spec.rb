require 'rails_helper'

RSpec.describe "reports/show", type: :view do
  before(:each) do
    @report = assign(:report, Report.create!(
      :user => nil,
      :precinct_number => "Precinct Number",
      :ballot_number => "Ballot Number",
      :vote_receipt_number => "Vote Receipt Number",
      :bei_name => "Bei Name",
      :voted_president => 1,
      :pcos_result_president => 2,
      :voted_vice_president => 3,
      :pcos_result_vice_president => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Precinct Number/)
    expect(rendered).to match(/Ballot Number/)
    expect(rendered).to match(/Vote Receipt Number/)
    expect(rendered).to match(/Bei Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
  end
end
