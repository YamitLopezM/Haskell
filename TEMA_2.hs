head [1, 2, 3, 4, 5]

tail [1, 2, 3, 4, 5]

[1, 2, 3, 4, 5] !! 2

take 3 [1, 2, 3, 4, 5]

drop 3 [1, 2, 3, 4, 5]

length [1,2 ,3, 4, 5]

sum [1, 2, 3, 4, 5]

product [1, 2, 3, 4, 5]

[1,2 3] ++[4, 5]

reverse [1,2, 3, 4, 5]


doble x = x + x
cuadruple x = doble (doble x)

factorial n = product [1..n]
media ns = sum ns `div` length ns

{- Esto es un comentario anidado  en haskell, cuidado con las regls de indentacion. Una definicion acaba con el primer trozo de codigo con un margen menos o igual que el del comienzo de la definicion actual -}

a = b + c
   where
      b = 1
      c = 2
d = a * 2

-- Esto es un comentario de una linea en haskell


