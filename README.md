# Elm Data Structure Evaluator

An interactive website to help Elm developers find the right data structure for their needs. [Elm Project Description](https://github.com/elm-lang/projects/blob/master/README.md#data-structure-evaluation-website)

## Ideas

1. **Browse existing Elm data structures**
    - Categorize data structure implementations
        - Describe with a simple overview
        - List common usages
        - Provide good resources for learning more
    - Filter options to reduce or recommend possible data structures
        - Need sorting?
        - Preserve order?
        - Unique elements?
        - Key-value pairing?
        - Prioritized?
        - Has unique identifiers?

2. **Compare data structures**
    - Allow selecting data structures to compare, and then create one or more Scenarios
        - Scenario
            - Ask for general information to initialize and generate the selected data structures
                - Size
                - Data types (primitives and validated user records and types)
            - Data structures added to the website should use scenario data to initialize themselves with fake data
    - After creating scenarios, the user can select functions to benchmark
    - Show benchmark results and provide helpful graphs
    - Remind users that the API matters too, and that it's not just the performance of the data structure

3. **Data structures to show**
    - Create a guide to easily create pull requests for new data structures
    - Always use the latest data structure version
    - Start with data structures available on Elm 0.18
    - New data structures should support the latest Elm version number
    - Provide an indicator if _existing_ data structures do not support the latest version of Elm yet

## Current Data Structures - 7/15/2017 6:00 p.m. EST

### Dict
* [elm-avl-exploration](http://package.elm-lang.org/packages/BrianHicks/elm-avl-exploration/latest)
* [elm-dictlist](http://package.elm-lang.org/packages/Gizra/elm-dictlist/latest)
* [elm-all-dict](http://package.elm-lang.org/packages/eeue56/elm-all-dict/latest)
* [elm-default-dict](http://package.elm-lang.org/packages/eeue56/elm-default-dict/latest)
* [orderedmap](http://package.elm-lang.org/packages/eliaslfox/orderedmap/latest)
* [intdict](http://package.elm-lang.org/packages/elm-community/intdict/latest)
* [elm-avl-dict-exploration](http://package.elm-lang.org/packages/zwilias/elm-avl-dict-exploration/latest)
* [elm-avl Avl-Dict](http://package.elm-lang.org/packages/careport/elm-avl/latest/Avl-Dict)
* [elm-generic-dict GenericDict](http://package.elm-lang.org/packages/robertjlooby/elm-generic-dict/latest/GenericDict)
* [elm-ordered-dict OrderedDict](http://package.elm-lang.org/packages/wittjosiah/elm-ordered-dict/latest/OrderedDict)
* [elm-bag](http://package.elm-lang.org/packages/JohnBugner/elm-bag/latest)
* [Dict](http://package.elm-lang.org/packages/elm-lang/core/latest/Dict)
* [lru-cache](http://package.elm-lang.org/packages/lukewestby/lru-cache/latest)

### List
* [ziplist](http://package.elm-lang.org/packages/Guid75/ziplist/latest)
* [unit-list](http://package.elm-lang.org/packages/MichaelCombs28/unit-list/latest)
* [list-selection](http://package.elm-lang.org/packages/NoRedInk/list-selection/latest)
* [selectable-list](http://package.elm-lang.org/packages/SHyx0rmZ/selectable-list/latest)
* [elm-lazy-list](http://package.elm-lang.org/packages/eeue56/elm-lazy-list/latest)
* [lazy-list](http://package.elm-lang.org/packages/elm-community/lazy-list/latest)
* [elm-cons](http://package.elm-lang.org/packages/hrldcpr/elm-cons/latest)
* [difference-list](http://package.elm-lang.org/packages/league/difference-list/latest)
* [elm-nested-list](http://package.elm-lang.org/packages/lovasoa/elm-nested-list/latest)
* [elm-rolling-list](http://package.elm-lang.org/packages/lovasoa/elm-rolling-list/latest)
* [elm-infinite-zipper](http://package.elm-lang.org/packages/maorleger/elm-infinite-zipper/latest)
* [elm-nonempty-list](http://package.elm-lang.org/packages/mgold/elm-nonempty-list/latest)
* [stream](http://package.elm-lang.org/packages/naddeoa/stream/latest)
* [selectlist](http://package.elm-lang.org/packages/rtfeldman/selectlist/latest)
* [listzipper](http://package.elm-lang.org/packages/wernerdegroot/listzipper/latest)
* [elm-pivot](http://package.elm-lang.org/packages/yotamDvir/elm-pivot/latest)
* [List](http://package.elm-lang.org/packages/elm-lang/core/latest/List)

### Set
* [elm-dictset](http://package.elm-lang.org/packages/besuikerd/elm-dictset/latest)
* [elm-disjoint-set](http://package.elm-lang.org/packages/mattrrichard/elm-disjoint-set/latest)
* [elm-dictset](http://package.elm-lang.org/packages/truqu/elm-dictset/latest)
* [elm-avl Avl-Set](http://package.elm-lang.org/packages/careport/elm-avl/latest/Avl-Set)
* [elm-generic-dict GenericSet](http://package.elm-lang.org/packages/robertjlooby/elm-generic-dict/latest/GenericSet)
* [Set](http://package.elm-lang.org/packages/elm-lang/core/latest/Set)

### Array 
* [elm-array-exploration](http://package.elm-lang.org/packages/Skinney/elm-array-exploration/latest)
* [elm-non-empty-array](http://package.elm-lang.org/packages/basti1302/elm-non-empty-array/latest)
* [elm-array-2d](http://package.elm-lang.org/packages/tortus/elm-array-2d/latest)
* [Array](http://package.elm-lang.org/packages/elm-lang/core/latest/Array) (Most likely will change in 0.19)

### Queue
* [elm-fifo](http://package.elm-lang.org/packages/avh4/elm-fifo/latest)
* [elm-ratequeue](http://package.elm-lang.org/packages/bitrage-io/elm-ratequeue/latest)
* [eliaslfox/queue](http://package.elm-lang.org/packages/eliaslfox/queue/latest)
* [elm-deque](http://package.elm-lang.org/packages/folkertdev/elm-deque/latest)
* [turboMaCk/queue](http://package.elm-lang.org/packages/turboMaCk/queue/latest)

### Stack
* [elm-stack](http://package.elm-lang.org/packages/mhoare/elm-stack/latest)

### Matrix
* [elm-flat-matrix](http://package.elm-lang.org/packages/eeue56/elm-flat-matrix/latest)
* [elm-matrix](http://package.elm-lang.org/packages/chendrix/elm-matrix/latest)

### Graph 
* [graph](http://package.elm-lang.org/packages/elm-community/graph/latest)
* [hexagons](http://package.elm-lang.org/packages/Voronchuk/hexagons/latest)
* [elm-network-graph](http://package.elm-lang.org/packages/iosphere/elm-network-graph/latest)
* [elm-arc-diagram](http://package.elm-lang.org/packages/justinmimbs/elm-arc-diagram/latest)
* [sparsevector](http://package.elm-lang.org/packages/rluiten/sparsevector/latest)

### Tree
* [trie](http://package.elm-lang.org/packages/rluiten/trie/latest)
* [elm-merkletree](http://package.elm-lang.org/packages/spisemisu/elm-merkletree/latest)
* [elm-multiway-tree-zipper](http://package.elm-lang.org/packages/tomjkidd/elm-multiway-tree-zipper/latest)
* [chae-tree](http://package.elm-lang.org/packages/turboMaCk/chae-tree/latest)
* [elm-tree](http://package.elm-lang.org/packages/zwilias/elm-tree/latest)

### CRDT
* [elm-logoot](http://package.elm-lang.org/packages/hugobessaa/elm-logoot/latest)

### Tuple
* [Tuple](http://package.elm-lang.org/packages/elm-lang/core/latest/Tuple)

## License

MIT
