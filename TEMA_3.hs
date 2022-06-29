-- Un tipo es una coleccion de valores relacionados.

v :: T


:type Tru


{- Los lenguajes en los que la inferencia de tipo precede a la evaluacion 
se denominan de tipos seguros -}

-- TIPOS BASICOS

-- Bool (Valores logicos)

-- Char (Caracteres)

-- String (Cadenas de caracteres)

-- Int (Enteros de precision fija, entre -2^31 y 2^31-1)

-- Integer (Enteros de precision arbitraria)

-- FLoat (Reales de precision arbitraria)

-- Double (Realis de precision doble)

-- TIPOS COMPUESTOS

-- Tipos listas

-- Una lista es una sucesion de elementos del mismo tipo
-- [T] es el tipo de las listas de elementos de tipo T

[False, True] :: [Bool]

['a', 'b', 'c'] :: [Char]

["uno", "dos"] :: [String]

-- lista vacia de longitud 0
[]

-- Tipos tuplas

-- Una tupla es una sucesion de elementos
-- (T1, T2, ..., Tn) es el tipo de las n-tuplas cuya compenente i-esima es de tipo Ti

(False, 'a', "hola mundo") :: (Bool, Char, String)

-- tupla vacia de aridad 0

()

-- No estan permitidas las tuplas de longitud 1

-- Tipos de funciones

-- una funcion es una aplicacion de valores de un tipo en valores de otro tipo

-- T1 -> T2 es el tipo de las funciones que aplica valores del tipo T1 en valores del tipo T2

not :: Bool -> Bool
isDigit :: Char -> Bool

suma :: (Int, Int) -- Int
suma (x, y) = x+y

deCeroA :: Int -> [Int]
deCeroA n = [0..n]

-- En las definiciones se ha escrito la signatura de las funciones
-- No es obligatorio escribir la signatura de las funciones
-- Es conveniente escribir las signaturas

-- Parcializacion

{- Mecanismo de parcializacion (currying en ingles) las funciones de mas de un argumento pueden interpretarse como funciones que toman un argumento y devuelven otra funcion con un argumento menos -}

suma' :: Int -> (Int -> Int)
suma' x y = x+y

:type suma' 2

mult :: Int -> (Int -> (Int -> Int))
mult x y z = x*y*z

:type mult 2

-- Apliaciones parciales

-- Las funciones que toan sus argumentos de uno en uno se llaman currificadas (curried en ingles)

-- Las funciones suma' y mult son currificadas

-- Las funciones currificadas pueden aplicarse parcialmente. Por ejemplo

(suma' 2) 3


-- Pueden definirse funciones usuando aplicaciones parciales. Por ejemplo

suc :: Int -> Int
suc = sum' 1

-- Convenios para reducir parentesis

-- Convenio 1: las flechas en los tipos se asocia por la derecha.
-- Convenio 2: Las aplicaciones de funciones se asocia por izquierda.
-- Nota: todas las funciones con multiples argumentos se definen en forma currificada, salvo que explicitaente se diga que los argumentos tienen que ser tuplas.

-- Polimorfismo y sobrecarga

-- Tipos polimorficos

-- Un tipo es polimorfico ("tiene muchas formas") si contiene una variable de tipo.

-- Una funcion es polimorfica si su tipo es polimorfico

:type length

-- Las variables de tipos tienen que empezar con minuscula

fst :: (a, b) -> a
fst (a, b) = a

fst (1, 'x')
fst (True, "Hola")

head [2, 1, 4]
head ['b', 'c']

: type head

take 3 [3, 5, 7, 9, 4]
take 2 ['l', 'o', 'r', 'o']

:type take

zip [3, 5] "lo"

:type zip

id 3
id 'x'

:type id

-- Tipos sobrecargados

-- Un tipo es sobrecargado si contiene una restriccion de clases
-- una funcion es sobrecargada si su tipo es sobrecargado

-- la funcion sum esta sobrecargada

:type sum

-- Significa que para cualquier tipo numerico a, sum toma una lista de elementos de tipo a y devuelve un valor de tipo a

-- Num a: Es una restriccion de clases

-- Las restricciones de clase son expresiones de la forma C a, donde C es el nombre de una clase y a es una variable de tipo

-- Ejemplos de funciones sobrecargadas
:type -
:type *
:type negate
:type abs
:type signum

-- Ejemplos de numeros sobrecargados

:type 5
-- 5 :: (Num t) -> t
:type 5.2
-- 5.2 :: (Fractional t) -> t

-Clases basicas

-- una clase es una coleccion de tipos junto con ciertas operaciones sobrecargadas llamadas metodos

-- Clases basicas

-- Eq (tipos comparables por igualdad)
-- Ord (tipos ordenados)
-- Show (tipos mostrables)
-- Read (tipos legibles)
-- Num (tipos numericos)
-- Integral (tipos enteros)
-- Fractional (tips fraccionarios)



