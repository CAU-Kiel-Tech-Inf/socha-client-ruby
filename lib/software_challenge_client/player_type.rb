# frozen_string_literal: true

require 'typesafe_enum'

# Erster oder zweiter Spieler:
#
#   ONE
#   TWO
#
# Zugriff z.B. mit PlayerType::ONE
class PlayerType < TypesafeEnum::Base
  new :ONE
  new :TWO
end
