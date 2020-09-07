module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :session_id

    def Connection
      self.session_id = request.session.id
    end
  end
end
