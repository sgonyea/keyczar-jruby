module Keyczar
  class Signer < org.keyczar.Signer

    # This exists purely so we can feed in a Pathname object :)
    # @param [#to_s] The path to the keys, for the org.keyczar.Signer to use.
    def initialize(keys_path)
      super(keys_path.to_s)
    end

  end
end
