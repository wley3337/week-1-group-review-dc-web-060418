# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
class Photo
  attr_accessor :user
  @@all = []

  def self.all
    @@all
  end

  def initialize(user=nil)
    @user = user
    self.class.all << self
  end


  def make_comment(text)
    Comment.new(self, text)
  end

  def comments
    Comment.all.select{|comment| comment.photo == self}
  end

end


class User
  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
  end

  def photo
    Photo.all.selct {|photo| photo.user == self}
  end

end


class Comment
  attr_reader :photo, :text

  @@all = []

  def self.all
    @@all
  end

  def initialize(photo, text)
    @photo, @text = photo, text
    self.class.all << self
  end
end





photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
