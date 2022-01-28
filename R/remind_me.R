#'Reminds me of important stuff
#'@export
remind_me <- function (){
  print("first remind yourself this:")
  browseURL("https://www.youtube.com/watch?v=-rska7pVUwI", browser = NULL)
  print("also, you wanted to read these books:")
  b1<-c("Irreversible things (Lisa van orman Hadley)", "All the Dancing Birds (Auburn McCanta)",
        "Lowering Clouds (Nuria Ano)", "Animal Dreams (Barbara Kingsolver)",
        "Everything I never told you (Celeste Ng)", "Fearing the Black Body",
        "Croos-cultural psychology book that Klara borrowed you")
  books<-list(b1=b1)
  b1
}
