require "rails_helper"

RSpec.describe Character do
  it "exists with attributes" do
    character_params = {
      name: "AJ",
      role: "student",
      house: "Slytherin",
      patronus: "Tiger"
    }
    character = Character.new(character_params)

    expect(character.class).to eq(Character)
    expect(character.name).to eq(character_params[:name])
    expect(character.role).to eq(character_params[:role])
    expect(character.house).to eq(character_params[:house])
    expect(character.patronus).to eq(character_params[:patronus])
  end
end
