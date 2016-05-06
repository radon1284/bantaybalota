class Report < ActiveRecord::Base
  belongs_to :user

  enum president: [:select_president, :jejomar_binay, :miriam_defensor_santiago, :rodrigo_duterte, :grace_poe, :mar_roxas]
  enum vice_president: [:select_vice_president, :alan_peter_cayetano, :francis_escudero, :gregorio_honasan, :ferdinand_marcos_jr, :leni_robredo, :antonio_trillanes]

  validates :precinct_number, presence: true
  validates :ballot_number, presence: true
  validates :vote_receipt_number, presence: true
  validates :bei_name, presence: true
  validates :voted_president, presence: true
  validates :pcos_result_president, presence: true
  validates :voted_vice_president, presence: true
  validates :pcos_result_vice_president, presence: true

  def mypresident
  	"#{voted_president}"
  end

end