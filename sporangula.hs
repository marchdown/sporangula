module Sporangula where
	foo = print $ (show $ map gfology_f_one [0..10]) ++ (show $ map gfology_f_two [1..10]) 
	main = foo
-- how to I print a couple of lines?
-- how do I string together a bunch of print statements?
-- There is an IO monad somehwere. Where? What do I do with it? How do I wrap walues in it or map over it? (or am I hopelessly confused and it is _functors_ that we map over and monads are something different?)
	gfology_f_one n = sum [(flip choose n j)^2 | j <- [0..n]]

	gfology_f_two n = flip choose n (2 * n) 

	choose 0 _ = 1
	choose 1 n = n
	choose _ 1 = 1
--	choose _ 0 = 1
	choose m n = n * choose (m-1) (n-1)

-- resumé either the example is wrong, or, most likely, I misunderstand basic combinatorscs and have erred in writing choose function.

