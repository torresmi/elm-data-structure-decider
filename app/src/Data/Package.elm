module Data.Package exposing (Package, Category(..), categories)


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
    }
