# encoding: UTF-8
require_relative 'card_type'

# Ein Spieler
class Player
  # @!attribute [r] name
  # @return [String] der Name des Spielers, hat keine Auswirkungen auf das Spiel
  attr_reader :name

  # @!attribute [r] color
  # @return [PlayerColor] die Farbe des Spielers, Rot oder Blau
  attr_reader :color

  # @!attribute [rw] points
  # @return [Integer] der aktuelle Punktestand des Spielers
  attr_accessor :points

  # @!attribute [rw] index
  # @return [Integer] die aktuelle Position des Spielers auf dem Spielbrett,
  #   entspricht index des Feldes, von 0 bis 64
  attr_accessor :index

  # @!attribute [rw] carrots
  # @return [Integer] die aktuelle Anzahl Karotten des Spielers
  attr_accessor :carrots

  # @!attribute [rw] salads
  # @return [Integer] die aktuelle Anzahl Salate des Spielers
  attr_accessor :salads

  # @!attribute [rw] cards
  # @return [Array[CardType]] die noch nicht gespielten Karten
  attr_accessor :cards

  # Konstruktor
  # @param color [PlayerColor] Farbe
  # @param name [String] Name
  def initialize(color, name)
    @color = color
    @name = name
    @points = 0
    @index = 0
    @carrots = 68
    @salads = 2
    @cards = CardType.to_a
  end

  def ==(other)
    color == other.color
  end
end
