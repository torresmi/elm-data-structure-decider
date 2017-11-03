module Data.Package exposing (Package)


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
    | Other


type alias Package =
    { name : String
    , link : String
    , category : Category
    }
