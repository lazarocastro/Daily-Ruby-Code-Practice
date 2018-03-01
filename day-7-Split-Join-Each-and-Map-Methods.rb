######################################################################## 
# You can use "seeing_is_believing" gem to see how these methods works #
########################################################################
#
#
#########
# split #
#########
str = "Star Wars, Luke, Darth, Yoda"

p str.class
p str.split(/, / )
p str.split(/, /, 2)

first, *rest = str.split(/, /)
p first.class
p rest.class

api = "@=>Posts={title: asdfasdf, title: zxcvzxcv}, @=>Comments={body: qwe, body: vcxfgsfd}"
p api.split(/@=>/)

# join
#
arr = ["Star Wars", "Luke", "Darth", "Yoda"]

p arr.join(', ')

def sentence_join array
  array[0..-2].join(", ") + ", and " + array[-1]
end

p sentence_join arr

###########################
# split, join and reverse #
###########################
my_word = "Hello"

# First Method
# --------------------
p my_word.split(//).reverse.join()

# Second Method
# --------------------
def my_reverse str
  reversed_words = []
  str.split(//).reverse_each do |l|
    reversed_words << l
  end
  p reversed_words.join
end

my_reverse my_word

# Third Method
# --------------------
class String
  def alt_reverse
    str_array = self.split(//)
    reversed_array = []
    total_count = str_array.count
    total_count.downto(1) { |i| reversed_array << str_array[i - 1] }
    reversed_array.join
  end
end

p my_word.alt_reverse

# Fourth Method
# --------------------
p my_word.chars.reduce { |a, b| b + a }

##########
# inject #
##########
longest = %w{ cat  sheep bear }.inject do |memo, word|
  memo.length > word.length ? memo : word
end

longest

#######
# map #
#######
projects = ["TypeScript", "IDE", "Ruby Gem", "Angular"]

def style_projects_with_each projects
  uppercase_projects = []
  projects.each do |projects|
    uppercase_projects << projects.upcase
  end
  uppercase_projects
end

# TINNY METHOD TO USE map
#
def style_projects_with_map projects
  projects.map(&:upcase)
end


# SHORT METHOD TO USE map
#
# def style_projects_with_map projects
#   projects.map { |projects| projects.upcase}
# end

# LONG METHOD TO USE map
#
# def style_projects_with_map projects
#   projects.map do |projects|
#     projects.upcase
#   end
# end

p style_projects_with_each projects
p style_projects_with_map projects
p projects.map(&:upcase)
