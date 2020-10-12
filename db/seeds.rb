require 'faker'


images = ["https://www.seabird.com/asset-get.class.image.jsa?code=243134&type=P&size=M", "http://www.guildline.com/media/k2/items/cache/398a8bc2e3f7f879ff0986359513be80_XL.jpg"]

Sensor.destroy_all

puts 'Creating 100 fake equipments...'
100.times do
  sensor = Sensor.new(
    name:    ["CTD", "cable", "ADCP", "Autosal", "Termosal"].sample,
    serial_number: Faker::Device.serial,
    brand:  Faker::Device.manufacturer,
    model: Faker::Device.model_name,
    status: [true, false].sample,
    comment: Faker::TvShows::RuPaul.quote,
    image: images.sample
  )
  sensor.save!
end
puts 'Finished!'
