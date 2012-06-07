require 'java'
require 'pathname'
require 'keyczar/version'

module Keyczar
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
end

Keyczar.load_jars!
