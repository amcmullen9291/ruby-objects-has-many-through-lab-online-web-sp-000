require 'pry'
require_relative 'artist'
require_relative 'genre'
class Patient 
  attr_accessor :name, :date, :doctor
  @@all = []
  
  def initialize(name, doctor=nil, appointment=nil)
    @name = name
    @doctor = doctor
    @appointment = appointment
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def new_appointment(date, doctor)
    date = Appointment.new(date, doctor)
  end 
  
  def doctors 
    Doctor.all.select do |patient|
      doctor.patient == self
    end
  end 
  
end 