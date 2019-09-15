require "pry"

class School

  attr_reader :name
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade]
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end

  end

  def grade(grade)
    @roster[grade]
  end

  def sort

    sorted = {}

    @roster.map do |grade, names|
      sorted[grade] = names.sort
    end

    sorted
  end


end
