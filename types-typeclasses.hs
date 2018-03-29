-- | instance of Show (meaning that we know how to represent it as a string)
data Point = Point Float Float deriving (Show)
data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

surfaceArea :: Shape -> Float
-- | So, You can pattern match aginst constructors
surfaceArea (Circle  _ r)   =  pi* r^2
surfaceArea (Rectangle (Point x1 y1) (Point x2 y2) ) = (abs $ x2 - x1) * (abs $ y2 - y1)


moveShape :: Shape -> Float ->  Float -> Shape
moveShape (Circle (Point x y) r) xMove yMove = Circle (Point (x+xMove) (y+yMove)) r -- if you don't serrousnd x+xMove with ()
--moveShape (Circle (Point 1 2) 5) 1 2 -- A function application                               --  it's an error
moveShape (Rectangle (Point x1 y1) (Point x2 y2)) xMove yMove  = Rectangle (Point (x1+xMove) (y1+yMove))
                                                                 (Point (x2+xMove) (y2+yMove))
-- moveShape (Rectangle (Point 1 1) (Point 3 3)) 2 2
--  Output>> Rectangle (Point 358.0 558.0) (Point 355.0 578.0) ; 


--You can, of course, export your data types in your modules.
--To do that, just write your type along with the functions you are exporting and then add some parentheses and in them specify the value constructors that you want to export for it,

----------------------------------------------------------
data Person1 = Person1 String String Int Float String deriving (Show)  -- fname, lname, age, hieght phone
    -- let taha = Person1 "Taha" "Magdy" 20 170.987 "011 484 62 144"

-- | The Boring way of defingin a new datatypes
--      here, You need to define functions to get its parameters
getFirstName1:: Person1 -> String
getFirstName1 (Person1 fname _ _ _ _) = fname

getSecondName1:: Person1 -> String
getSecondName1 (Person1 _ sname _ _ _) = sname

getAge1:: Person1 -> Int
getAge1 (Person1 _ _ age _ _) = age

getHieght1:: Person1 -> Float
getHieght1 (Person1 _ _ _ hieght _) = hieght

getPhone1:: Person1 -> String
getPhone1 (Person1 _ _ _ _ phone) = phone
-- ^ This was how to get the data from the types ; BUT There is a better way!


-- | This is a way in which we define datatypes and its getter functions
-- we use curly brackets, It is `Record syntax`
-- | Use record syntax when a constructor has several fields and it's not obvious which field is which.
data Person2 = Person2 { getFirstName2 :: String
                       , getSeconsName2:: String
                       , getAge2       :: Int
                       , getHieght2    :: Float
                       , getPhone2     :: String
                       } deriving (Show)

-------------------------------------------------------
-- Type Parameters
