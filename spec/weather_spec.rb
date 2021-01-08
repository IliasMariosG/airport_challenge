SimpleCov.start

require 'weather'

describe Weather do
  describe '#stormy?' do
    it 'is stormy' do
      weather = Weather.new

      allow(weather).to receive(:rand).and_return 1
      actual_result = weather.stormy?

      expect(actual_result).to eq true
    end
    
    it 'is not stormy' do
      weather = Weather.new
      
      allow(weather).to receive(:rand).and_return 3
      actual_result = weather.stormy?
      
      expect(actual_result).to eq false
    end
  end
end
