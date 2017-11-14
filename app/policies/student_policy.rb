class StudentPolicy < ApplicationPolicy
    def index?
      true
    end
   
    def create?
      user.present?
    #   admin.present?
    end
   
    def update?
        if user.present? && user.role == "Admin"
            return true 
        elsif user.present? && user.role == "Student"
            puts "student not allowed"
            return false
        end
        # false
    end
   
    def destroy?
    #   return true if user.present? && user
    #   return true if admin.present? && student.destroy.all

        if user.present? && user.role == "Admin"
            return true 
        elsif user.present? && user.role == "Student"
            puts "student not allowed"
            return false
        end

    end
   
    private
   
      def student
        record
      end
  end