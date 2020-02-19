library(rtweet)

token <- create_token(
  app = "", #app name here
  consumer_key = "", #consumer key here
  consumer_secret = "", #consumer secret here
  access_token = "", #access token here
  access_secret = "") #access secret here 

HHPNC_friends <- get_friends("HHPNC")
GTLNC_friends <- get_friends("GTLNC")
WestHillsNC_friends <- get_friends("WestHillsNC")
LosFelizNC_friends <- get_friends("LosFelizNC")

HHPNC_followers <- get_followers("HHPNC")
GTLNC_followers <- get_followers("GTLNC")
WestHillsNC_followers <- get_followers("WestHillsNC")
LosFelizNC_followers <- get_followers("LosFelizNC")

HHPNC_friends_bio <-  lookup_users(HHPNC_friends$user_id) 
GTLNC_friends_bio <- lookup_users(GTLNC_friends$user_id)
WestHillsNC_friends_bio <- lookup_users(WestHillsNC_friends$user_id)
LosFelizNC_friends_bio <- lookup_users(LosFelizNC_friends$user_id)

HHPNC_followers_bio <-  lookup_users(HHPNC_followers$user_id) 
GTLNC_followers_bio <- lookup_users(GTLNC_followers$user_id)
WestHillsNC_followers_bio <- lookup_users(WestHillsNC_followers$user_id)
LosFelizNC_followers_bio <- lookup_users(LosFelizNC_followers$user_id)

write_as_csv(LosFelizNC_followers_bio,"LosFelizNC_followers.csv")

