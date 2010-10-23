require 'rubygems'
require 'httparty'

class Pinboard
  include HTTParty
  base_uri 'https://api.pinboard.in/v1'

  def initialize(auth)
    @auth = auth
  end

  def getPosts(options={})
    apiData = {:basic_auth=>@auth}
    apiData.merge!(options)
    self.class.get('/posts/get', apiData)
  end

  def recentPosts()
    #TODO
  end

  def addPost(u, d, options={})
    apiQuery = {:url=>u, :description=>d}
    apiData = {
      :basic_auth=>@auth, :query=>apiQuery
    }
    
    self.class.get('/posts/add', apiData)
  end

  def deletePost()
    #TODO
  end

  def getDates()
    #TODO
  end

  def allPosts()
    #TODO
  end
    
  def hashAll
    #TODO
  end
  
  def suggestPosts()
    #TODO
  end

  def getTags()
    #TODO
  end

  def renameTag()
    #TODO
  end

  def deleteTag()
    #TODO
  end

  def getTagBundles()
    #TODO
  end

  def assignTagsToBundle()
    #TODO
  end

  def deleteBundle()
    #TODO
  end
    
end

puts "Enter Pinboard.in username: "
u = gets.chomp
puts "and the password: "
p = gets.chomp
puts "Let me process"
pb = Pinboard.new(:username=>u, :password=>p)
puts pb.getPosts()
puts "******************"
puts "**** ADD POST ****"
puts "******************"
puts pb.addPost('http://google.com', 'google')
