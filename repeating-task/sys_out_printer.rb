require 'torquebox'
require 'torquebox-base'

class SysOutPrinter

  def initialize
    @logger = TorqueBox::Logger.new( self.class )
  end
  def run
    @logger.error "Something OUTPUT HERE\n\n\nHOORAY\n\n"
  end
end


