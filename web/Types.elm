module Types exposing (..)


type User = NotLoggedInUser | LoggedInUser { userName : String }


type alias Model = { user : User }


type Msg = Increment | Decrement




--data Achievement = Achievement { achievementName : String
--                            , achievementUser : UserId  — newtype for integer
--                            , achievementScore : Int
--                            , achievementDescription : String
--                            , achievementImageName : String
--                            }

--data Player = Player { playerName : String }

--data PlayerAchievement = PlayerAchievement { player : Player
--                                      , achievement : Achievement
--                                      }

