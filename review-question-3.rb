# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class Photo
  attr_accessor :photo_name, :user, :comment
  @@photos = []
  def initialize
    @@photos << self
  end
  def self.photos
    @@photos
  end
end

class Comment
  attr_accessor :comment
  attr_reader :user, :photo
  @@all = []
  def initialize(comment, photo, user)
    @photo = photo
    @comment = comment
    @user = user
    @@all << self
  end
  def self.all
    @@all
  end
end



class User
  attr_reader :name
  def initialize(name)
    @name = name
  end
  # def make_photo(photo_name)
  #   photo_name = Photo.new(photo_name, self)
  # end
  def photos
    photo_arr = Photo.photos.select {|photo| photo.user == self}
    photo_arr
  end
  def make_comment(comment, photo)
    comment = Comment.new(comment, photo, self)
    photo.comment=(comment)
  end
end




sophie = User.new("Sophie")
todd = User.new("Todd")

sandwich_photo = Photo.new
sandwich_photo.user = todd

coffee_dad_photo = Photo.new
coffee_dad_photo.user = todd
coffee_dad_photo.photo_name = "coffee_dad_photo"

more_coffee_dad_photos = Photo.new
more_coffee_dad_photos.user = sophie
more_coffee_dad_photos.photo_name = "more_coffee_dad_photos"

car_photo = Photo.new
car_photo.user = sophie
car_photo.photo_name = "car_photo"

sophie.make_comment("great pic todd", sandwich_photo)

p todd.photos

# sophie.make_photo("sandwich_photo")
# sophie.make_photo("coffee_dad_photo")
# todd.make_photo("more_coffee_dad_photos")
# todd.make_photo("car_photo")

# p sophie.photos
# p Photo.photos


# sandwich_photo.user = sophie
# sandwich_photo.user.name
# # => "Sophie"
# user.photos
# # => [#<Photo:0x00007fae2880b370>]
#
#
# sandwich_photo.comments
# # => []
#
# sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
# sandwich_photo.comments
# # => [#<Comment:0x00007fae28043700>]
#
# Comment.all
#=> [#<Comment:0x00007fae28043700>]
