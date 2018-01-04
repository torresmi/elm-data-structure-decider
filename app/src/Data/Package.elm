module Data.Package exposing (Category(..), Package, categories)


type Category
    = List
    | Dict
    | Set
    | Array
    | Queue
    | Stack
    | Matrix
    | Graph
    | Tree
    | Tuple
    | CRDT
    | Other


{-| List of all categories, useful for iterating over
-}
categories : List Category
categories =
    [ List
    , Dict
    , Set
    , Array
    , Queue
    , Stack
    , Matrix
    , Graph
    , Tree
    , Tuple
    , CRDT
    , Other
    ]


type alias Package =
    { name : String
    , link : String
    , category : Category

    -- Properties
    -- TODO: These are Maybe types because we don't want to fill in this information for all the data structures right now.
    -- Once all that information is filled in, these can be replaced with Bools
    , ordered : Maybe Bool
    , preservesOrder : Maybe Bool
    , uniqueElements : Maybe Bool
    , uniqueIdentifiers : Maybe Bool
    , keyValue : Maybe Bool
    , prioritized : Maybe Bool
    }
