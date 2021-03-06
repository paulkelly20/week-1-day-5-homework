def pet_shop_name(pet_shop)
   pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,cash)
  return pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
   pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,sold)
   pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
   pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed, *pets_to_find)
  for pet in pet_shop[:pets]
    if pet[:breed] == breed then pets_to_find.push(pet)
    end
  end
  pets_to_find
end

def find_pet_by_name( pet_shop, name )
  for pet in pet_shop[:pets]
    return pet if pet[:name] == name
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  pet_shop[:pets].delete(find_pet_by_name(pet_shop, name))
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
  end

def customer_pet_count(pet_shop)
  pet_shop[:pets].count
end

def add_pet_to_customer(customer, new_pet)
   customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, pets)
  customer[:cash] > pets[:price]
end

def sell_pet_to_customer(pet_shop, pets, customer)
      if pets && customer_can_afford_pet(customer, pets)
      add_pet_to_customer(customer, pets)
      increase_pets_sold(pet_shop, 1)
      add_or_remove_cash(pet_shop, pets[:price])
      end
end
