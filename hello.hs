doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else doubleMe x

doubleSmallNumber' x = (doubleSmallNumber x) + 1

-- String
conanO'Brien = "It's a me, Conan O'Brien!"


-- A list
lostNumbers = [4,8,15,16,23,42]

-- list concatenation (expensive)
numbersLostAtSea = lostNumbers ++ [1,3,5,7,9,12]

-- putting something at the beginning of a 
-- list is very very cheap
f = 0: [1,1,2,3]

-- list indexing: use of operator !!
luckyNumber = numbersLostAtSea !! 10

-- list comparision (lexographical ordering)
cmpLess = lostNumbers < numbersLostAtSea -- etc..

-- list functions
firstLostNumber = head lostNumbers -- returns the head of the list aka 
                                   -- the first element

tailLostNumbers = tail lostNumbers -- returns a list that does not contain
                 -- the head of the list given to it

lastLostNumber = last lostNumbers -- returns last element

notLastNumber = init lostNumbers -- returns everything except the last
                 -- element

lengthLostNumbers = length lostNumbers -- length

listEmpty = null lostNumbers -- check if empty

reverselostNumbers = reverse lostNumbers -- reverse given list

areEquiv = lostNumbers == take (lengthLostNumbers - 1) lostNumbers ++ [lastLostNumber]  -- extract given number of elements 
                                          -- from the start of a list

trimmed3LostNumbers = drop 3 lostNumbers -- drops the given number of elements from the beginning of a list

biggestLostNumber = maximum lostNumbers

smallestLostNumber = minimum lostNumbers

accumulateLostNumbers = sum lostNumbers

prodLostNumbers = product lostNumbers

-- see if list of things contains given thing
is4InList = 4 `elem` lostNumbers

-- Texas ranges
numbersFrom1to100 = [1..100]
oddNumbers1to100 = [1,3..100]

first24MultiplesOf13 = take 24[13,26..]

-- factors of a number N are numbers from 1..N such that they 
-- divide N perfectly
factorsOf x = [if(x `mod` y == 0) then y else 0 | y <- [1..x]]