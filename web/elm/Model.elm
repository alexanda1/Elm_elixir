module Model exposing (..)

type alias Model =
  { contactList : contactList
  , error : Maybe String
  }

type alias ContactList =
  {   entries : List Contact
    , page_number : Int
    , total_entries : Int
    , total_pages : Int
  }

type alias Contact =
  { id : Int
  , first_name : String
  , last_name : String
  , gender : Int
  , birth_date : String
  , location : String
  , phone_number : String
  , email : String
  , headline : String
  , picture : Strings
  }
