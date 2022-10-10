class Dog
    attr_accessor :name,:breed,:age,:bark,:favorite_foods
    def initialize(name, breed, age, bark, favorite_foods)
        @name,@breed,@age,@bark,@favorite_foods =
        name,breed,age,bark, favorite_foods
    end

    def bark
        if self.age > 3
            @bark.upcase
        else
            @bark.downcase
        end
    end

    def favorite_food?(item)
        @favorite_foods.include?(item.capitalize)
    end

end
