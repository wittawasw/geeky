module Obfuscatable
  extend ActiveSupport::Concern

  included do
    # "John" -> "J***"
    def obfuscated_name
      name[0] + "*" * (name.length - 1)
    end
  end

  class_methods do
    def obfuscated(secret)
      secret[0] + "*" * (secret.length - 1)
    end
  end
end
