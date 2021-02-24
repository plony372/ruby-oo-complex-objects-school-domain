# code here!
class School
    attr_accessor :name, :roster, :add_student, :grade, :sort

    def initialize(name=nil, roster)
        @name = name
        @roster = {}
    end 

    def add_student(studentName, grade)

        if @roster[grade]
            @roster[grade].push(studentName)
        else
          @roster[grade] = []
          @roster[grade].push(studentName)
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        new = @roster.map {|k, v | v.sort!}
        @roster

        
    end
 
end

school = School.new("Bayside High School")
school.add_student('getzel', 9)
school.add_student("frank", 9)
school.add_student('getzel', 9)
school.add_student("frank", 10)
p school.sort
