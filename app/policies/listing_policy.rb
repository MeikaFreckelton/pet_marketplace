class ListingPolicy < ApplicationPolicy
    attr_reader :user, :listing

    def initialize(user, listing)

    end

end