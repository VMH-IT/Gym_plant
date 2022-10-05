class DateTraining < ApplicationRecord
	has_and_belongs_to_many :ptgym , join_table: 'ptgym_datetraining'
end
end
