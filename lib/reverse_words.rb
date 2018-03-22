# # A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return if my_words == nil
  return if my_words.length < 1
  array = []
  i = 0
  while i < my_words.length do
    temp = ""
    until my_words[i] == " " || my_words[i] == nil
      temp += my_words[i]
      i += 1
    end
    array << temp

    if my_words[i] == " "
      array << my_words[i]
      i += 1
    end
  end

  length = array.length
  counter = 0

  last_words = ""

  length.times do
    word = array[counter]
    front_counter = 0
    back_counter = word.length - 1

    while back_counter > front_counter do
      temp_letter = word[back_counter]
      word[back_counter] = word[front_counter]
      word[front_counter] = temp_letter
      front_counter += 1
      back_counter -= 1
    end
    last_words += word

    counter += 1
  end

  a = 0
  length.times do
    my_words[a] = last_words[a]
    a += 1
  end

end

# def reverse ()
# if my_string == nil
# else
#   half = my_string.length/2
#   b = my_string.length - 1
#   i = 0
#   half.times do
#     temp = my_string[i]
#     my_string[i] = my_string[b]
#     my_string[b] = temp
#     b -= 1
#     i += 1
#   end
#   return my_string
# end
