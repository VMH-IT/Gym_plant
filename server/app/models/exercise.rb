class Exercise < ApplicationRecord
    has_and_belongs_to_many :route_packages, join_table: 'routepackage_exercise'
end
