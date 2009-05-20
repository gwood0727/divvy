module Divvy
  module Plugins
    module FileUtilities
      
      # Makes a directory
      # path is the diretory to create. This will not create the directory if it already exists
      # mode is the file mode of the directory. If nil, no mode changes will be made
      def mkdir(path, mode = nil)
        run("[ -d #{path} ] || mkdir -p #{path}")
        run("chmod #{mode} #{dir}") unless mode.nil?
      end
      
    end
  end
end

register_plugin(Divvy::Plugins::FileUtilities)