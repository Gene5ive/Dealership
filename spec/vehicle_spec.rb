require 'rspec'
require 'vehicle'

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe('#make') do
    it("returns the make of the vehicle") do
      test_vehicle = Vehicle.new("Tesla", "ModelS", 2010)
      test_vehicle.save()
      expect(test_vehicle.make()).to(eq("Tesla"))
    end
  end

  describe('#model') do
    it("returns the model of the vehicle") do
      test_vehicle = Vehicle.new("Tesla", "ModelS", 2010)
      test_vehicle.save()
      expect(test_vehicle.model()).to(eq("ModelS"))
    end
  end
end
