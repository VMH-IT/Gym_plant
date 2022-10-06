class Exercise < ApplicationRecord
    validate :name_exersice , precense: true
    has_and_belongs_to_many :route_packages, join_table: 'routepackage_exercise'
    has_one_attached :image
end
