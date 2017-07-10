puts (1..1000).select { |i| i % 3 == 0 || i % 5 == 0}.reduce(:+)

#dans la liste entre 1et 1000 selectionne tous les multi de 3 et 5 et additionne les !