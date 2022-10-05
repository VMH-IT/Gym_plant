class RoutePackage < ApplicationRecord
    has_many :ptgyms
    has_and_belongs_to_many :exersices, join_table: 'routepackage_exersice'

end
