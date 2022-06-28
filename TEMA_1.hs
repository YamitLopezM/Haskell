module TEMA_1 where

main :: IO()
main = putStrLn "Introduccion a la programacion funcional"

doble :: Int -> Int
doble n = n+n

ordena :: [Int] -> [Int]
ordena [] = []
ordena (x:xs) =
   (ordena menores) ++ [x] ++ (ordena mayores)
   where menores = [a | a <- xs, a <= x]
         mayores = [b | b <- xs, b > x]

