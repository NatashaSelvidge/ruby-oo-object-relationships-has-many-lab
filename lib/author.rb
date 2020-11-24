class Author 
attr_accessor :name
@@all = []

def self.all
  @@all
end 
def initialize(author_name)
  @name=(author_name) 
  @@all << self
end

  def posts
    Post.all.select { |post| post.author == self}
  end

  def add_post(post)
    post.author = self
end    
def add_post_by_title(post_title)
   post = Post.new(post_title)
   post.author = self
end 

def self.post_count
Post.all.count

end 

end