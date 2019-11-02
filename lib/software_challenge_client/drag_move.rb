require_relative 'has_hints'

class DragMove

  include HasHints

  attr_reader :start
  attr_reader :destination

  def initialize(start, destination)
    @start = start
    @destination = destination
    @hints = []
  end

  def to_s
    "[Move: Drag from #{start} to #{destination}]"
  end
end
