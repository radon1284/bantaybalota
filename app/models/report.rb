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

  def my_president
  	if self.voted_president == 0
  		"#{'No selected President'}"
  	elsif self.voted_president == 1
  		"#{'Jejomar Binay'}"
  	elsif self.voted_president == 2
  		"#{'Miriam Defensor Santiago'}"
  	elsif self.voted_president == 3
  		"#{'Rodrigo Duterte'}"
  	elsif self.voted_president == 4
  		"#{'Grace Poe'}"
  	else
  		"#{'Mar_Roxas'}"
  	end
  end

  def pcos_president
  	if self.pcos_result_president == 0
  		"#{'No selected President'}"
  	elsif self.pcos_result_president == 1
  		"#{'Jejomar Binay'}"
  	elsif self.pcos_result_president == 2
  		"#{'Miriam Defensor Santiago'}"
  	elsif self.pcos_result_president == 3
  		"#{'Rodrigo Duterte'}"
  	elsif self.pcos_result_president == 4
  		"#{'Grace Poe'}"
  	else
  		"#{'Mar Roxas'}"
  	end
  end

  def president
  	"#{voted_president}"
  end

  def my_vice_president
  	if self.voted_president == 0
  		"#{'No selected Vice President'}"
  	elsif self.voted_president == 1
  		"#{'Alan Cayetano'}"
  	elsif self.voted_president == 2
  		"#{'Francis Escudero'}"
  	elsif self.voted_president == 3
  		"#{'Gregorio Honasan'}"
  	elsif self.voted_president == 4
  		"#{'Ferdinand Marcos Jr'}"
  	elsif self.voted_president == 5
  		"#{'Leni Robredo'}"
  	else
  		"#{'Antonio Trillanes'}"
  	end
  end

  def pcos_vice_president
  	if self.voted_president == 0
  		"#{'No selected Vice President'}"
  	elsif self.voted_president == 1
  		"#{'Alan Cayetano'}"
  	elsif self.voted_president == 2
  		"#{'Francis Escudero'}"
  	elsif self.voted_president == 3
  		"#{'Gregorio Honasan'}"
  	elsif self.voted_president == 4
  		"#{'Ferdinand Marcos Jr'}"
  	elsif self.voted_president == 5
  		"#{'Leni Robredo'}"
  	else
  		"#{'Antonio Trillanes'}"
  	end
  end

end