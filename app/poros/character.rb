class Character
  attr_reader :name, :role, :house, :patronus
  def initialize(params)
    @name = params[:name]
    @role = params[:role]
    @house = params[:house]
    @patronus = params[:patronus]
  end
end
