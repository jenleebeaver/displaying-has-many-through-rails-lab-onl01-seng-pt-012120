class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    #don't forget to create custom getter and setter methods to associate methods in forms 
  
    def doctor_name=(name)
       self.doctor = Doctor.find_or_create_by(name: name)
     end
  
     def doctor_name
        self.doctor ? self.doctor.name : nil

        # if self.doctor 
        #     self.doctor.name
        # else
        #     nil
     end
  
    def patient_name=(name)
      self.patient = Patient.find_or_create_by(name: name)
    end
  
    def patient_name
      self.patient ? self.patient.name : nil
    end
  end