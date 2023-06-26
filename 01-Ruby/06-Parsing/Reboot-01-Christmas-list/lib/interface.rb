# TODO: you can build your christmas list program here!
# 1. Create a Array of 'gift_list'
gift_list = ["shirt","plutonium","books"]
require "nokogiri"
require 'open-uri'

gift_list = {
    "shirt" => false,
    "plutonium" => false,
    "books" => false
  }
  
  action = nil
  puts "Welcome to your Christmas gift list"
  
  while action != 'quit'
    puts "Which action [list|add|delete|mark|idea|quit]?"
    action = gets.chomp.downcase

    case action
    when 'list'
      gifts_array = gift_list.keys # Array
  
      gifts_array.each_with_index do |gift, i|
        # if value true [x], false [ ]
        if gift_list[gift]
          puts "#{i + 1} [x] #{gift.capitalize}"
        else
          puts "#{i + 1} [ ] #{gift.capitalize}"
        end
      end
    when 'add'
      puts "What do you want to add?"
      new_gift = gets.chomp
      gift_list[new_gift] = false
    when 'delete'
      puts "Which one do you want to delete? (no.)"
      index = gets.chomp.to_i - 1
      delete_gifts = gift_list.key[index]
      gift_list.delete(delete_gift)
    # MARK
    when 'mark'
      puts "Which one do you want to mark? (no.)"
      index = gets.chomp.to_i - 1 # Integer
      # Hash => Array
      gifts_array = gift_list.keys # Array
      mark_gift = gifts_array[index] #String
      # Access the hash with the Array that we have
  
      if gift_list[mark_gift]
        gift_list[mark_gift] = false
      else
        gift_list[mark_gift] = true
      end
  
      # Channge the value of the the hash

    when 'idea'
        puts "What are you looking for on Etsy?"
        article = gets.chomp.downcase

        # filepath = "/Users/lucasvilelasouza/code/Souza-L-01/fullstack-challenges/01-Ruby/06-Parsing/Reboot-01-Christmas-list/lib/results.html"
        # html_content = File.open(filepath)
        # doc = Nokogiri::HTML.parse(html_content)

        #doc.search('.v2-listing-card__info.v2-listing-card__title').each do |element|
        #puts element.text.strip
        # end
        ideas = []
        html_content = URI.open("https://www.etsy.com/search?q=#{article}", "User-Agent" => "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:89.0) Gecko/20100101 Firefox/89.0").read
        # 2. We build a Nokogiri document from this file
        doc = Nokogiri::HTML.parse(html_content)
        ideas << element.text.strip

        # 3. We search for the correct elements containing the items' title in our HTML doc
        doc.search('.v2-listing-card__title').first(5).each do |element,i|
        # 4. For each item found, we extract its title and print it
        p "#{i + 1} #{element.text.strip}"
        end
        
    else
      puts "Sorry.. wrong action."
    end
  end
  puts "Bye"

  