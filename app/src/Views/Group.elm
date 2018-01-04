module Views.Group exposing (Render, view)

import Bootstrap.Card as Card
import Data.Package exposing (Category, Package)
import Html exposing (Html)


type alias Render a =
    { a
        | category : Category
        , packages : List Package
    }


view : Render a -> Html msg
view renderable =
    Card.config []
        |> Card.header []
            [ Html.h3 [] [ Html.text <| categoryTitle renderable.category ]
            ]
        |> Card.block []
            []
        |> Card.view


categoryTitle : Category -> String
categoryTitle =
    toString
