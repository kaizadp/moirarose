library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
  theme = shinythemes::shinytheme("flatly"),
  
  
h4("Film and Television's Moira Rose"),
h4("Lover of Fruit Wine"),
  
  br(),
  
    actionButton("goButton", "get a Moira Rose quote", 
                 style="color: #fff; background-color: #023047; border-color: #023047",
                 width="100%"),
    h3(textOutput("nText"))
  )

# Define server logic required to draw a histogram

server <- function(input, output) {
  
  # builds a reactive expression that only invalidates 
  # when the value of input$goButton becomes out of date 
  # (i.e., when the button is pressed)
  ntext <- eventReactive(input$goButton, {
    moira = c("Now is not the time for PETTIFOGGING!",
              "The world is falling apart around us, and I am dying inside",
              "Stop acting like a DISGRUNTLED PELICAN",
              "I am positively BEDEVILED with meetings, et cetera",
              "Next, you FOLD in the cheese",
              "You FOLD it in",
              "Why must you be so constantly IRKSOME?",
              "How MERCURIAL is life",
              "Are you a dirty peeping tom?",
              "Track that CYCLE, missy!",
              "It's like working off a CORPSE",
              "I had just had my eyelashes dyed, everything was cloudy",
              "Sadly, I won't be able to SQUIRE you for today's wedding venue PEREGRINATIONS",
              "... and here I get a BALATRON",
              "I promise to keep my husband HABILIMENTED",
              "Say HAVARTI, girls",
              "Please tell me it's not a TESTUDINE",
              "You may as well tie a leash around a raw chicken cutlet",
              "It tastes like AMOXICILLIN",
              "I'm eating egg whites and hoping the building will collapse",
              "Gossip is the devil’s telephone, best to just hang up",
              "Oh, I'd kill for a good COMA right now",
              "What you did was IMPULSIVE, CAPRICIOUS, and MELODRAMATIC. But it was also wrong",
              "You are blind to reality, and for that I am most proud",
              "I would be pleased to RSVP as ... pending",
              "I should have appreciated those firm round MAMMAE while I still had them",
              "This has obviously worked you up into some type of PIQUE",
              "Your marriage is as BLIGHTED as this town",
              "We've struggled with PENURY for quite some time now",
              "I will talk to that ODIOUS little man",
              "I'm the INGENUE here",
              "This is my 'talk now, shoot later' look",
              "I would shop here, even without the nagging sense of obligation",
              "WAGGISH little nymph that she is",
              "Best to avoid any FULSOME INDECORUM",
              "Very PAWKY, Jocelyn",
              "I'm so happy I rescued you away for this OENOLOGICAL escapade",
              "I may impart a slice of marital SAGACITY",
              "Don't be a DODDYPOLL, Alexis",
              "It began as a KATZENJAMMER of a day",
              "Can no-one find nude pictures of me on the internet?",
              "So it was the bébé",
              "There's nothing here but hot singles in my area",
              "I'm not entirely versed on the contents of the hotel's pillow collection",
              "Alexis looked Chinese as an infant",
              "She has no idea the toll a bébé can take on its mother",
              "It keeps the relationship titillating",
              "The singles have arrived!",
              "This is your bébé, Jocelyn",
              "Does bébé enjoy the theater?",
              "So now you're taking bébé to the spa",
              "At 9 am it's a little early for character assassination",
              "What a unanimously disastrous day this is turning out to be",
              "My bébés ... Lorna ... if she takes on smoke, she'll never recover",
              "The live crows on set welcomed me as their own",
              "Be careful, lest you suffer vertigo from the dizzying heights of your moral ground",
              "I used to share your FELICIFIC optimism, dear",
              "The opportunities will diminish, and the ass will grow bigger",
              "As if ... I don't do girl talk",
              "This wine is aw-ful ... give me another glass",
              "David, what does burning smell like?",
              "Would it kill someone to plant a few peonies?",
              "A creative solution would be a lobotomy to make one forget they liked nice things",
              "Who put a picture of a ghost on my desk?",
              "What have I told you about putting your body on the internet? Never, never without proper lighting",
              "Don't be a DEWDROPPER",
              "You'll remember the experience, and you'll remember the name",
              "Has it gotten worse, or are you just not wearing any makeup?",
              "")
    sample(moira, size=1)
  })
  
  output$nText <- renderText({
    ntext()
  })
}