module Data.Package exposing (Category(..), Package)


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


type alias Package =
    { name : String
    , link : String
    , category : Category
    }
