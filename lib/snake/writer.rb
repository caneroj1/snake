module Snake
  class Writer

    class << self
      def write(vars)
        file = open_file
        vars.each_pair { |key, val| file.puts "$#{key.gsub(/@/, "")} : #{val.gsub(/@/, "");" }
        file.close
      end

      private
      def open_file
        file =
        if Rails.env.eql?("test")
          File.open(File.join(Rails.root, TEST_PATH), "w")
        else
          File.open(File.join(Rails.root, APP_PATH), "w")
        end
      end
    end
  end
end
