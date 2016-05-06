FactoryGirl.define do
  factory :report do
    user nil
    precinct_number "MyString"
    ballot_number "MyString"
    vote_receipt_number "MyString"
    bei_name "MyString"
    voted_president 1
    pcos_result_president 1
    voted_vice_president 1
    pcos_result_vice_president 1
  end
end
