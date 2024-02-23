NDCore = exports["ND_Core"]:GetCoreObject()

TriggerEvent("chat:addSuggestion", "/me", "Send an action your doing in chat! (Proximity).", {{ name="Action", help="Describe your action."}})
TriggerEvent("chat:addSuggestion", "/id", "Give the the people around you your ID!")
TriggerEvent("chat:addSuggestion", "/gme", "Send an action your doing in chat! (Global).", {{ name="Action", help="Describe your action."}})
TriggerEvent("chat:addSuggestion", "/do", "Describe an action your doing in chat! (Proximity).", {{ name="Action", help="Describe your action."}})
TriggerEvent("chat:addSuggestion", "/ooc", "Send a message in chat out of character! (Global).", {{ name="Action", help="Talk in out of character."}})