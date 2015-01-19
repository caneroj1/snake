module Snake
  class Parser

    class << self
      def parse(file)
        vars = compare(get_new_variables(file), get_default_variables)
      end

      private
      def get_new_variables(file)
        JSON.parse(File.read(file))["vars"]
      end

      def get_default_variables
        JSON.parse(File.read(File.expand_path("json/defaults.json")))["vars"]
      end

      def compare(new_vars, default_vars)
        default_vars.each_pair do |key, var|
          new_vars.delete_if { |new_key, new_var| new_var.eql?(var) }
        end
        new_vars
      end
    end
  end
end
