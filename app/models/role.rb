class Role < ActiveRecord::Base
    has_many :auditions

    def locations
        self.auditions.map do |audition|
            audition.location
        end
    end

    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end

    def lead
        self.find_by(hired: 1).first
    end

    def understudy
        self.find_by(hired: 1).second
    end

end