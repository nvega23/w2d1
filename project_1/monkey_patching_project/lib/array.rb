# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

    def span
        return nil if self.length == 0
        mn = self.min
        mx = self.max
        return (mx - mn)
    end

    def average
        return nil if self.length == 0
        self.sum / (self.length * 1.0)
    end

    def median
        return nil if self.length == 0
        if self.length.odd?
            s = self.sort
            mid_index = s.length / 2
            return s[mid_index]
        else
            s = self.sort
            mid_index = s.length / 2
            first_ele = s[mid_index]
            second_ele = s[mid_index - 1]
            return (first_ele + second_ele) / 2.0
        end
    end

    def counts
        output = {}
        self.each do |ele|
            if output.include?(ele)
                output[ele] += 1
            else
                output[ele] = 1
            end
        end
        output
    end

    def my_count(value)
        count = 0
        self.each do |ele|
            if ele == value
                count += 1
            end
        end
        count
    end

    def my_index(value)
        output = []
        self.each.with_index do |char, i|
            if char == value
                output << i
            end
        end
        output[0]
    end

    def my_uniq
        output = {}
        self.each do |ele|
            if !output.include?(ele)
                output[ele] = 1
            end
        end
        output.keys
    end

    def my_transpose
        output = []
        height = self[0].length
        width = self.length
        (0...height).each do |i|
            sub_array = []
            (0...width).each do |j|
                sub_array << self[j][i]
            end
            output << sub_array
        end
        output
    end

end
