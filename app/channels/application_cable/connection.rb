module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_complaint

    def connect
      self.current_complaint = find_verified_complaint
    end

    private
      def find_verified_user
        if current_complaint = Complaint.find_by(slug: cookies.signed[:complaint_slug])
          current_complaint
        else
          reject_unauthorized_connection
        end
      end
  end
end
