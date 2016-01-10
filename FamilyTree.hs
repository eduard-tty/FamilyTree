module FamilyTree where

type Name = String
type Age  = Int

-- explain Algebraic data types

data Gender = Male | Female deriving (Eq, Show) 
data Person = Person Name Age Gender deriving (Eq, Show) 
data Couple = Single Person 
            | Couple Person Person [ Couple ] 
            deriving (Eq, Show)

type FamilyTree = Couple -- or name and list of couples
type Rolodex    = [ Couple ]


-- instance show for both
-- typeclass that allows operations on both Family trees and Rolodexes

-- explain Maybe

find :: FamilyTree -> Person -> Maybe Couple
find c@(Single p1) p2       | p1 == p2  = Just c
find c@(Couple p1 p2 cs) p3 | p1 == p3  = Just c
find c@(Couple p1 p2 cs) p3 | p2 == p3  = Just c
find c@(Couple _ _   cs) p              = foldl f z cs
                                            where   
                                                z = Nothing
                                                f c mc = 

-- f is a combinator , use that 

next_in_line :: FamilyTree -> Person -> Person
next_in_line = undefined

last_in_line :: FamilyTree -> Person -> Person
last_in_line = undefined
