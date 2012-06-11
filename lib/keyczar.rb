require 'java'
require 'pathname'
require 'keyczar/version'

module Keyczar
  autoload :Signer, 'keyczar/signer'

  def self.root
    @root ||= Pathname(File.dirname File.expand_path(__FILE__))
  end

  def self.load_jars!
    @load_jars ||= begin
      jars = Dir[ root + "jars/*.jar" ]
      jars.each { |jar| require jar }
      true
    end
  end

  # @param [String] The full file-system path to a Log4j Properties File
  # @return [nil] Nil is a good sign
  def self.set_logger_properties(props_file)
    org.apache.log4j.PropertyConfigurator.configure(props_file.to_s)
  end
end

Keyczar.load_jars!
