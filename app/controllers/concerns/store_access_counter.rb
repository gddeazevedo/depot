module StoreAccessCounter
  private
    def set_counter
      if session[:counter].nil?
        @counter = 1
        session[:counter] = @counter
      else
        @counter = session[:counter]
        session[:counter] += 1
      end
    end

    def reset_counter
      session[:counter] = 1
    end
end
