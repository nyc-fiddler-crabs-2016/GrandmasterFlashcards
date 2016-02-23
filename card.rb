class Card
  attr_reader :front, :back

  def initialize(args={})
    @front = args.fetch(:front, nil)
    @back = args.fetch(:back, nil)
  end

  def edit_front(str)
    @front = str
  end

  def edit_back(str)
    @back = str
  end
end
