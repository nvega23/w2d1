class Bootcamp
    attr_accessor :name, :slogan, :student_capacity, :teachers, :students, :grades
    def initialize(name, slogan, student_capacity)
        @name, @slogan, @student_capacity = name, slogan, student_capacity
        @teachers = []
        @students = []
        @grades = Hash.new{|k,v| k[v] = []}
    end

    def hire(teacher)
        @teachers << teacher
    end

    def enroll(student)
        if @students.length < @student_capacity
            @students << student
            return true
        else
            return false
        end
    end

    def enrolled?(student)
        @students.include?(student)
    end

    def student_to_teacher_ratio
        @students.length / @teachers.length
    end

    def add_grade(student, grade)
        if @students.include?(student)
            @grades[student] << grade
            return true
        else
            return false
        end
    end

    def num_grades(student)
        @grades[student].count
    end

    def average_grade(student)
        return nil if !@grades.include?(student)
        @grades[student].sum / @grades[student].length
    end

end
