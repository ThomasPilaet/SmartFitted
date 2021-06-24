void initControlP5() {

  // set text style
  PFont pfont1 = createFont("Arial", 16);
  ControlFont font = new ControlFont(pfont1, 16);

  // init ControlerP5
  cp5 = new ControlP5(this);

  // init components

  //Household buttons/sliders
  householdtype =  cp5.addRadioButton("householdtype")
    .setPosition(width*0.07, height*0.236)
    .setSize(30, 30)
    .setItemsPerRow(1)
    .setSpacingRow(10)
    .setColorBackground(color(255))
    .addItem("Living together only with partner", 1)
    .addItem("Living together with partner and child(ren)", 2)
    .addItem("Living together with housemate(s)", 3)
    .addItem("Single parent with child(ren)", 4)
    .addItem("Single", 5)
    .hideLabels()
    ;

  housetype =  cp5.addRadioButton("housetype")
    .setPosition(width*0.34, height*0.236)
    .setSize(30, 30)
    .setItemsPerRow(1)
    .setSpacingRow(10)
    .setColorBackground(color(255))
    .addItem("Detached house", 1)
    .addItem("Terraced/corner house", 2)
    .addItem("Semi-detached house", 3)
    .addItem("Appartment", 4)
    .hideLabels();
  ;

  householdconfirm = cp5.addButton("householdconfirm")
    .setPosition(width/2- 150, height*0.62)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(householdconfirm, font, "Fill in occupant characteristics");
  
  save_ = cp5.addButton("save_")
    .setPosition(width/2 + 30, height*0.31)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(save_, font, "Save changes and continue");

  discard = cp5.addButton("discard")
    .setPosition(width/2 - 260, height*0.31)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(discard, font, "Keep editing previous occupant");
  
  closeEduInfo = cp5.addButton("closeEduInfo")
    .setPosition(width/2 - 100, height*0.36)
    .setSize(200, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(closeEduInfo, font, "Close this tab");
  
  //occuptant edit buttons

  edit1 = cp5.addButton("edit1")
    .setPosition(width*0.035, height*0.778)
    .setSize(207, 25)
    .setColorBackground(color(185))
    .setColorForeground(color(150))
    .setColorLabel(color(0));
  setButtonStyle(edit1, font, "Edit occupant");

  edit2 = cp5.addButton("edit2")
    .setPosition((0.035*width)+(1*(width*0.16)), height*0.778)
    .setSize(207, 25)
    .setColorBackground(color(185))
    .setColorForeground(color(150))
    .setColorLabel(color(0));
  setButtonStyle(edit2, font, "Edit occupant");

  edit3 = cp5.addButton("edit3")
    .setPosition((0.035*width)+(2*(width*0.16)), height*0.778)
    .setSize(207, 25)
    .setColorBackground(color(185))
    .setColorForeground(color(150))
    .setColorLabel(color(0));
  setButtonStyle(edit3, font, "Edit occupant");

  edit4 = cp5.addButton("edit4")
    .setPosition((0.035*width)+(3*(width*0.16)), height*0.778)
    .setSize(207, 25)
    .setColorBackground(color(185))
    .setColorForeground(color(150))
    .setColorLabel(color(0));
  setButtonStyle(edit4, font, "Edit occupant");

  edit5 = cp5.addButton("edit5")
    .setPosition((0.035*width)+(4*(width*0.16)), height*0.778)
    .setSize(207, 25)
    .setColorBackground(color(185))
    .setColorForeground(color(150))
    .setColorLabel(color(0));
  setButtonStyle(edit5, font, "Edit occupant");

  edit6 = cp5.addButton("edit6")
    .setPosition((0.035*width)+(5*(width*0.16)), height*0.778)
    .setSize(207, 25)
    .setColorBackground(color(185))
    .setColorForeground(color(150))
    .setColorLabel(color(0));
  setButtonStyle(edit6, font, "Edit occupant");

  //confirm edit to occupant buttons

  confirm1 = cp5.addButton("confirm1")
    .setPosition(width - 100, height*0.87)
    .setSize(100, 50)
    .setColorBackground(color(#6dc18a))
    .setColorForeground(color(#6fa879))
    .setColorLabel(color(0));
  setButtonStyle(confirm1, font, "Save");

  confirm2 = cp5.addButton("confirm2")
    .setPosition(width - 100, height*0.87)
    .setSize(100, 50)
    .setColorBackground(color(#6dc18a))
    .setColorForeground(color(#6fa879))
    .setColorLabel(color(0));
  setButtonStyle(confirm2, font, "Save");

  confirm3 = cp5.addButton("confirm3")
    .setPosition(width - 100, height*0.87)
    .setSize(100, 50)
    .setColorBackground(color(#6dc18a))
    .setColorForeground(color(#6fa879))
    .setColorLabel(color(0));
  setButtonStyle(confirm3, font, "Save");

  confirm4 = cp5.addButton("confirm4")
    .setPosition(width - 100, height*0.87)
    .setSize(100, 50)
    .setColorBackground(color(#6dc18a))
    .setColorForeground(color(#6fa879))
    .setColorLabel(color(0));
  setButtonStyle(confirm4, font, "Save");

  confirm5 = cp5.addButton("confirm5")
    .setPosition(width - 100, height*0.87)
    .setSize(100, 50)
    .setColorBackground(color(#6dc18a))
    .setColorForeground(color(#6fa879))
    .setColorLabel(color(0));
  setButtonStyle(confirm5, font, "Save");

  confirm6 = cp5.addButton("confirm6")
    .setPosition(width - 100, height*0.87)
    .setSize(100, 50)
    .setColorBackground(color(#6dc18a))
    .setColorForeground(color(#6fa879))
    .setColorLabel(color(0));
  setButtonStyle(confirm6, font, "Save");

  // add occupant buttons
  add3 = cp5.addButton("add3")
    .setPosition(width*0.354, 0.52*height)
    .setSize(210, 216)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));    
  setButtonStyle(add3, font, "Add occupant");

  add4 = cp5.addButton("add4")
    .setPosition(width*0.514, 0.52*height)
    .setSize(210, 216)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(add4, font, "Add occupant");

  add5 = cp5.addButton("add5")
    .setPosition(width*0.674, 0.52*height)
    .setSize(210, 216)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(add5, font, "Add occupant");

  add6 = cp5.addButton("add6")
    .setPosition(width*0.834, 0.52*height)
    .setSize(210, 216)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(add6, font, "Add occupant");

  //remove occupant buttons

  remove3 = cp5.addButton("remove3")
    .setPosition((0.035*width)+(2*(width*0.16)), height*0.813)
    .setSize(207, 25)
    .setColorBackground(color(#dd7070))
    .setColorForeground(color(#e78585))
    .setColorLabel(color(0));
  setButtonStyle(remove3, font, "Remove occupant");

  remove4 = cp5.addButton("remove4")
    .setPosition((0.035*width)+(3*(width*0.16)), height*0.813)
    .setSize(207, 25)
    .setColorBackground(color(#dd7070))
    .setColorForeground(color(#e78585))
    .setColorLabel(color(0));
  setButtonStyle(remove4, font, "Remove occupant");

  remove5 = cp5.addButton("remove5")
    .setPosition((0.035*width)+(4*(width*0.16)), height*0.813)
    .setSize(207, 25)
    .setColorBackground(color(#dd7070))
    .setColorForeground(color(#e78585))
    .setColorLabel(color(0));
  setButtonStyle(remove5, font, "Remove occupant");

  remove6 = cp5.addButton("remove6")
    .setPosition((0.035*width)+(5*(width*0.16)), height*0.813)
    .setSize(207, 25)
    .setColorBackground(color(#dd7070))
    .setColorForeground(color(#e78585))
    .setColorLabel(color(0));
  setButtonStyle(remove6, font, "Remove occupant");
  
  removeconfirm = cp5.addButton("removeconfirm")
    .setPosition(width/2 + 30, height*0.31)
    .setSize(230, 50)
    .setColorBackground(color(130, 0, 0))
    .setColorForeground(color(200, 0, 0));
  setButtonStyle(removeconfirm, font, "Remove occupant(s)");

  back4 = cp5.addButton("back4")
    .setPosition(width/2 - 260, height*0.31)
    .setSize(230, 50)
    .setColorBackground(color(200))
    .setColorForeground(color(180))
    .setColorActive(color(255))
    .setColorLabel(color(0));
  setButtonStyle(back4, font, "Dont remove");

  //occupant edit button/sliders

  occupantgender = cp5.addRadioButton("occupantgender")
    .setPosition(width*0.025, height*0.94)
    .setSize(30, 30)
    .setItemsPerRow(3)
    .setSpacingColumn(60)
    .setColorBackground(color(255))
    .addItem("woman", 1)
    .addItem("man", 2)
    .addItem("other", 3)
    .hideLabels()
  ;

  occupantage =  cp5.addSlider("years")
    .setPosition(width*0.215, height*0.94)
    .setSize(300, 19)
    .setNumberOfTickMarks(6)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(0)
    .setMax(5)
    .setValue(3);
  setSliderStyle(occupantage, font, "years");

  occupanteducation =  cp5.addSlider("occupanteducation")
    .setPosition(width*0.45, height*0.94)
    .setSize(150, 19)
    .setNumberOfTickMarks(3)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(0)
    .setMax(2)
    .setValue(1);
  setSliderStyle(occupanteducation, font, "level");

  occupanttech =  cp5.addSlider("level")
    .setPosition(width*0.6, height*0.94)
    .setSize(250, 19)
    .setNumberOfTickMarks(5)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(0)
    .setMax(4)
    .setValue(2);
  setSliderStyle(occupanttech, font, "level");

  occupanthome =  cp5.addSlider("hours")
    .setPosition(width*0.8, height*0.94)
    .setSize(250, 19)
    .setNumberOfTickMarks(5)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(0)
    .setMax(4)
    .setValue(3);
  setSliderStyle(occupanthome, font, "hours");

  quit = cp5.addButton("quit")
    .setPosition(0, 0)
    .setSize(200, 30)
    .setColorBackground(color(130, 0, 0))
    .setColorForeground(color(200, 0, 0));
  setButtonStyle(quit, font, "Exit program");

  exitconfirm = cp5.addButton("exitconfirm")
    .setPosition(width/2 + 30, height*0.12)
    .setSize(230, 50)
    .setColorBackground(color(130, 0, 0))
    .setColorForeground(color(200, 0, 0));
  setButtonStyle(exitconfirm, font, "Exit the program");

  back3 = cp5.addButton("back3")
    .setPosition(width/2 - 260, height*0.12)
    .setSize(230, 50)
    .setColorBackground(color(200))
    .setColorForeground(color(180))
    .setColorActive(color(255))
    .setColorLabel(color(0));
  setButtonStyle(back3, font, "Go back");

  login = cp5.addButton("login")
    .setPosition(width/2 - 100, height*0.92)
    .setSize(200, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(login, font, "Confirm my choices");

  toStep1 = cp5.addButton("toStep1")
    .setPosition(width - 350, height - 100)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(toStep1, font, "Continue to the first step");

  continue_ = cp5.addButton("continue_")
    .setPosition(width - 350, height - 100)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(continue_, font, "Start filling in the characteristics");

  skip1 = cp5.addButton("skip1")
    .setPosition(width/2- 200, height*0.58)
    .setSize(150, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(skip1, font, "No, skip this step");

  skip2 = cp5.addButton("skip2")
    .setPosition(width*0.86, height*0.05)
    .setSize(150, 50)
    .setColorBackground(color(#88d0ce))
    .setColorForeground(color(#6daaa9))
    .setColorLabel(color(0));
  setButtonStyle(skip2, font, "Skip this step");

  skip3 = cp5.addButton("skip3")
    .setPosition(width/2 + 30, height*0.35)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(skip3, font, "Skip this and start from scratch");

  back1 = cp5.addButton("back1")
    .setPosition(width/2 - 260, height*0.35)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(back1, font, "Go back, I want suggestions");
  
  changeIntentions = cp5.addButton("changeIntentions")
    .setPosition(width/2 + 30, height*0.32)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeIntentions, font, "Generate new intention profiles");
  
  keepIntentions = cp5.addButton("keepIntentions")
    .setPosition(width/2 - 260, height*0.32)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(keepIntentions, font, "Keep old intention profiles");
  
  changePreferences = cp5.addButton("changePreferences")
    .setPosition(width/2 + 30, height*0.25)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changePreferences, font, "Recommend new preferences");
  
  keepPreferences = cp5.addButton("keepPreferences")
    .setPosition(width/2 - 260, height*0.25)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(keepPreferences, font, "Keep the old preferences");

  giveprofiles = cp5.addButton("giveprofiles")
    .setPosition(width/2 - 150, height*0.60)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(giveprofiles, font, "Load Intention Profiles");
  
  profileselect = cp5.addButton("profileselect")
    .setPosition(width*0.61, height*0.38)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(profileselect, font, "Continue with this profile");

  backToCharacteristics = cp5.addButton("backToCharacteristics")
    .setPosition(20, height*0.10)
    .setSize(250, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(backToCharacteristics, font, "Back to Household Characteristics");
  
  scratch = cp5.addButton("scratch")
    .setPosition(width*0.61, height*0.46)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(scratch, font, "Start from scratch");

  back2 = cp5.addButton("back2")
    .setPosition(width/2 - 260, height*0.28)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(back2, font, "Go back to profile selection");

  scratchconfirm = cp5.addButton("scratchconfirm")
    .setPosition(width/2 + 30, height*0.28)
    .setSize(230, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(scratchconfirm, font, "Yes, start from scratch");

  continue2 = cp5.addButton("continue2")
    .setPosition(width - 350, height - 100)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(continue2, font, "Continue to the final step");

  clear_ = cp5.addButton("clear_")
    .setPosition(width*0.55, height*0.69)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(clear_, font, "All clear, continue to the final step!");

  help = cp5.addButton("help")
    .setPosition(width*0.87, height*0.05)
    .setSize(150, 50)
    .setColorBackground(color(#88d0ce))
    .setColorForeground(color(#6daaa9))
    .setColorLabel(color(0));
  setButtonStyle(help, font, "HELP");

  closeHelp = cp5.addButton("closeHelp")
    .setPosition(width*0.87, height*0.05)
    .setSize(150, 50)
    .setColorBackground(color(#88d0ce))
    .setColorForeground(color(#6daaa9))
    .setColorLabel(color(0));
  setButtonStyle(closeHelp, font, "CLOSE HELP");

  changeHousehold = cp5.addButton("changeHousehold")
    .setPosition(width*0.125, height*0.44)
    .setSize(300, 40)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeHousehold, font, "Change Household Characteristics");

  example =  cp5.addSlider("example")
    .setPosition(width*0.125, height*0.855)
    .setSize(250, 19)
    .setNumberOfTickMarks(7)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(0)
    .setMax(6)
    .setValue(3);
  setSliderStyle(example, font, "example");

  sustainability =  cp5.addSlider("sustainability")
    .setPosition(width*0.12, height*0.85)
    .setSize(250, 19)
    .setNumberOfTickMarks(7)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(1)
    .setMax(7);
  setSliderStyle(sustainability, font, "sustainability");

  security =  cp5.addSlider("security")
    .setPosition(width*0.12, height*0.85)
    .setSize(250, 19)
    .setNumberOfTickMarks(7)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(1)
    .setMax(7);
  setSliderStyle(security, font, "security");

  convenience =  cp5.addSlider("convenience")
    .setPosition(width*0.12, height*0.85)
    .setSize(250, 19)
    .setNumberOfTickMarks(7)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(1)
    .setMax(7);
  setSliderStyle(convenience, font, "convenience");

  privacy =  cp5.addSlider("privacy")
    .setPosition(width*0.12, height*0.85)
    .setSize(250, 19)
    .setNumberOfTickMarks(7)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(1)
    .setMax(7);
  setSliderStyle(privacy, font, "privacy");

  personalization =  cp5.addSlider("personalization")
    .setPosition(width*0.12, height*0.85)
    .setSize(250, 19)
    .setNumberOfTickMarks(7)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(1)
    .setMax(7)
    .setValue(3);
  setSliderStyle(personalization, font, "personalization");

  control =  cp5.addSlider("control")
    .setPosition(width*0.12, height*0.85)
    .setSize(250, 19)
    .setNumberOfTickMarks(7)
    .setColorTickMark(color(255))
    .setColorBackground(color(255))
    .setMin(1)
    .setMax(7);
  setSliderStyle(control, font, "control");
  
  changeSustainability = cp5.addButton("changeSustainability")
    .setPosition(width*0.33 - 70, height*0.65 + 2.5)
    .setSize(70, 30)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeSustainability, font, "Change");
  
  changeSecurity = cp5.addButton("changeSecurity")
    .setPosition(width*0.33 - 70, height*0.69 + 2.5)
    .setSize(70, 30)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeSecurity, font, "Change");
  
  changeConvenience = cp5.addButton("changeConvenience")
    .setPosition(width*0.33 - 70, height*0.73 + 2.5)
    .setSize(70, 30)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeConvenience, font, "Change");
  
  changePrivacy = cp5.addButton("changePrivacy")
    .setPosition(width*0.33 - 70, height*0.77 + 2.5)
    .setSize(70, 30)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changePrivacy, font, "Change");
  
  changePersonalization = cp5.addButton("changePersonalization")
    .setPosition(width*0.33 - 70, height*0.81 + 2.5)
    .setSize(70, 30)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changePersonalization, font, "Change");
  
  changeControl = cp5.addButton("changeControl")
    .setPosition(width*0.33 - 70, height*0.85 + 2.5)
    .setSize(70, 30)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeControl, font, "Change");

  confirmIntentions = cp5.addButton("confirmIntentions")
    .setPosition(width*0.125, height*0.90)
    .setSize(300, 40)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(confirmIntentions, font, "Confirm changes");
  
  changeProfile = cp5.addButton("changeProfile")
    .setPosition(width*0.125, height*0.90)
    .setSize(300, 40)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeProfile, font, "Change selected profile");

  changeLighting = cp5.addButton("changeLighting")
    .setPosition(width*0.76, height*0.26)
    .setSize(70, 35)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeLighting, font, "Change");

  changeClimate = cp5.addButton("changeClimate")
    .setPosition(width*0.76, height*0.37)
    .setSize(70, 35)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeClimate, font, "Change");

  changeSecuritySettings = cp5.addButton("changeSecuritySettings")
    .setPosition(width*0.76, height*0.465)
    .setSize(70, 35)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeSecuritySettings, font, "Change");

  changeNotifications = cp5.addButton("changeNotifications")
    .setPosition(width*0.85, height*0.58)
    .setSize(70, 35)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeNotifications, font, "Change");
  
  changeProgramming = cp5.addButton("changeProgramming")
    .setPosition(width*0.76, height*0.69)
    .setSize(70, 35)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(changeProgramming, font, "Change");

  confirmPreferences = cp5.addButton("confirmPreferences")
    .setPosition(width*0.645 - 150, height*0.55)
    .setSize(300, 50)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(confirmPreferences, font, "Confirm changes");

  lighting =  cp5.addCheckBox("lighting")
    .setPosition(width*0.40, height*0.40)
    .setSize(20, 20)
    .setItemsPerRow(2)
    .setSpacingRow(15)
    .setSpacingColumn(300)
    .setColorBackground(color(255))
    .addItem("lighting_sunlight", 1)
    .addItem("lighting_home", 2)
    .addItem("lighting_movement", 3)
    .addItem("lighting_never", 4)
    .addItem("lighting_bedtime", 5)
    .hideLabels()
    ;

  climate =  cp5.addCheckBox("climate")
    .setPosition(width*0.40, height*0.40)
    .setSize(20, 20)
    .setItemsPerRow(2)
    .setSpacingRow(15)
    .setSpacingColumn(300)
    .setColorBackground(color(255))
    .addItem("climate_home", 1)
    .addItem("climate_always", 2)
    .addItem("climate_awake", 3)
    .addItem("climate_never", 4)
    .hideLabels()
    ;

  securitysettings =  cp5.addCheckBox("securitysettings")
    .setPosition(width*0.40, height*0.40)
    .setSize(20, 20)
    .setItemsPerRow(2)
    .setSpacingRow(15)
    .setSpacingColumn(300)
    .setColorBackground(color(255))
    .addItem("security_movement", 1)
    .addItem("security_always", 2)
    .addItem("security_vacant", 3)
    .addItem("security_never", 4)
    .addItem("security_sleeping", 5)
    .hideLabels()
    ;

  notifications =  cp5.addCheckBox("notifications")
    .setPosition(width*0.40, height*0.40)
    .setSize(20, 20)
    .setItemsPerRow(2)
    .setSpacingRow(15)
    .setSpacingColumn(300)
    .setColorBackground(color(255))
    .addItem("notifications_doorbell", 1)
    .addItem("notifications_work", 2)
    .addItem("notifications_alarm", 3)
    .addItem("notifications_energy", 4)
    .addItem("notifications_motion", 5)
    .addItem("notifications_never", 6)
    .hideLabels()
    ;
    
  programming =  cp5.addCheckBox("programming")
    .setPosition(width*0.40, height*0.40)
    .setSize(20, 20)
    .setItemsPerRow(2)
    .setSpacingRow(15)
    .setSpacingColumn(300)
    .setColorBackground(color(255))
    .addItem("programming_yourself", 1)
    .addItem("programming_partner", 2)
    .addItem("programming_occupant", 3)
    .addItem("programming_company", 4)
    .hideLabels()
    ;

  submit = cp5.addButton("submit")
    .setPosition(width*0.645 - 200, height*0.90)
    .setSize(400, 40)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(submit, font, "Save your smart home profile");

  page1 = cp5.addButton("page1")
    .setPosition(width/2 - 100, 10)
    .setSize(60, 10);
  setButtonStyle(page1, font, "");

  page2 = cp5.addButton("page2")
    .setPosition(width/2, 10)
    .setSize(60, 10);
  setButtonStyle(page2, font, "");

  page3 = cp5.addButton("page3")
    .setPosition(width/2 + 100, 10)
    .setSize(60, 10);
  setButtonStyle(page3, font, "");
  
  page4 = cp5.addButton("page4")
    .setPosition(width/2 + 200, 10)
    .setSize(60, 10);
  setButtonStyle(page4, font, "");
  
  userID = cp5.addTextfield("userID")
    .setPosition(width*0.5 - 25, height*0.5 - 15)
    .setSize(50, 30)
    .setColorBackground(color(100))
    .setFont(font);
    
  start_ = cp5.addButton("start_")
    .setPosition(width*0.5 - 50, height*0.5 + 50)
    .setSize(100, 40)
    .setColorBackground(color(#0074d9))
    .setColorForeground(color(#1492ff));
  setButtonStyle(start_, font, "Start");
}
