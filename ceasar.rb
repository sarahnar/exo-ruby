def cesar_caractere(car, key)
  return car if /[^a-zA-Z]/.match(car)
  return (car.ord + -26 + key).chr if (car.downcase.ord + key).chr > 'z'
  return (car.ord + key).chr
end

def chiffre_de_cesar(str, key)
  return 'La clé doit etre comprise entre 1 et 26' if key < 1 || key > 26
  return str.chars.map{ |c| cesar_caractere(c, key) }.join
end

puts chiffre_de_cesar("What a string", 5)