restaurant = {}

while true
    puts "Whatwould you like to do?"
    puts "-- Type 'add' to add a movie."
    puts "-- Type 'update' to update a movie."
    puts "-- Type 'display' to display all movies."
    puts "-- Type 'delete' to delete a movie."
    x = gets.chomp
    
    case x
    when "add"
        puts "What is the restaurant name?"
        restaurant = gets.chomp
        
        if restaurant[restaurant.to_sym].nil?
            while true
            puts "Category (korean/chinese/japanese/western)"
            category = gets.chomp
            
            if category == "korean"|| category == "chinese" || category == "japanese" || category == "western"
                puts "Menu"
                menu = gets.chomp
                
            else
                puts "Rewrite, please"
                break
            end
          end
            
            puts "Rating (1-5)"
            rating = gets.chomp
            if rating < 6 && rating > 0
                rating.to_i
            else
                puts "Rewrite, please"
                break
            end
            
            puts "#{restaurant} has been added with a restaurant, category, menu, rating"
            restaurants[restaurant.to_sym] = category.to_i
            restaurants[restaurant.to_sym] = rating.to_i
            restaurants[restaurant.to_sym] = menu.to_i
            puts "**Add Success!**"
                
        else
            puts "-- Rewrite name. Already existed."
        end
    
    
    when "update"
        puts "Do you want to update the restaurant name?"
        restaurant = gets.chomp
        
        if restaurant[restaurant.to_sym].nil?
            while true
            puts "Error!"
        end
        else
            puts "Rating (1-5)"
            rating = gets.chomp
            restaurants[restaurant.to_sym] = rating.to_i
            puts "#{restaurant} has been changed rating"
        end
    
        
    when "display"
        rating.sort_by
        
        restaurants.each do |k, v|
        puts "#{k}: #{v}"
        end
    
    when "delete"
        puts "What restaurant you want to delete?"
        if restaurant[restaurant.to_sym].nil?
            puts "Error!"
        else
            restaurant.delete(restaurant.to_sym)
            puts "Restaurant is deleted."
        end
        
    when "exit"
        puts "-- The End."
    else
        puts "Error!"
    end
end
