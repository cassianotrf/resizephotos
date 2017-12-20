class PagesController < ApplicationController
  def home
    rezize_photos
    @saved_photos = Photo.all
  end

  def rezize_photos
    if Photo.count == 0
      url = 'http://54.152.221.29/images.json'
      response = HTTParty.get(url)
      @photos = response.parsed_response
      @photos['images'].each do |photo_parsed|
        photo = MiniMagick::Image.open(photo_parsed['url'])
        photo.resize "320x240"
        photo.write "app/assets/images/_small.jpg"

        output = Cloudinary::Uploader.upload("app/assets/images/_small.jpg",
                    :folder  => "planes/small", :public_id => "#{photo_parsed['url'].split('/')[-1].split('.')[0]}_small",
                    :unique_filename => false)
        small = output['secure_url']

        photo.resize "384x288"
        photo.write "app/assets/images/_medium.jpg"
        output = Cloudinary::Uploader.upload("app/assets/images/_medium.jpg",
                    :folder => "planes/medium", :public_id => "#{photo_parsed['url'].split('/')[-1].split('.')[0]}_medium",
                    :unique_filename => false)
        medium = output['secure_url']

        photo.resize "640x480"
        photo.write "app/assets/images/_large.jpg"
        output = Cloudinary::Uploader.upload("app/assets/images/_large.jpg",
                    :folder  => "planes/large", :public_id => "#{photo_parsed['url'].split('/')[-1].split('.')[0]}_large",
                    :unique_filename => false)
        large = output['secure_url']

        Photo.create(
                      name: photo_parsed['url'].split('/')[-1],
                      url: photo_parsed['url'],
                      small: small,
                      medium: medium,
                      large: large
                    )
      end
    end
  end
end
