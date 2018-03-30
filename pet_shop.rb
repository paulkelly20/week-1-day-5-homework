def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,cash)
  return pet_shop[:admin][:total_cash] += cash
  # return pet_shop[:admin][:total_cash] -= cash

end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop,sold)
  return pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  pets_to_find = []
  for pet in pet_shop[:pets]
    if pet[:breed] == breed
      pets_to_find << pet

    end
end
return pets_to_find
end

# def find_pet_by_name(pet_shop, name)
#   pets_to_find = []
#   for pet in pet_shop[:pets]
#     if pet[:name] == name
#       pets_to_find << pet
#
#     end
# end
# return pets_to_find
# end

def find_pet_by_name( pet_shop, name )

  for pet in pet_shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil

end
