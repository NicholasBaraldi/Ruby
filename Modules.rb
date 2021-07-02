class Engineer
    def math
        puts "Numbers!"
    end
end

module Manager #Modules can't be instantiated
    def yelling
        puts "BACK TO WORK!"
    end
end

class LeadEngineer < Engineer
    include Manager
end

lead_eng = LeadEngineer.new

lead_eng.math

lead_eng.yelling