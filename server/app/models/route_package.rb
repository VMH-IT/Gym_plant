class RoutePackage < ApplicationRecord
  has_many :ptgyms
  has_and_belongs_to_many :exersices, join_table: 'routepackage_exersice'
  has_and_belongs_to_many :ptgyms, join_table: 'ptgym_routepackage'

end
