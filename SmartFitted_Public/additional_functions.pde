void calculateProfile() {
  //INTENTIONS
  //predict the likeliness of the household using a smart home for these intentions

  predictionResult_Sustainability = predict_sustainability(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome);
  predictionResult_Security = predict_security(OthersAgeAVG, OthersGenderAVG, OthersEduAVG, OthersTechAVG);
  predictionResult_Convenience = predict_convenience(UserAge, UserGender, UserEdu, UserTech, UserHome);
  predictionResult_Privacy = predict_privacy(UserAge, UserGender, UserEdu, UserTech, UserHome);
  predictionResult_Personalization = predict_personalization(OthersAgeAVG, OthersGenderAVG, OthersEduAVG, OthersTechAVG);
  predictionResult_Control = predict_control(UserAge, OthersAgeAVG, OthersGenderAVG, OthersEduAVG, OthersTechAVG, OthersHomeAVG);
}

String calculateAlternate(String predictionResult) { //this functions calculates the intentions scores for two alternate profiles
  println(predictionResult); 

  String r = "-";
  float alternate_Score = 3;

  if (predictionResult.equals("Very low")) {
    alternate_Score = 0 + random(0, 2);
  } else if (predictionResult.equals("Low")) {
    alternate_Score = 1 + random(-1, 1);
  } else if (predictionResult.equals("Somewhat low")) {
    alternate_Score = 2 + random(-1, 1);
  } else if (predictionResult.equals("Neutral")) {
    alternate_Score = 3 + random(-1, 1);
  } else if (predictionResult.equals("Somewhat high")) {
    alternate_Score = 4 + random(-1, 1);
  } else if (predictionResult.equals("High")) {
    alternate_Score = 5 + random(-1, 1);
  } else if (predictionResult.equals("Very high")) {
    alternate_Score = 6 + random(-2, 0);
  } else {
    alternate_Score = 0;
  }

  if (round(alternate_Score) == 0) {
    r = "Very low";
  } else if (round(alternate_Score) == 1) {
    r = "Low";
  } else if (round(alternate_Score) == 2) {
    r = "Somewhat low";
  } else if (round(alternate_Score) == 3) {
    r = "Neutral";
  } else if (round(alternate_Score) == 4) {
    r = "Somewhat high";
  } else if (round(alternate_Score) == 5) {
    r = "High";
  } else if (round(alternate_Score) == 6) {
    r = "Very high";
  }

  return r;
}

void calculatePreferences() {
  //PREFERENCES
  //predict the likeliness of the the household having these preferences for their smart home

  predictionResult_LightingSunlight = predict_lightingsunlight(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_LightingMovement = predict_lightingmovement(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, sustainabilityValue, securityValue, convenienceValue, privacyValue, personalizationValue, controlValue);
  predictionResult_LightingVacated = predict_lightingvacated(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, sustainabilityValue, securityValue, convenienceValue, privacyValue, personalizationValue, controlValue);
  predictionResult_LightingBedtime = predict_lightingbedtime(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_LightingNever = predict_lightingnever(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);

  predictionResult_ClimateHome = predict_climatehome(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_ClimateAwake = predict_climateawake(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, sustainabilityValue, securityValue, convenienceValue, privacyValue, personalizationValue, controlValue);
  predictionResult_ClimateNever = predict_climatenever(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);

  predictionResult_SecurityAlways = predict_securityalways(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_SecurityMovement = predict_securitymovement(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_SecurityVacated = predict_securityvacated(SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_SecuritySleeping = predict_securitysleeping(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_SecurityNever = predict_securitynever(SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);

  predictionResult_NotificationsMovement = predict_notificationsmovement(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_NotificationsAlarm = predict_notificationsalarm(SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_NotificationsDoorbell = predict_notificationsdoorbell(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_NotificationsTraffic = predict_notificationstraffic(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_NotificationsEnergy = predict_notificationsenergy(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_NotificationsNever = predict_notificationsnever(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);

  predictionResult_ProgrammingMyself = predict_programmingmyself(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_ProgrammingPartner = predict_programmingpartner(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_ProgrammingOccupant = predict_programmingoccupant(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
  predictionResult_ProgrammingCompany = predict_programmingcompany(HouseholdType, HouseType, UserAge, UserGender, UserEdu, UserTech, UserHome, SustainabilityScore, SecurityScore, ConvenienceScore, PrivacyScore, PersonalizationScore, ControlScore);
}

int translateToLikertScore(String LikertString) { //with this function a likert score in the form of words can be translated to a likert score in numbers 
  int r = 3;

  if (LikertString.equals("Very low")) {
    r = 1;
  } else if (LikertString.equals("Low")) {
    r = 2;
  } else if (LikertString.equals("Somewhat low")) {
    r = 3;
  } else if (LikertString.equals("Neutral")) {
    r = 4;
  } else if (LikertString.equals("Somewhat high")) {
    r = 5;
  } else if (LikertString.equals("High")) {
    r = 6;
  } else if (LikertString.equals("Very high")) {
    r = 7;
  } else {
    r = 3;
  }

  return r;
}

void checkState(int state_) {
  // sets controlP5 and other UI elements to hide or show based on state

  switch (state_) {
  case -1 : // USER ID AND CONSENT SCREEN (ONLY FOR RESEARCH PURPOSES) ------------------------------------------------------------------------------------------------------------------------
    textSize(20);
    textAlign(CENTER);
    fill(255);

    userID.show();
    start_.show();

    //hide all household characteristics interactions
    occupantgender.hide();
    householdtype.hide();
    housetype.hide();
    closeEduInfo.hide();
    save_.hide();
    discard.hide();
    occupantage.hide();
    occupanteducation.hide();
    occupanttech.hide();
    occupanthome.hide();
    skip1.hide();
    toStep1.hide();
    continue_.hide();
    skip3.hide();
    back1.hide();
    householdconfirm.hide();
    login.hide();
    skip2.hide();
    edit1.hide();
    edit2.hide();
    edit3.hide();
    edit4.hide();
    edit5.hide();
    edit6.hide();
    add3.hide();
    add4.hide();
    add5.hide();
    add6.hide();
    confirm1.hide();
    confirm2.hide();
    confirm3.hide();
    confirm4.hide();
    confirm5.hide();
    confirm6.hide();
    remove3.hide();
    remove4.hide();
    remove5.hide();
    remove6.hide();
    removeconfirm.hide();
    back4.hide();
    changeIntentions.hide();
    keepIntentions.hide();

    //hide all profile selection interactions
    backToCharacteristics.hide();
    giveprofiles.hide();
    profileselect.hide();
    scratch.hide();
    scratchconfirm.hide();
    back2.hide();
    changePreferences.hide();
    keepPreferences.hide();

    //hide all preference elicitation UI interactions
    continue2.hide();
    changeHousehold.hide();
    changeSustainability.hide();
    changeSecurity.hide();
    changeConvenience.hide();
    changePrivacy.hide();
    changePersonalization.hide();
    changeControl.hide();
    confirmIntentions.hide();
    sustainability.hide();
    security.hide();
    convenience.hide();
    privacy.hide();
    personalization.hide();
    control.hide();
    changeProfile.hide();
    confirmPreferences.hide();
    changeLighting.hide();
    changeClimate.hide();
    changeSecuritySettings.hide();
    changeNotifications.hide();
    changeProgramming.hide();
    lighting.hide();
    climate.hide();
    securitysettings.hide();
    notifications.hide();
    programming.hide();
    clear_.hide();
    closeHelp.hide();
    example.hide();
    help.hide();
    submit.hide();

    break;

  case 0 : // HOUSEHOLD CHARACTERISTICS SCREEN -----------------------------------------------------------------------------------------------------------------------------------------------

    if (showattributes != 0) {

      //page explanation
      textSize(26);
      textAlign(CENTER);
      fill(255);
      rect(width/5, height*0.03, width*0.6, height/10, 20);
      fill(0);
      text("1) Characteristics of your household", width/2, height*0.09);

      fill(#6a92b7);
      rect(width*0.53, height*0.20, width*0.40, height*0.23, 10);
      fill(255);
      textSize(16);
      text("Why do we ask information on your household?", width*0.73, height*0.235);
      text("Why do we ask information on the occupants?", width*0.73, height*0.34);
      textSize(14);
      text("Your household and house type help us in recommending you a smart home profile.", width*0.73, height*0.265);
      text("They mainly influence what preferences your household might have for the smart home.", width*0.73, height*0.29);
      text("Characteristics of the occupants help us in estimating both the intentions and", width*0.73, height*0.37);
      text("preferences your household would likely have for smart home technology.", width*0.73, height*0.395);
      //section title
      fill(255);
      textSize(26);
      text("Information on Household", width*0.25, height*0.18);

      // category titles
      textSize(16);
      textAlign(LEFT);
      text("Type of household", width*0.07, height*0.22);
      text("Type of house", width*0.34, height*0.22);

      textSize(14);
      text("Living together only with partner", width*0.10, height*0.26);
      text("Living together with partner and child(ren)", width*0.10, height*0.303);
      text("Living together with housemate(s)", width*0.10, height*0.347);
      text("Single parent with child(ren)", width*0.10, height*0.391);
      text("Single occupant", width*0.10, height*0.435);

      text("Detached house", width*0.37, height*0.26);
      text("Terraced/corner house", width*0.37, height*0.303);
      text("Semi-detached house", width*0.37, height*0.347);
      text("Appartment", width*0.37, height*0.391);

      if (hType == 0 || hHouse == 0) {
        cursor(ARROW);
        textAlign(CENTER);
        textSize(16);
        text("Fill in the above fields first before continuing with filling in the occupant characteristics.", width/2, height*0.58);
        fill(100, 180);
        rect(width/2- 150, height*0.62, 300, 50);
        textSize(13);
        fill(150, 150);
        text("Fill in occupant characteristics", width/2, height*0.62 + 30);
        householdconfirm.hide();
      } else if (showoccupants == 0) { 
        textAlign(CENTER);
        textSize(16);
        text("Fill in the above field first before continuing with filling in the occupant characteristics.", width/2, height*0.58);

        if (mouseX > width/2- 150 && mouseX < width/2 - 150 + 300 && mouseY > height*0.62 && mouseY < height*0.62 + 50) {
          cursor(HAND);
        } else cursor(ARROW);

        householdconfirm.show();
      }

      if (attemptskip == 1) {
        fill(255);
        rect(width/2 - 310, height*0.23, 620, 190);
        textSize(16);
        fill(0);
        textAlign(CENTER);
        text("By skipping this page the program will function less well.", width/2, height*0.27);
        text("Besides, you will actually save time in the end by filling in this page as it", width/2, height*0.29);
        text("enables us to give you smart home profile suggestions on the next page!", width/2, height*0.31);

        skip3.show();
        back1.show();
        housetype.hide();
      } else if (attemptskip == 0) {
        skip3.hide();
        back1.hide();
        if (occupantremove == 0 & confirmedit == 0 & displayEduInfo == 0 & popupIntentions == false) {
          housetype.show();
        }
      }

      if (popupIntentions == true) {
        fill(255);
        rect(width/2 - 310, height*0.23, 620, 160);
        textSize(16);
        fill(0);
        textAlign(CENTER);
        text("You might have made changes to your Household Characteristics.", width/2, height*0.27);
        text("Would you like us to generate new intention profiles or keep the old ones?", width/2, height*0.29);

        changeIntentions.show();
        keepIntentions.show();
        housetype.hide();
      } else if (popupIntentions == false) {
        changeIntentions.hide();
        keepIntentions.hide();
        if (attemptskip == 0 & occupantremove == 0 & confirmedit == 0 & displayEduInfo == 0) {
          housetype.show();
        }
      }

      if (occupantremove > 0) {
        fill(255);
        rect(width/2 - 310, height*0.23, 620, 150);
        textSize(16);
        fill(9);
        textAlign(CENTER);
        text("By removing this occupant you will also remove all occupants to its right.", width/2, height*0.27);
        text("Suggestion: Edit selected occupant or remove another one to prevent this.", width/2, height*0.29);

        removeconfirm.show();
        back4.show();
        housetype.hide();
      } else if (occupantremove == 0) {
        removeconfirm.hide();
        back4.hide();
        if (attemptskip == 0 & confirmedit == 0 & displayEduInfo == 0 & popupIntentions == false) {
          housetype.show();
        }
      }

      householdtype.show();
      skip2.show();
      skip1.hide();
      continue_.hide();
      toStep1.hide();
    } else {

      if (ExplanationStep1 == 0) {
        //page explanation
        fill(#6a92b7);
        rect(width/5, height*0.05, width*0.6, height*0.38, 20);
        textSize(20);
        textAlign(CENTER);
        fill(255);
        rect(width/5, height*0.03, width*0.6, height/10, 20);
        fill(0);
        text("In this app you will find out what type of smart home fits your household in these three steps:", width/2, height*0.09);

        if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > height*0.4 && mouseY < height*0.4 + 50) {
          cursor(HAND);
        } else cursor(ARROW);

        //fill(0,45,90);
        //rect(width*0.3, height*0.2,180,180,20);
        textSize(16);
        fill(0);
        imgHouse = loadImage("imgHouse.png");
        image(imgHouse, 450, 150);
        text("1) Give household characteristics for our", 514, 300);
        text("suggestions of smart home profiles", 515, 320);
        imgProfile = loadImage("imgProfile.png");
        image(imgProfile, width/2 -64, 150);
        text("2) Choose profile suggestion", width/2, 300);
        imgSettings = loadImage("imgSettings.png");
        image(imgSettings, 1025, 150);
        text("3) Finalise your profile by giving", 1025+64, 300);
        text("more detailed preferences", 1025+60, 320);

        toStep1.show();
        continue_.hide();
      } else if (ExplanationStep1 == 1) {
        //page explanation
        fill(#6a92b7);
        rect(width/5, height*0.05, width*0.6, height*0.25, 20);
        textSize(26);
        textAlign(CENTER);
        fill(255);
        rect(width/5, height*0.03, width*0.6, height/10, 20);
        fill(0);
        text("1) Characteristics of your household", width/2, height*0.09);
        fill(255);
        textSize(16);
        text("In this first step you will fill in the characteristics of your household and its occupants.", width/2, height*0.18);
        text("These characteristics enable us to give you personalized smart home profile suggestions in the next step.", width/2, height*0.21);
        text("The information you give us will not make you or others in your household personally identifiable.", width/2, height*0.24);

        if (mouseX > width/2 - 150 && mouseX < width/2 + 150 && mouseY > height*0.275 && mouseY < height*0.275 + 50) {
          cursor(HAND);
        } else cursor(ARROW);

        toStep1.hide();
        continue_.show();
      }

      householdconfirm.hide();
      householdtype.hide();
      housetype.hide();
      closeEduInfo.hide();
      save_.hide();
      discard.hide();
      skip1.hide();
      skip2.hide();
      skip3.hide();
      back1.hide();
      login.hide();
      removeconfirm.hide();
      back4.hide();
      changeIntentions.hide();
      keepIntentions.hide();
    }

    if (showoccupants != 0) {
      householdconfirm.hide();

      //occupant layout
      fill(#6a92b7);
      for (int i = 0; i < 6; i = i + 1) {
        rect((0.035*width)+(i*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10); //rounded rectangles for occupants
      }

      fill(255);
      textAlign(CENTER);
      textSize(26);
      text("Information on Occupants", width/2, height/2);

      textSize(14);
      for (int i = 1; i < 7; i = i + 1) {
        text("Occupant "+ i + ":", 0.1*width + ((i-1)*(width*0.16)), 0.55*height); //occupant titles, e.g. 'Occupant 1:'
      }

      textAlign(LEFT);
      for (int i = 0; i < 6; i = i + 1) {
        text("Gender:", (0.05*width)+(i*(width*0.16)), height*0.625);
        text("Age:", (0.05*width)+(i*(width*0.16)), height*0.653);
        text("Edu-level:", (0.05*width)+(i*(width*0.16)), height*0.681);
        text("Tech-level:", (0.05*width)+(i*(width*0.16)), height*0.709);
        text("At home:", (0.05*width)+(i*(width*0.16)), height*0.737);
      }

      if (confirmedit != 0) {
        fill(255);
        rect(width/2 - 310, height*0.23, 620, 150);
        textSize(16);
        fill(0);
        textAlign(CENTER);
        text("You will need to save your changes to the previous occupant", width/2, height*0.27);
        text("or continue editing them before continuing with the next occupant.", width/2, height*0.29);

        save_.show();
        discard.show();
        housetype.hide();
      } else if (confirmedit == 0) { 
        save_.hide();
        discard.hide();
        if (attemptskip == 0 & occupantremove == 0 & displayEduInfo == 0 & popupIntentions == false) {
          housetype.show();
        }
      }


      if (occupantedit == 0) {
        if (o1print == 0 || o2print == 0 || o3print == 0 || o4print == 0 || o5print == 0 || o6print == 0) {
          fill(255);
          textAlign(CENTER);
          textSize(18);
          text("You will need to finish editing the occupants before we can give you accurate profile suggestions", width/2, height*0.88);

          fill(100, 180);
          rect(width/2- 100, height*0.92, 200, 50);
          textSize(13);
          fill(150);
          text("Confirm my choices", width/2, height*0.92 + 30);
          fill(255);
          login.hide();
        } else {
          textAlign(CENTER);
          textSize(18);
          fill(255);
          text("Are you happy with the household characteristics that you filled in?", width/2, height*0.875);
          text("Then click confirm and see what your intention profile suggestions are!", width/2, height*0.895);
          login.show();
        }

        occupantgender.hide();
        occupantage.hide();
        occupanteducation.hide();
        occupanttech.hide();
        occupanthome.hide();
      } else {
        fill(#6a92b7);
        rect(0, height*0.87, width, height*0.13);

        textAlign(CENTER);
        textSize(22);
        for (int i = 1; i < 7; i = i + 1) {
          if (occupantedit == i & occupantedit != 0) {
            fill(0);
            text("Editing Occupant " + i, width/2, height*0.9); //when an occupant is being edited, display which occupant
          }
        }

        textAlign(LEFT);
        textSize(16);
        fill(255);
        text("Gender of occupant", width*0.065, height*0.93);
        text("Age of occupant", width*0.275, height*0.93);
        text("Education level", width*0.5 - 65, height*0.93);
        text("Technical background", width*0.625, height*0.93);
        text("Hours at home per day", width*0.81, height*0.93);

        textSize(14);
        text("Woman", width*0.045, height*0.96);
        text("Man", width*0.105, height*0.96);
        text("Other", width*0.16, height*0.96);

        textSize(12);
        text("0-11", width*0.207, height*0.985);
        text("12-17", width*0.207 + 55, height*0.985);
        text("18-27", width*0.206 + 115, height*0.985);
        text("28-44", width*0.206 + 175, height*0.985);
        text("45-64", width*0.206 + 235, height*0.985);
        text(">64", width*0.206 + 300, height*0.985);

        textAlign(CENTER);
        text("Low", width*0.45, height*0.985);
        text("Average", width*0.497, height*0.985);
        text("High", width*0.545, height*0.985);
        textAlign(LEFT);
        imgInfo = loadImage("imgInfo.png");
        image(imgInfo, width*0.545, height*0.91, 25, 25);

        if (displayEduInfo == 1) {
          fill(255);
          rect(width/2 - 310, height*0.23, 620, 200);
          textSize(16);
          fill(0);
          textAlign(LEFT);
          text("Education levels in the Netherlands", width/2 - 280, height*0.27);
          text("Low: primary school, VMBO, first three years of HAVO/VWO or MBO-1", width/2 - 280, height*0.30);
          text("Intermediate: HAVO/VWO, MBO-2, MBO-3, MBO-4", width/2 - 280, height*0.32);
          text("High: HBO (University of Applied Sciences) or WO (University)", width/2 - 280, height*0.34);

          closeEduInfo.show();
          housetype.hide();
        } else if (displayEduInfo == 0) {
          closeEduInfo.hide();
          if (attemptskip == 0 & occupantremove == 0 & confirmedit == 0 & popupIntentions == false) {
            housetype.show();
          }
        }

        textSize(12);
        fill(255);
        text("Very low", width*0.584, height*0.985);
        text("Low", width*0.584 + 76, height*0.985);
        text("Average", width*0.584 + 128, height*0.985);
        text("High", width*0.584 + 200, height*0.985);
        text("Very high", width*0.584 + 248, height*0.985);

        text("0-4", width*0.795, height*0.985);
        text("5-9", width*0.795 + 60, height*0.985);
        text("10-14", width*0.795 + 115, height*0.985);
        text("15-19", width*0.795 + 175, height*0.985);
        text("20-24", width*0.795 + 240, height*0.985);

        occupantgender.show();
        occupantage.show();
        occupanteducation.show();
        occupanttech.show();
        occupanthome.show();
        login.hide();
      }

      textAlign(CENTER);
      textSize(20);
      if (hType == 1) { //household type: living together with partner
        text("Yourself", 0.1*width, 0.58*height);
        text("Partner", 0.26*width, 0.58*height);

        fill(100);
        for (int i = 2; i < 6; i = i + 1) {
          rect((0.035*width)+(i*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10); //rectangles for empty occupant slots
        }
        fill(255);

        if (mouseX > width*0.035 && mouseX < width*0.035 + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
          || mouseX > (0.035*width)+(1*(width*0.16)) && mouseX < (0.035*width)+(1*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25) {
          cursor(HAND);
        } else cursor(ARROW);

        o3print = 3;
        o4print = 3;
        o5print = 3;
        o6print = 3;

        edit1.show();
        edit2.show();

        edit3.hide();
        edit4.hide();
        edit5.hide();
        edit6.hide();
        add3.hide();
        add4.hide();
        add5.hide();
        add6.hide();
        remove3.hide();
        remove4.hide();
        remove5.hide();
        remove6.hide();
      } else if (hType == 2) { //household type: living together with partner and children
        text("Yourself", 0.1*width, 0.58*height);
        text("Partner", 0.26*width, 0.58*height);
        text("Child A", 0.42*width, 0.58*height);

        if (mouseX > width*0.035 && mouseX < width*0.035 + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
          || mouseX > (0.035*width)+(1*(width*0.16)) && mouseX < (0.035*width)+(1*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
          || mouseX > (0.035*width)+(2*(width*0.16)) && mouseX < (0.035*width)+(2*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25) {
          cursor(HAND);
        } else cursor(ARROW);

        o3added = 1;

        edit1.show();
        edit2.show();
        edit3.show();
        add3.hide();
        remove3.hide();

        if (o4added == 1) {
          text("Child B", 0.58*width, 0.58*height);

          if (mouseX > (0.035*width)+(3*(width*0.16)) && mouseX < (0.035*width)+(3*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(3*(width*0.16)) && mouseX < (0.035*width)+(3*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }
          remove4.show();
          edit4.show();
          add4.hide();
        } else {
          o4print = 3;
          if (mouseX > width*0.514 && mouseX < width*0.514 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
            cursor(HAND);
          }
          remove4.hide();
          edit4.hide();
          add4.show();
        }
        if (o5added == 1) {
          text("Child C", 0.74*width, 0.58*height);

          if (mouseX > (0.035*width)+(4*(width*0.16)) && mouseX < (0.035*width)+(4*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(4*(width*0.16)) && mouseX < (0.035*width)+(4*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }
          remove5.show();
          edit5.show();
          add5.hide();
        } else if (o5added == 0) { 

          if (o4added  == 1) {
            if (mouseX > width*0.674 && mouseX < width*0.674 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
              cursor(HAND);
            }
            add5.show();
          } else if (o4added == 0) {
            fill(100);
            rect((0.035*width)+(4*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10);
            fill(255);

            add5.hide();
          }


          o5print = 3;
          remove5.hide();
          edit5.hide();
        }
        if (o6added == 1) {
          text("Child D", 0.9*width, 0.58*height);

          if (mouseX > (0.035*width)+(5*(width*0.16)) && mouseX < (0.035*width)+(5*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(5*(width*0.16)) && mouseX < (0.035*width)+(5*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }

          remove6.show();
          edit6.show();
          add6.hide();
        } else if (o6added == 0) {
          if (o5added == 1) {
            if (mouseX > width*0.834 && mouseX < width*0.834 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
              cursor(HAND);
            }
            add6.show();
          } else if (o5added == 0) {
            fill(100);
            rect((0.035*width)+(5*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10);
            fill(255);
            add6.hide();
          }

          o6print = 3;
          remove6.hide();
          edit6.hide();
        }
      } else if (hType == 3) { //household type: living together with housemates
        text("Yourself", 0.1*width, 0.58*height);
        text("Housemate A", 0.26*width, 0.58*height);

        if (mouseX > width*0.035 && mouseX < width*0.035 + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
          || mouseX > (0.035*width)+(1*(width*0.16)) && mouseX < (0.035*width)+(1*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25) {
          cursor(HAND);
        } else cursor(ARROW);

        edit1.show();
        edit2.show();

        if (o3added == 1) {
          text("Housemate B", 0.42*width, 0.58*height);

          if (mouseX > (0.035*width)+(2*(width*0.16)) && mouseX < (0.035*width)+(2*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(2*(width*0.16)) && mouseX < (0.035*width)+(2*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }

          remove3.show();
          edit3.show();
          add3.hide();
        } else { 
          o3print = 3;
          if (mouseX > width*0.354 && mouseX < width*0.354 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
            cursor(HAND);
          }
          remove3.hide();
          edit3.hide();
          add3.show();
        }
        if (o4added == 1) {
          text("Housemate C", 0.58*width, 0.58*height);

          if (mouseX > (0.035*width)+(3*(width*0.16)) && mouseX < (0.035*width)+(3*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(3*(width*0.16)) && mouseX < (0.035*width)+(3*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }

          remove4.show();
          edit4.show();
          add4.hide();
        } else if (o4added == 0) { 

          if (o3added == 1) {
            if (mouseX > width*0.514 && mouseX < width*0.514 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
              cursor(HAND);
            }
            add4.show();
          } else if (o3added == 0) {
            fill(100);
            rect((0.035*width)+(3*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10);
            fill(255);
            add4.hide();
          }

          o4print = 3;
          remove4.hide();
          edit4.hide();
        }
        if (o5added == 1) {
          text("Housemate D", 0.74*width, 0.58*height);

          if (mouseX > (0.035*width)+(4*(width*0.16)) && mouseX < (0.035*width)+(4*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(4*(width*0.16)) && mouseX < (0.035*width)+(4*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }

          remove5.show();
          edit5.show();
          add5.hide();
        } else if (o5added == 0) {
          if (o4added == 1) {
            if (mouseX > width*0.674 && mouseX < width*0.674 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
              cursor(HAND);
            }
            add5.show();
          } else if (o4added == 0) {
            fill(100);
            rect((0.035*width)+(4*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10);
            fill(255);
            add5.hide();
          }

          o5print = 3;
          remove5.hide();
          edit5.hide();
        }
        if (o6added == 1) {
          text("Housemate E", 0.9*width, 0.58*height);

          if (mouseX > (0.035*width)+(5*(width*0.16)) && mouseX < (0.035*width)+(5*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(5*(width*0.16)) && mouseX < (0.035*width)+(5*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }

          remove6.show();
          edit6.show();
          add6.hide();
        } else if (o6added == 0) {
          if (o5added == 1) {
            if (mouseX > width*0.834 && mouseX < width*0.834 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
              cursor(HAND);
            }
            add6.show();
          } else if (o5added == 0) {
            fill(100);
            rect((0.035*width)+(5*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10);
            fill(255);
            add6.hide();
          }

          o6print = 3;
          remove6.hide();
          edit6.hide();
          ;
        }
      } else if (hType == 4) { //household type: single with children
        text("Yourself", 0.1*width, 0.58*height);
        text("Child A", 0.26*width, 0.58*height);

        if (mouseX > width*0.035 && mouseX < width*0.035 + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
          || mouseX > (0.035*width)+(1*(width*0.16)) && mouseX < (0.035*width)+(1*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25) {
          cursor(HAND);
        } else cursor(ARROW);


        edit1.show();
        edit2.show();

        if (o3added == 1) {
          text("Child B", 0.42*width, 0.58*height);

          if (mouseX > (0.035*width)+(2*(width*0.16)) && mouseX < (0.035*width)+(2*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(2*(width*0.16)) && mouseX < (0.035*width)+(2*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }

          remove3.show();
          edit3.show();
          add3.hide();
        } else { 
          o3print = 3;
          if (mouseX > width*0.354 && mouseX < width*0.354 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
            cursor(HAND);
          }
          remove3.hide();
          edit3.hide();
          add3.show();
        }
        if (o4added == 1) {
          text("Child C", 0.58*width, 0.58*height);

          if (mouseX > (0.035*width)+(3*(width*0.16)) && mouseX < (0.035*width)+(3*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(3*(width*0.16)) && mouseX < (0.035*width)+(3*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }
          remove4.show();
          edit4.show();
          add4.hide();
        } else if (o4added == 0) {
          if (o3added == 1) {
            if (mouseX > width*0.514 && mouseX < width*0.514 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
              cursor(HAND);
            }
            add4.show();
          } else if (o3added == 0) {
            fill(100);
            rect((0.035*width)+(3*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10);
            fill(255);
            add4.hide();
          }
          o4print = 3;
          remove4.hide();
          edit4.hide();
        }
        if (o5added == 1) {
          text("Child D", 0.74*width, 0.58*height);

          if (mouseX > (0.035*width)+(4*(width*0.16)) && mouseX < (0.035*width)+(4*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(4*(width*0.16)) && mouseX < (0.035*width)+(4*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }

          remove5.show();
          edit5.show();
          add5.hide();
        } else if (o5added == 0) { 
          if (o4added == 1) {
            if (mouseX > width*0.674 && mouseX < width*0.674 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
              cursor(HAND);
            }
            add5.show();
          } else if (o4added == 0) {
            fill(100);
            rect((0.035*width)+(4*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10);
            fill(255);
            add5.hide();
          }
          o5print = 3;
          remove5.hide();
          edit5.hide();
        }
        if (o6added == 1) {
          text("Child E", 0.9*width, 0.58*height);

          if (mouseX > (0.035*width)+(5*(width*0.16)) && mouseX < (0.035*width)+(5*(width*0.16)) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25
            || mouseX > (0.035*width)+(5*(width*0.16)) && mouseX < (0.035*width)+(5*(width*0.16)) + 207 && mouseY > height*0.813 && mouseY < height*0.813 + 25) {
            cursor(HAND);
          }
          remove6.show();
          edit6.show();
          add6.hide();
        } else if (o6added == 0) {
          if (o5added == 1) {
            if (mouseX > width*0.834 && mouseX < width*0.834 + 210 && mouseY > 0.52*height && mouseY < 0.52*height + 216) {
              cursor(HAND);
            }
            add6.show();
          } else if (o5added == 0) {
            fill(100);
            rect((0.035*width)+(5*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10);
            fill(255);
            add6.hide();
          }
          o6print = 3;
          remove6.hide();
          edit6.hide();
        }
      } else if (hType == 5) { //household type: single
        text("Yourself", 0.1*width, 0.58*height);

        fill(100);
        for (int i = 1; i < 6; i = i + 1) {
          rect((0.035*width)+(i*(width*0.16)), 0.52*height, 0.13*width, 0.24*height, 10); //rectangles for empty occupants slots
        }
        fill(255);

        if (mouseX > (0.035*width) && mouseX < (0.035*width) + 207 && mouseY > height*0.778 && mouseY < height*0.778 + 25) {
          cursor(HAND);
        } else cursor(ARROW);

        o2print = 3;
        o3print = 3;
        o4print = 3;
        o5print = 3;
        o6print = 3;

        edit1.show();

        edit2.hide();
        edit3.hide();
        edit4.hide();
        edit5.hide();
        edit6.hide();
        add3.hide();
        add4.hide();
        add5.hide();
        add6.hide();
        remove3.hide();
        remove4.hide();
        remove5.hide();
        remove6.hide();
      } else if (hType == 0) { //no householdtype selected

        edit1.hide();
        edit2.hide();
        edit3.hide();
        edit4.hide();
        edit5.hide();
        edit6.hide();
        add3.hide();
        add4.hide();
        add5.hide();
        add6.hide();
        remove3.hide();
        remove4.hide();
        remove5.hide();
        remove6.hide();
        occupantgender.hide();
        occupantage.hide();
        occupanttech.hide();
        occupanthome.hide();
      }

      if (occupantedit == 1) {
        confirm1.show();
        edit1.hide();
        confirm2.hide();
        confirm3.hide();
        confirm4.hide();
        confirm5.hide();
        confirm6.hide();
      } else if (occupantedit == 2) {
        confirm2.show();
        edit2.hide();
        confirm1.hide();
        confirm3.hide();
        confirm4.hide();
        confirm5.hide();
        confirm6.hide();
      } else if (occupantedit == 3 & o3added == 1) {
        confirm3.show();
        edit3.hide();
        confirm1.hide();
        confirm2.hide();
        confirm4.hide();
        confirm5.hide();
        confirm6.hide();
      } else if (occupantedit == 4 & o4added == 1) {
        confirm4.show();
        edit4.hide();
        confirm1.hide();
        confirm2.hide();
        confirm3.hide();
        confirm5.hide();
        confirm6.hide();
      } else if (occupantedit == 5 & o5added == 1) {
        confirm5.show();
        edit5.hide();
        confirm1.hide();
        confirm2.hide();
        confirm3.hide();
        confirm4.hide();
        confirm6.hide();
      } else if (occupantedit == 6 & o6added == 1) {
        confirm6.show();
        edit6.hide();
        confirm1.hide();
        confirm2.hide();
        confirm3.hide();
        confirm4.hide();
        confirm5.hide();
      } else if (occupantedit == 0) {
        confirm1.hide();
        confirm2.hide();
        confirm3.hide();
        confirm4.hide();
        confirm5.hide();
        confirm6.hide();
      }
    } else if (showoccupants == 0) {
      confirm1.hide();
      confirm2.hide();
      confirm3.hide();
      confirm4.hide();
      confirm5.hide();
      confirm6.hide();
      edit1.hide();
      edit2.hide();
      edit3.hide();
      edit4.hide();
      edit5.hide();
      edit6.hide();
      add3.hide();
      add4.hide();
      add5.hide();
      add6.hide();
      remove3.hide();
      remove4.hide();
      remove5.hide();
      remove6.hide();
      occupantgender.hide();
      occupantage.hide();
      occupanteducation.hide();
      occupanttech.hide();
      occupanthome.hide();
    }

    if (cp5.get(Slider.class, "years").getValue() == 0) {
      oAge = "0-11";
    } else if (cp5.get(Slider.class, "years").getValue() == 1) {
      oAge = "12-17";
    } else if (cp5.get(Slider.class, "years").getValue() == 2) {
      oAge = "18-27";
    } else if (cp5.get(Slider.class, "years").getValue() == 3) {
      oAge = "28-44";
    } else if (cp5.get(Slider.class, "years").getValue() == 4) {
      oAge = "45-64";
    } else if (cp5.get(Slider.class, "years").getValue() == 5) {
      oAge = ">64";
    } else {
      oAge = "...";
    }

    if (cp5.get(Slider.class, "occupanteducation").getValue() == 0) {
      oEdu = "Low";
    } else if (cp5.get(Slider.class, "occupanteducation").getValue() == 1) {
      oEdu = "Average";
    } else if (cp5.get(Slider.class, "occupanteducation").getValue() == 2) {
      oEdu = "High";
    } else {
      oEdu = "...";
    }

    if (cp5.get(Slider.class, "level").getValue() == 0) {
      oTech = "Very low";
    } else if (cp5.get(Slider.class, "level").getValue() == 1) {
      oTech = "Low";
    } else if (cp5.get(Slider.class, "level").getValue() == 2) {
      oTech = "Average";
    } else if (cp5.get(Slider.class, "level").getValue() == 3) {
      oTech = "High";
    } else if (cp5.get(Slider.class, "level").getValue() == 4) {
      oTech = "Very high";
    } else {
      oTech = "...";
    }

    if (cp5.get(Slider.class, "hours").getValue() == 0) {
      oHome = "0-4 h/day";
    } else if (cp5.get(Slider.class, "hours").getValue() == 1) {
      oHome = "5-9 h/day";
    } else if (cp5.get(Slider.class, "hours").getValue() == 2) {
      oHome = "10-14 h/day";
    } else if (cp5.get(Slider.class, "hours").getValue() == 3) {
      oHome = "15-19 h/day";
    } else if (cp5.get(Slider.class, "hours").getValue() == 4) {
      oHome = "20-24 h/day";
    } else {
      oHome = "...";
    }

    textAlign(RIGHT);
    textSize(14);
    if (occupantedit != 0) {
      text(oGender, (0.15*width)+((occupantedit - 1) *(width*0.16)), height*0.625);
      text(oAge, (0.15*width)+((occupantedit - 1) *(width*0.16)), height*0.653);
      text(oEdu, (0.15*width)+((occupantedit - 1) *(width*0.16)), height*0.681);
      text(oTech, (0.15*width)+((occupantedit - 1) *(width*0.16)), height*0.709);
      text(oHome, (0.15*width)+((occupantedit - 1) *(width*0.16)), height*0.737);
    } 

    // printing of Occupant 1
    if (o1print == 1) {
      o1Gender = oGender;
      o1Age = oAge;
      o1Edu = oEdu;
      o1Tech = oTech;
      o1Home = oHome;
      o1print = 2;
    } 
    if (o1print == 2) {
      text(o1Gender, (0.15*width), height*0.625);
      text(o1Age, (0.15*width), height*0.653);
      text(o1Edu, (0.15*width), height*0.681);
      text(o1Tech, (0.15*width), height*0.709);
      text(o1Home, (0.15*width), height*0.737);

      if (cp5.get(RadioButton.class, "occupantgender").getValue() == 0) {
        UserGender = "Vrouw";
      } else if (cp5.get(RadioButton.class, "occupantgender").getValue() == 1) {
        UserGender = "Man";
      } else if (cp5.get(RadioButton.class, "occupantgender").getValue() == 2) {
        UserGender = "Vrouw"; //algorithms were not trained for non-binary people
      }

      UserAge = int(cp5.get(Slider.class, "years").getValue()) + 1;
      UserEdu = int(cp5.get(Slider.class, "occupanteducation").getValue()) + 1;
      UserTech = int(cp5.get(Slider.class, "level").getValue()) + 1;
      UserHome = int(cp5.get(Slider.class, "hours").getValue()) + 1;
    }

    // printing of Occupant 2
    if (o2print == 1 ) {
      o2Gender = oGender;
      o2Age = oAge;
      o2Edu = oEdu;
      o2Tech = oTech;
      o2Home = oHome;
      o2print = 2;
    } 
    if (o2print == 2) {
      text(o2Gender, (0.15*width)+(1*(width*0.16)), height*0.625);
      text(o2Age, (0.15*width)+(1*(width*0.16)), height*0.653);
      text(o2Edu, (0.15*width)+(1*(width*0.16)), height*0.681);
      text(o2Tech, (0.15*width)+(1*(width*0.16)), height*0.709);
      text(o2Home, (0.15*width)+(1*(width*0.16)), height*0.737);

      O2_Gender = int(cp5.get(RadioButton.class, "occupantgender").getValue()) + 1;
      O2_Age = int(cp5.get(Slider.class, "years").getValue()) + 1;
      O2_Edu = int(cp5.get(Slider.class, "occupanteducation").getValue()) + 1;
      O2_Tech = int(cp5.get(Slider.class, "level").getValue()) + 1;
      O2_Home = int(cp5.get(Slider.class, "hours").getValue()) + 1;
    }

    // printing of Occupant 3
    if (o3print == 1) {
      o3Gender = oGender;
      o3Age = oAge;
      o3Edu = oEdu;
      o3Tech = oTech;
      o3Home = oHome;
      o3print = 2;
    } 
    if (o3print == 2 & hType != 5 & hType != 1) {
      text(o3Gender, (0.15*width)+(2*(width*0.16)), height*0.625);
      text(o3Age, (0.15*width)+(2*(width*0.16)), height*0.653);
      text(o3Edu, (0.15*width)+(2*(width*0.16)), height*0.681);
      text(o3Tech, (0.15*width)+(2*(width*0.16)), height*0.709);
      text(o3Home, (0.15*width)+(2*(width*0.16)), height*0.737);

      O3_Gender = int(cp5.get(RadioButton.class, "occupantgender").getValue()) + 1;
      O3_Age = int(cp5.get(Slider.class, "years").getValue()) + 1;
      O3_Edu = int(cp5.get(Slider.class, "occupanteducation").getValue()) + 1;
      O3_Tech = int(cp5.get(Slider.class, "level").getValue()) + 1;
      O3_Home = int(cp5.get(Slider.class, "hours").getValue()) + 1;
    }

    // printing of Occupant 4
    if (o4print == 1) {
      o4Gender = oGender;
      o4Age = oAge;
      o4Edu = oEdu;
      o4Tech = oTech;
      o4Home = oHome;
      o4print = 2;
    } 
    if (o4print == 2) {
      text(o4Gender, (0.15*width)+(3*(width*0.16)), height*0.625);
      text(o4Age, (0.15*width)+(3*(width*0.16)), height*0.653);
      text(o4Edu, (0.15*width)+(3*(width*0.16)), height*0.681);
      text(o4Tech, (0.15*width)+(3*(width*0.16)), height*0.709);
      text(o4Home, (0.15*width)+(3*(width*0.16)), height*0.737);

      O4_Gender = int(cp5.get(RadioButton.class, "occupantgender").getValue()) + 1;
      O4_Age = int(cp5.get(Slider.class, "years").getValue()) + 1;
      O4_Edu = int(cp5.get(Slider.class, "occupanteducation").getValue()) + 1;
      O4_Tech = int(cp5.get(Slider.class, "level").getValue()) + 1;
      O4_Home = int(cp5.get(Slider.class, "hours").getValue()) + 1;
    }

    // printing of Occupant 5
    if (o5print == 1) {
      o5Gender = oGender;
      o5Age = oAge;
      o5Edu = oEdu;
      o5Tech = oTech;
      o5Home = oHome;
      o5print = 2;
    } 
    if (o5print == 2) {
      text(o5Gender, (0.15*width)+(4*(width*0.16)), height*0.625);
      text(o5Age, (0.15*width)+(4*(width*0.16)), height*0.653);
      text(o5Edu, (0.15*width)+(4*(width*0.16)), height*0.681);
      text(o5Tech, (0.15*width)+(4*(width*0.16)), height*0.709);
      text(o5Home, (0.15*width)+(4*(width*0.16)), height*0.737);

      O5_Gender = int(cp5.get(RadioButton.class, "occupantgender").getValue()) + 1;
      O5_Age = int(cp5.get(Slider.class, "years").getValue()) + 1;
      O5_Edu = int(cp5.get(Slider.class, "occupanteducation").getValue()) + 1;
      O5_Tech = int(cp5.get(Slider.class, "level").getValue()) + 1;
      O5_Home = int(cp5.get(Slider.class, "hours").getValue()) + 1;
    }

    // confirmation for Occupant 6
    if (o6print == 1) {
      o6Gender = oGender;
      o6Age = oAge;
      o6Edu = oEdu;
      o6Tech = oTech;
      o6Home = oHome;
      o6print = 2;
    } 
    if (o6print == 2) {
      text(o6Gender, (0.15*width)+(5*(width*0.16)), height*0.625);
      text(o6Age, (0.15*width)+(5*(width*0.16)), height*0.653);
      text(o6Edu, (0.15*width)+(5*(width*0.16)), height*0.681);
      text(o6Tech, (0.15*width)+(5*(width*0.16)), height*0.709);
      text(o6Home, (0.15*width)+(5*(width*0.16)), height*0.737);

      O6_Gender = int(cp5.get(RadioButton.class, "occupantgender").getValue()) + 1;
      O6_Age = int(cp5.get(Slider.class, "years").getValue()) + 1;
      O6_Edu = int(cp5.get(Slider.class, "occupanteducation").getValue()) + 1;
      O6_Tech = int(cp5.get(Slider.class, "level").getValue()) + 1;
      O6_Home = int(cp5.get(Slider.class, "hours").getValue()) + 1;
    }

    if (O2_Gender == 1 | O3_Gender == 1 | O4_Gender == 1 | O5_Gender == 1 | O6_Gender == 1) {
      WomenPresent = 1;
    } else {
      WomenPresent = 0;
    }
    if (O2_Gender == 2 | O3_Gender == 2 | O4_Gender == 2 | O5_Gender == 2 | O6_Gender == 2) {
      MenPresent = 1;
    } else {
      MenPresent = 0;
    }
    if (O2_Gender == 3 | O3_Gender == 3 | O4_Gender == 3 | O5_Gender == 3 | O6_Gender == 3) {
      OtherPresent = 1;
    } else {
      OtherPresent = 0;
    }

    if (WomenPresent == 1 & MenPresent == 0 & OtherPresent == 0) {
      OthersGenderAVG = "Vrouw";
    } else if (WomenPresent == 0 & MenPresent == 1 & OtherPresent == 0) {
      OthersGenderAVG = "Man";
    } else if (WomenPresent == 0 & MenPresent == 0 & OtherPresent == 1) {
      OthersGenderAVG = "Vrouw"; //algorithms were not trained for non-binary people
    } else {
      OthersGenderAVG = "Mixed";
    }

    if (TotalOccupants != 0) {
      OthersAgeAVG = (O2_Age + O3_Age + O4_Age + O5_Age + O6_Age)/TotalOccupants;
      OthersEduAVG = (O2_Edu + O3_Edu + O4_Edu + O5_Edu + O6_Edu)/TotalOccupants;
      OthersTechAVG = (O2_Tech + O3_Tech + O4_Tech + O5_Tech + O6_Tech)/TotalOccupants;
      OthersHomeAVG = (O2_Home + O3_Home + O4_Home + O5_Home + O6_Home)/TotalOccupants;
    }

    //hide all initial profile selection interactions
    backToCharacteristics.hide();
    giveprofiles.hide();
    profileselect.hide();
    scratch.hide();
    scratchconfirm.hide();
    back2.hide();
    changePreferences.hide();
    keepPreferences.hide();

    //hide all preference elicitation UI interactions
    continue2.hide();
    changeHousehold.hide();
    changeSustainability.hide();
    changeSecurity.hide();
    changeConvenience.hide();
    changePrivacy.hide();
    changePersonalization.hide();
    changeControl.hide();
    confirmIntentions.hide();
    sustainability.hide();
    security.hide();
    convenience.hide();
    privacy.hide();
    personalization.hide();
    control.hide();
    changeProfile.hide();
    confirmPreferences.hide();
    changeLighting.hide();
    changeClimate.hide();
    changeSecuritySettings.hide();
    changeNotifications.hide();
    changeProgramming.hide();
    lighting.hide();
    climate.hide();
    securitysettings.hide();
    notifications.hide();
    programming.hide();
    clear_.hide();
    closeHelp.hide();
    example.hide();
    help.hide();
    submit.hide();

    userID.hide();
    start_.hide();

    break;

  case 1: // INITIAL PROFILE SELECTION --------------------------------------------------------------------------------------------------------------------------------------   

    if (CharacteristicsDone == 1 & updateIntentions == true) {
      calculateProfile();
    }

    if (AlternatesCalculated == 0) {
      calculateAlternates = true;
    }

    if (calculateAlternates) {
      alternateB_Sustainability = calculateAlternate(predictionResult_Sustainability);
      alternateB_Security = calculateAlternate(predictionResult_Security);
      alternateB_Convenience = calculateAlternate(predictionResult_Convenience);
      alternateB_Privacy = calculateAlternate(predictionResult_Privacy);
      alternateB_Personalization = calculateAlternate(predictionResult_Personalization);
      alternateB_Control = calculateAlternate(predictionResult_Control);
      alternateC_Sustainability = calculateAlternate(predictionResult_Sustainability);
      alternateC_Security = calculateAlternate(predictionResult_Security);
      alternateC_Convenience = calculateAlternate(predictionResult_Convenience);
      alternateC_Privacy = calculateAlternate(predictionResult_Privacy);
      alternateC_Personalization = calculateAlternate(predictionResult_Personalization);
      alternateC_Control = calculateAlternate(predictionResult_Control);

      calculateAlternates = false;
      AlternatesCalculated = 1;
    }

    //page explanation
    textSize(16);
    textAlign(CENTER);
    fill(#6a92b7);
    rect(width/5, height*0.05, width*0.6, height*0.21, 20);
    fill(255);
    text("Based on your household’s characteristics we can recommend you three Intention Profiles.", width/2, height*0.17);
    text("These profiles exist of the intentions that your household would likely have with a smart home.", width/2, height*0.20);
    text("After selecting a profile, you can change the individual intentions in the next step.", width/2, height*0.23);

    textSize(26);
    textAlign(CENTER);
    fill(255);
    rect(width/5, height*0.03, width*0.6, height/10, 20);
    fill(0);
    text("2) Intention Profile recommendations", width/2, height*0.087);

    // explanation intentions
    fill(255);
    textAlign(LEFT);
    textSize(20);
    text("Definition of the intentions", width*0.2, 0.33*height);
    textSize(16);
    text("“My household would likely use smart home technology for ... by ...”", width*0.2, 0.37*height);
    textSize(14);
    text("Sustainability", width*0.2, height*0.41);
    text("By saving money and energy", width*0.31, height*0.41);
    text("Security", width*0.2, height*0.435);
    text("By keeping the house and its occupants safe", width*0.31, height*0.435);
    text("Convenience", width*0.2, height*0.46);
    text("By saving time and effort", width*0.31, height*0.46);
    text("Privacy", width*0.2, height*0.485);
    text("By keeping personal information private", width*0.31, height*0.485);
    text("Personalization", width*0.2, height*0.51);
    text("By making the home more like your own", width*0.31, height*0.51);
    text("Control", width*0.2, height*0.535);
    text("By overseeing what is happening at home", width*0.31, height*0.535);

    if (showProfiles == true) {
      textSize(20);
      textAlign(CENTER);
      fill(255);
      text("Recommended Intention Profiles", width/2, height*0.61);

      //display of selection background rectangle when profile has been selected
      if (profileSelected == 1) {
        fill(#0074d9);
        rect(width*0.19, height*0.63, width*0.20, height*0.28, 10);
      } else if (profileSelected == 2) {
        fill(#0074d9);
        rect(width*0.40, height*0.63, width*0.20, height*0.28, 10);
      } else if (profileSelected == 3) {
        fill(#0074d9);
        rect(width*0.61, height*0.63, width*0.20, height*0.28, 10);
      }

      if (attemptscratch != 1) {
        // display of background rectangle when hovering over profile
        if (mouseX > width*0.2 && mouseX < width*0.38 && mouseY > height*0.64 && mouseY < height*0.90 && profileSelected != 1) {
          fill(#0074d9);
          rect(width*0.19, height*0.63, width*0.20, height*0.28, 10);
        } else if (mouseX > width*0.41 && mouseX < width*0.59 && mouseY > height*0.64 && mouseY < height*0.90 && profileSelected != 2) {
          fill(#0074d9);
          rect(width*0.40, height*0.63, width*0.20, height*0.28, 10);
        } else if (mouseX > width*0.62 && mouseX < width*0.80 && mouseY > height*0.64 && mouseY < height*0.90 && profileSelected != 3) {
          fill(#0074d9);
          rect(width*0.61, height*0.63, width*0.20, height*0.28, 10);
        }

        if (mouseX > width*0.2 && mouseX < width*0.38 && mouseY > height*0.64 && mouseY < height*0.90
          || mouseX > width*0.41 && mouseX < width*0.59 && mouseY > height*0.64 && mouseY < height*0.90
          || mouseX > width*0.62 && mouseX < width*0.80 && mouseY > height*0.64 && mouseY < height*0.90) {
          cursor(HAND);
        } else {
          cursor(ARROW);
        }
      }

      // intitial profiles layout
      fill(#6a92b7);
      for (int i = 0; i < 3; i = i + 1) {
        rect(width*(0.2+ (i*0.21)), height*0.64, width*0.18, height*0.26, 10);
      }

      fill(255);
      textSize(20);
      textAlign(CENTER);
      text("Profile A", width*0.29, height*0.68);
      text("Profile B", width*0.50, height*0.68);
      text("Profile C", width*0.71, height*0.68);

      textAlign(LEFT);
      fill(255);
      textSize(14);
      for (int i = 0; i < 3; i = i + 1) {
        text("Sustainability:", (0.22*width)+(i*(width*0.21)), height*0.72);
        text("Security:", (0.22*width)+(i*(width*0.21)), height*0.75);
        text("Convenience:", (0.22*width)+(i*(width*0.21)), height*0.78);
        text("Privacy:", (0.22*width)+(i*(width*0.21)), height*0.81);
        text("Personalization:", (0.22*width)+(i*(width*0.21)), height*0.84);
        text("Control:", (0.22*width)+(i*(width*0.21)), height*0.87);
      }

      text(predictionResult_Sustainability, (0.30*width)+(0*(width*0.21)), height*0.72);
      text(predictionResult_Security, (0.30*width)+(0*(width*0.21)), height*0.75);
      text(predictionResult_Convenience, (0.30*width)+(0*(width*0.21)), height*0.78);
      text(predictionResult_Privacy, (0.30*width)+(0*(width*0.21)), height*0.81);
      text(predictionResult_Personalization, (0.30*width)+(0*(width*0.21)), height*0.84);
      text(predictionResult_Control, (0.30*width)+(0*(width*0.21)), height*0.87);

      text(alternateB_Sustainability, (0.30*width)+(1*(width*0.21)), height*0.72);
      text(alternateB_Security, (0.30*width)+(1*(width*0.21)), height*0.75);
      text(alternateB_Convenience, (0.30*width)+(1*(width*0.21)), height*0.78);
      text(alternateB_Privacy, (0.30*width)+(1*(width*0.21)), height*0.81);
      text(alternateB_Personalization, (0.30*width)+(1*(width*0.21)), height*0.84);
      text(alternateB_Control, (0.30*width)+(1*(width*0.21)), height*0.87);

      text(alternateC_Sustainability, (0.30*width)+(2*(width*0.21)), height*0.72);
      text(alternateC_Security, (0.30*width)+(2*(width*0.21)), height*0.75);
      text(alternateC_Convenience, (0.30*width)+(2*(width*0.21)), height*0.78);
      text(alternateC_Privacy, (0.30*width)+(2*(width*0.21)), height*0.81);
      text(alternateC_Personalization, (0.30*width)+(2*(width*0.21)), height*0.84);
      text(alternateC_Control, (0.30*width)+(2*(width*0.21)), height*0.87);

      if (profileSelected != 0) {
        textAlign(CENTER);
        textSize(16);
        text("Selected profile: " + profile, width*0.7, height*0.36);

        if (mouseX > width*0.61 && mouseX < width*0.61 + 300 && mouseY > height*0.38 && mouseY < height*0.38 + 50) {
          cursor(HAND);
        }

        profileselect.show();
      } else {
        textAlign(CENTER);
        textSize(16);
        fill(255);
        text("Select a profile you wish to continue with", width*0.7, height*0.36);

        fill(100, 180);
        rect(width*0.61, height*0.38, 300, 50);
        textSize(13);
        fill(150);
        text("Continue with this profile", width*0.61 + 150, height*0.38 + 30);
        fill(255);
        profileselect.hide();
      }

      if (mouseX > width*0.61 && mouseX < width*0.61 + 300 && mouseY > height*0.43 && mouseY < height*0.43 + 50) {
        cursor(HAND);
      }

      if (attemptscratch == 1) {
        fill(255);
        rect(width/2 - 310, height*0.16, 620, 190);
        textSize(16);
        fill(0);
        textAlign(CENTER);
        text("Choosing one of the suggested profiles actually saves you time and effort.", width/2, height*0.20);
        text("If you start from scratch you will need to fill in the intentions yourself.", width/2, height*0.22);
        text("Are you sure you want to start from scratch?", width/2, height*0.24);

        scratchconfirm.show();
        back2.show();
      } else {
        scratchconfirm.hide();
        back2.hide();
      }

      giveprofiles.hide();
      scratch.show();
    } else {
      giveprofiles.show();
      scratch.hide();
    }

    if (popupPreferences == true) {
      fill(255);
      rect(width/2 - 370, height*0.16, 740, 160);
      textSize(16);
      fill(0);
      textAlign(CENTER);
      text("You might have made changes to your Household Characteristics and/or Profile Selection.", width/2, height*0.20);
      text("Should we reset your selected preferences and give new recommendations?", width/2, height*0.22);

      changePreferences.show();
      keepPreferences.show();
    } else if (popupPreferences == false) {
      changePreferences.hide();
      keepPreferences.hide();
    }

    // hide all login screen interactions
    occupantgender.hide();
    householdtype.hide();
    housetype.hide();
    closeEduInfo.hide();
    save_.hide();
    discard.hide();
    occupantage.hide();
    occupanteducation.hide();
    occupanttech.hide();
    occupanthome.hide();
    skip1.hide();
    toStep1.hide();
    continue_.hide();
    skip3.hide();
    back1.hide();
    householdconfirm.hide();
    login.hide();
    skip2.hide();
    edit1.hide();
    edit2.hide();
    edit3.hide();
    edit4.hide();
    edit5.hide();
    edit6.hide();
    add3.hide();
    add4.hide();
    add5.hide();
    add6.hide();
    confirm1.hide();
    confirm2.hide();
    confirm3.hide();
    confirm4.hide();
    confirm5.hide();
    confirm6.hide();
    remove3.hide();
    remove4.hide();
    remove5.hide();
    remove6.hide();
    removeconfirm.hide();
    back4.hide();
    changeIntentions.hide();
    keepIntentions.hide();

    // show profile selection interactions
    backToCharacteristics.show();

    //hide all preference elicitation UI interactions
    continue2.hide();
    changeHousehold.hide();
    changeSustainability.hide();
    changeSecurity.hide();
    changeConvenience.hide();
    changePrivacy.hide();
    changePersonalization.hide();
    changeControl.hide();
    confirmIntentions.hide();
    sustainability.hide();
    security.hide();
    convenience.hide();
    privacy.hide();
    personalization.hide();
    control.hide();
    changeProfile.hide();
    confirmPreferences.hide();
    changeLighting.hide();
    changeClimate.hide();
    changeSecuritySettings.hide();
    changeNotifications.hide();
    changeProgramming.hide();
    lighting.hide();
    climate.hide();
    securitysettings.hide();
    notifications.hide();
    programming.hide();
    clear_.hide();
    closeHelp.hide();
    example.hide();
    help.hide();
    submit.hide();

    userID.hide();
    start_.hide();

    break;

  case 2: // PREFERENCE ELICITATION UI -------------------------------------------------------------------------------------------------------------------------------------------

    if (finalstep == 0) {
      //page explanation
      fill(#6a92b7);
      rect(width/5, height*0.05, width*0.6, height*0.25, 20);
      textSize(26);
      textAlign(CENTER);
      fill(255);
      rect(width/5, height*0.03, width*0.6, height/10, 20);
      fill(0);
      text("3) Finalization of your smart home profile", width/2, height*0.09);
      fill(255);
      textSize(16);
      text("In this third and final step you can provide us with more detailed preferences for your smart home.", width/2, height*0.18);
      text("These details enable us to generate a more refined smart home profile for your household.", width/2, height*0.21);
      text("If any of the four steps are unclear you can click the help button in the top right of the screen.", width/2, height*0.24);

      if (mouseX > width - 350 && mouseX < width - 50 && mouseY > height - 100 && mouseY < height - 50) {
        cursor(HAND);
      } else cursor(ARROW);

      continue2.show();
    } else if (finalstep == 1) {
      cursor(ARROW);
      //page explanation
      fill(255);
      rect(width/6, height*0.03, width*0.67, height/10, 20);
      textSize(22);
      fill(0);
      textAlign(CENTER);
      text("On this page we will finalize your smart home profile by combining your household's", width/2, height*0.069);
      text("characteristics, intentions and preferences. Click 'Help' in the top-right for more explanations.", width/2, 0.11*height);

      // categories layout
      fill(#6a92b7);
      rect(width*0.09, height*0.17, width*0.26, height*0.33, 10);
      rect(width*0.09, height*0.54, width*0.26, height*0.42, 10);
      rect(width*0.38, height*0.17, width*0.53, height*0.60, 10);
      rect(width*0.38, height*0.81, width*0.53, height*0.15, 10);

      //section titles
      fill(255);
      textSize(22);
      textAlign(CENTER);
      text("Household Characteristics", width*0.22, height*0.205);
      text("Intentions", width*0.22, height*0.575);
      text("Preferences", width*0.645, height*0.205);
      text("Save your profile", width*0.645, height*0.845);
      textSize(16);
      text("Happy with your profile? Then click the button below.", width*0.645, height*0.875);

      fill(255);
      ellipse(width*0.10, height*0.18, 70, 70);
      ellipse(width*0.10, height*0.55, 70, 70);
      ellipse(width*0.39, height*0.18, 70, 70);
      ellipse(width*0.39, height*0.82, 70, 70);
      fill(0, 45, 90);
      textSize(50);
      textAlign(CENTER);
      text("1", width*0.10, height*0.199);
      text("2", width*0.10, height*0.569);
      text("3", width*0.39, height*0.199);
      text("4", width*0.39, height*0.839);

      if (mouseX > width*0.125 && mouseX < width*0.125 + 300 && mouseY > height*0.44 && mouseY < height*0.44 + 40) {
        cursor(HAND);
      } else {
        cursor(ARROW);
      }

      if (allClear == 0) {
        //Section Explanations

        //characteristics explanation
        fill(255);
        textSize(16);
        textAlign(LEFT);
        text("In this section you will see an overview of", width*0.11, height*0.25);
        text("your given household's characteristics. Hereby", width*0.11, height*0.275);
        text("you were able to see suggestions on what", width*0.11, height*0.30);
        text("intentions your household would likely have", width*0.11, height*0.325);
        text("with smart home technology in your house.", width*0.11, height*0.35);

        text("Click the button below if you want to change", width*0.11, height*0.39);
        text("or add your household's characteristics.", width*0.11, height*0.415);

        //intentions explanation
        text("This section is interactive. It shows what", width*0.11, height*0.615);
        text("possible intentions a user might have with", width*0.11, height*0.64);
        text("smart home technology. There are six types:", width*0.11, height*0.665);

        textSize(13);
        text("Sustainability", width*0.11, height*0.70);
        text("By saving money and energy", width*0.175, height*0.70);
        text("Security", width*0.11, height*0.72);
        text("By keeping the house and occupants safe", width*0.175, height*0.72);
        text("Convenience", width*0.11, height*0.74);
        text("By saving time and effort", width*0.175, height*0.74);
        text("Privacy", width*0.11, height*0.76);
        text("By keeping personal information private", width*0.175, height*0.76);
        text("Personalization", width*0.11, height*0.78);
        text("By making the home more like your own", width*0.175, height*0.78);
        text("Control", width*0.11, height*0.80);
        text("By overseeing what is happening at home", width*0.175, height*0.80);

        textSize(16);
        text("Change values via sliders by clicking 'change'", width*0.11, height*0.84);

        //preferences explanation
        text("Your smart home profile is based on three things. You are already acquainted with the first two,", width*0.40, height*0.25);
        text("your household's characteristics and your household's intentions with smart home technology.", width*0.40, height*0.275);
        text("We now add a third to that. The preferences that your household might have for your smart home.", width*0.40, height*0.30);
        text("As there is a vast scala of such preferences we have scaled them down into four categories:", width*0.40, height*0.325);

        textSize(14);
        text("o   Smart Lighting: With smart lighting you can automate your lights and control them remotely.", width*0.40, height*0.37);
        text("     Benefits can be easier control of your lights and more energy efficiency with time schedules and motion sensors.", width*0.40, height*0.39);
        text("o   Smart Climate Control: Can improve the home's climate by controlling the heating, ventilation, AC or blinds.", width*0.40, height*0.42);
        text("     Benefits can include more comfort, lower energy costs and a more sustainable home.", width*0.40, height*0.44);
        text("o   Smart Security: Connects motion sensors and alarms to devices like door locks, cameras or lights.", width*0.40, height*0.47);
        text("     Benefits can be a better overview of what is happening in the home and a safer environment for the occupants.", width*0.40, height*0.49);
        text("o   Smart Home Notifications: You can choose to be notified on changes and reports of your smart home devices.", width*0.40, height*0.52);
        text("     This way you have a better overview of how your devices are functioning.", width*0.40, height*0.54);

        textSize(16);
        text("Change the recommended smart home preferences by checking one or multiple of the checkboxes.", width*0.40, height*0.59);
        text("When you are happy with your selected intentions and preferences click the save button.", width*0.40, height*0.615);

        //final explanation
        text("If you want to read this help page again you can always click the help button in the top right.", width*0.40, height*0.665);

        fill(100, 180);
        rect(width*0.645 - 200, height*0.90, 400, 40);
        textSize(13);
        textAlign(CENTER);
        fill(150, 150);
        text("Save your smart home profile", width*0.645, height*0.90 + 25);

        if (mouseX > width*0.645 - 200 & mouseX < width*0.645 + 200 & mouseY > height*0.90 & mouseY < height*0.90 + 40) {
          fill(200);
          rect(width*0.645 - 200, height*0.90, 400, 40);
          fill(100);
          text("Close help menu first", width*0.645, height*0.90 + 25);
        }

        if (CharacteristicsDone == 0) {
          fill(100, 180);
          rect(width*0.125, height*0.90, 300, 40);
          textSize(13);
          textAlign(CENTER);
          fill(150);
          text("Change selected profile", width*0.125 + 150, height*0.90 + 25);

          if (mouseX > width*0.125 & mouseX < width*0.125 + 300 & mouseY > height*0.90 & mouseY < height*0.90 + 40) {
            fill(200);
            rect(width*0.125, height*0.90, 300, 40);
            fill(100);
            text("Give Household Characteristics first", width*0.125 + 150, height*0.90 + 25);
          }

          changeProfile.hide();
        } else {
          changeProfile.show();
        }

        clear_.show();
        closeHelp.show();
        example.show();
        changeHousehold.show();
        changeSustainability.hide();
        changeSecurity.hide();
        changeConvenience.hide();
        changePrivacy.hide();
        changePersonalization.hide();
        changeControl.hide();
        sustainability.hide();
        security.hide();
        convenience.hide();
        privacy.hide();
        personalization.hide();
        control.hide();
        confirmPreferences.hide();
        changeLighting.hide();
        changeClimate.hide();
        changeSecuritySettings.hide();
        changeNotifications.hide();
        changeProgramming.hide();
        lighting.hide();
        climate.hide();
        securitysettings.hide();
        notifications.hide();
        programming.hide();
        help.hide();
        submit.hide();
      } else if (allClear != 0) {
        //Household Characteristics
        textSize(14);
        fill(255);
        textAlign(LEFT);
        text("Household Type:", width*0.135, height*0.235);
        text("House Type:", width*0.135, height*0.265);
        text("Occupants:", width*0.135, height*0.295);

        if (hType != 0) {
          textSize(14);
          textAlign(RIGHT);
          fill(255);
          if (hType == 1) {
            text("Two partners", width*0.305, height*0.235);
          } else if (hType == 2) {
            text("Partners & child(ren)", width*0.305, height*0.235);
          } else if (hType == 3) {
            text("Multiple housemate(s)", width*0.305, height*0.235);
          } else if (hType == 4) {
            text("Parent & child(ren)", width*0.305, height*0.235);
          } else if (hType == 5) {
            text("Single occupant", width*0.305, height*0.235);
          }
        } else {
          textSize(14);
          textAlign(RIGHT);
          fill(255);
          text("Not defined", width*0.305, height*0.235);
        }

        if (hHouse != 0) {
          textSize(14);
          textAlign(RIGHT);
          fill(255);
          if (hHouse == 1) {
            text("Detached house", width*0.305, height*0.265);
          } else if (hHouse == 2) {
            text("Terraced/corner house", width*0.305, height*0.265);
          } else if (hHouse == 3) {
            text("Semi-detached house", width*0.305, height*0.265);
          } else if (hHouse == 4) {
            text("Appartment", width*0.305, height*0.265);
          }
        } else {
          textSize(14);
          textAlign(RIGHT);
          fill(255);
          text("Not defined", width*0.305, height*0.265);
        }

        //occupants in household
        textSize(14);
        textAlign(LEFT);
        text("Yourself:", 0.135*width, height*0.32);
        textAlign(RIGHT);
        text(o1Gender + "/" + o1Age, 0.28*width, height*0.32);

        if (hType == 1) {
          textAlign(LEFT);
          text("Partner:", 0.135*width, height*0.34);
          textAlign(RIGHT);
          text(o2Gender + "/" + o2Age, 0.28*width, height*0.34);
        } else if (hType == 2) {
          textAlign(LEFT);
          text("Partner:", 0.135*width, height*0.34);
          text("Child A:", 0.135*width, height*0.36);
          textAlign(RIGHT);
          text(o2Gender + "/" + o2Age, 0.28*width, height*0.34);
          text(o3Gender + "/" + o3Age, 0.28*width, height*0.36);
          if (o4Gender != "...") {
            textAlign(LEFT);
            text("Child B:", 0.135*width, height*0.38);
            textAlign(RIGHT);
            text(o4Gender + "/" + o4Age, 0.28*width, height*0.38);
          }
          if (o5Gender != "...") {
            textAlign(LEFT);
            text("Child C:", 0.135*width, height*0.40);
            textAlign(RIGHT);
            text(o5Gender + "/" + o5Age, 0.28*width, height*0.40);
          }
          if (o6Gender != "...") {
            textAlign(LEFT);
            text("Child D:", 0.135*width, height*0.42);
            textAlign(RIGHT);
            text(o6Gender + "/" + o6Age, 0.28*width, height*0.42);
          }
        } else if (hType == 3) {
          textAlign(LEFT);
          text("Housemate A:", 0.135*width, height*0.34);
          textAlign(RIGHT);
          text(o2Gender + "/" + o2Age, 0.28*width, height*0.34);
          if (o3Gender != "...") {
            textAlign(LEFT);
            text("Housemate B:", 0.135*width, height*0.36);
            textAlign(RIGHT);
            text(o3Gender + "/" + o3Age, 0.28*width, height*0.36);
          }
          if (o4Gender != "...") {
            textAlign(LEFT);
            text("Housemate C:", 0.135*width, height*0.38);
            textAlign(RIGHT);
            text(o4Gender + "/" + o4Age, 0.28*width, height*0.38);
          }
          if (o5Gender != "...") {
            textAlign(LEFT);
            text("Housemate D:", 0.135*width, height*0.40);
            textAlign(RIGHT);
            text(o5Gender + "/" + o5Age, 0.28*width, height*0.40);
          }
          if (o6Gender != "...") {
            textAlign(LEFT);
            text("Housemate E:", 0.135*width, height*0.42);
            textAlign(RIGHT);
            text(o6Gender + "/" + o6Age, 0.28*width, height*0.42);
          }
        } else if (hType == 4) {
          textAlign(LEFT);
          text("Child A:", 0.135*width, height*0.34);
          textAlign(RIGHT);
          text(o2Gender + "/" + o2Age, 0.28*width, height*0.34);
          if (o3Gender != "...") {
            textAlign(LEFT);
            text("Child B:", 0.135*width, height*0.36);
            textAlign(RIGHT);
            text(o3Gender + "/" + o3Age, 0.28*width, height*0.36);
          }
          if (o4Gender != "...") {
            textAlign(LEFT);
            text("Child C:", 0.135*width, height*0.38);
            textAlign(RIGHT);
            text(o4Gender + "/" + o4Age, 0.28*width, height*0.38);
          }
          if (o5Gender != "...") {
            textAlign(LEFT);
            text("Child D:", 0.135*width, height*0.40);
            textAlign(RIGHT);
            text(o5Gender + "/" + o5Age, 0.28*width, height*0.40);
          }
          if (o6Gender != "...") {
            textAlign(LEFT);
            text("Child E:", 0.135*width, height*0.42);
            textAlign(RIGHT);
            text(o6Gender + "/" + o6Age, 0.28*width, height*0.42);
          }
        }

        if (sustainabilityChanged == false) {
          if (profileSelected == 1) {
            cp5.get(Slider.class, "sustainability").setValue(translateToLikertScore(predictionResult_Sustainability));
          } else if (profileSelected == 2) {
            cp5.get(Slider.class, "sustainability").setValue(translateToLikertScore(alternateB_Sustainability));
          } else if (profileSelected == 3) {
            cp5.get(Slider.class, "sustainability").setValue(translateToLikertScore(alternateC_Sustainability));
          } else if (profileSelected == 0) {
            cp5.get(Slider.class, "sustainability").setValue(4);
          }
        }

        if (securityChanged == false) {
          if (profileSelected == 1) {
            cp5.get(Slider.class, "security").setValue(translateToLikertScore(predictionResult_Security));
          } else if (profileSelected == 2) {
            cp5.get(Slider.class, "security").setValue(translateToLikertScore(alternateB_Security));
          } else if (profileSelected == 3) {
            cp5.get(Slider.class, "security").setValue(translateToLikertScore(alternateC_Security));
          } else if (profileSelected == 0) {
            cp5.get(Slider.class, "security").setValue(4);
          }
        }

        if (convenienceChanged == false) {
          if (profileSelected == 1) {
            cp5.get(Slider.class, "convenience").setValue(translateToLikertScore(predictionResult_Convenience));
          } else if (profileSelected == 2) {
            cp5.get(Slider.class, "convenience").setValue(translateToLikertScore(alternateB_Convenience));
          } else if (profileSelected == 3) {
            cp5.get(Slider.class, "convenience").setValue(translateToLikertScore(alternateC_Convenience));
          } else if (profileSelected == 0) {
            cp5.get(Slider.class, "convenience").setValue(4);
          }
        }

        if (privacyChanged == false) {
          if (profileSelected == 1) {
            cp5.get(Slider.class, "privacy").setValue(translateToLikertScore(predictionResult_Privacy));
          } else if (profileSelected == 2) {
            cp5.get(Slider.class, "privacy").setValue(translateToLikertScore(alternateB_Privacy));
          } else if (profileSelected == 3) {
            cp5.get(Slider.class, "privacy").setValue(translateToLikertScore(alternateC_Privacy));
          } else if (profileSelected == 0) {
            cp5.get(Slider.class, "privacy").setValue(4);
          }
        }

        if (personalizationChanged == false) {
          if (profileSelected == 1) {
            cp5.get(Slider.class, "personalization").setValue(translateToLikertScore(predictionResult_Personalization));
          } else if (profileSelected == 2) {
            cp5.get(Slider.class, "personalization").setValue(translateToLikertScore(alternateB_Personalization));
          } else if (profileSelected == 3) {
            cp5.get(Slider.class, "personalization").setValue(translateToLikertScore(alternateC_Personalization));
          } else if (profileSelected == 0) {
            cp5.get(Slider.class, "personalization").setValue(4);
          }
        }

        if (controlChanged == false) {
          if (profileSelected == 1) {
            cp5.get(Slider.class, "control").setValue(translateToLikertScore(predictionResult_Control));
          } else if (profileSelected == 2) {
            cp5.get(Slider.class, "control").setValue(translateToLikertScore(alternateB_Control));
          } else if (profileSelected == 3) {
            cp5.get(Slider.class, "control").setValue(translateToLikertScore(alternateC_Control));
          } else if (profileSelected == 0) {
            cp5.get(Slider.class, "control").setValue(4);
          }
        }

        SustainabilityScore = translateToLikertScore(sustainabilityValue);
        SecurityScore = translateToLikertScore(securityValue);
        ConvenienceScore = translateToLikertScore(convenienceValue);
        PrivacyScore = translateToLikertScore(privacyValue);
        PersonalizationScore = translateToLikertScore(personalizationValue);
        ControlScore = translateToLikertScore(controlValue);

        if (editIntentions == 0) {
          textAlign(CENTER);
          textSize(16);
          text("Likeliness of your household intending to", width*0.22, height*0.61);
          text("use your smart home for this purpose", width*0.22, height*0.635);

          //Printing of intentions (including exceptions)
          textAlign(LEFT);
          textSize(16);

          text("Sustainability:", width*0.11, height*0.675);
          if (cp5.get(Slider.class, "sustainability").getValue() == 1) {
            text("Very low", width*0.195, height*0.675);
          } else {
            text(sustainabilityValue, width*0.195, height*0.675);
          }

          text("Security:", width*0.11, height*0.715);
          if (cp5.get(Slider.class, "security").getValue() == 1) {
            text("Very low", width*0.195, height*0.715);
          } else {
            text(securityValue, width*0.195, height*0.715);
          }

          text("Convenience:", width*0.11, height*0.755);
          if (cp5.get(Slider.class, "convenience").getValue() == 1) {
            text("Very low", width*0.195, height*0.755);
          } else {
            text(convenienceValue, width*0.195, height*0.755);
          }

          text("Privacy:", width*0.11, height*0.795);
          if (cp5.get(Slider.class, "privacy").getValue() == 7) {
            text("Very high", width*0.195, height*0.795);
          } else {
            text(privacyValue, width*0.195, height*0.795);
          }

          text("Personalization:", width*0.11, height*0.835);
          text(personalizationValue, width*0.195, height*0.835);

          text("Control:", width*0.11, height*0.875);
          text(controlValue, width*0.195, height*0.875);

          if (CharacteristicsDone == 0) {
            fill(100, 180);
            rect(width*0.125, height*0.90, 300, 40);
            textSize(13);
            fill(150);
            textAlign(CENTER);
            text("Change selected profile", width*0.125 + 150, height*0.90 + 25);

            if (mouseX > width*0.125 & mouseX < width*0.125 + 300 & mouseY > height*0.90 & mouseY < height*0.90 + 40) {
              fill(200);
              rect(width*0.125, height*0.90, 300, 40);
              fill(100);
              text("Give Household Characteristics first", width*0.125 + 150, height*0.90 + 25);
            }
            changeProfile.hide();
          } else {
            changeProfile.show();
          }

          changeSustainability.show();
          changeSecurity.show();
          changeConvenience.show();
          changePrivacy.show();
          changePersonalization.show();
          changeControl.show();
          confirmIntentions.hide();
          sustainability.hide();
          security.hide();
          convenience.hide();
          privacy.hide();
          personalization.hide();
          control.hide();
        } else if (editIntentions == 1) {
          if (editSustainability == 1) {
            fill(255);
            textAlign(CENTER);
            textSize(14);
            text("You can change the value for 'sustainability' here.", width*0.22, height*0.61);
            text("It represents your agreement with this statement:", width*0.22, height*0.635);
            text("“My household would likely use smart home technology", width*0.22, height*0.67);
            text("for sustainability by saving money and energy.”", width*0.22, height*0.695);

            if (profileSelected == 1) {
              text("Recommended value: " + predictionResult_Sustainability, width*0.22, height*0.74);
            } else if (profileSelected == 2) {
              text("Recommended value: " + alternateB_Sustainability, width*0.22, height*0.74);
            } else if (profileSelected == 3) {
              text("Recommended value: " + alternateC_Sustainability, width*0.22, height*0.74);
            } else if (profileSelected == 0) {
              text("Recommended value: " + "Not calculated", width*0.22, height*0.74);
            }

            text("Current value: " + sustainabilityValue, width*0.22, height*0.765);

            text("You can move the slider to change the current value", width*0.22, height*0.81);
            textAlign(LEFT);
            textSize(12);
            text("Very low", width*0.12 - 10, height*0.84);
            textAlign(CENTER);
            text("Neutral", width*0.12 + 125, height*0.84);
            textAlign(RIGHT);
            text("Very high", width*0.12 + 260, height*0.84);

            sustainability.show();
          } else if (editSecurity == 1) {
            fill(255);
            textAlign(CENTER);
            textSize(14);
            text("You can change the value for 'security' here.", width*0.22, height*0.61);
            text("It represents your agreement with this statement:", width*0.22, height*0.635);
            text("“My household would likely use smart home technology", width*0.22, height*0.67);
            text("for security by keeping the house and its occupants safe.”", width*0.22, height*0.695);

            if (profileSelected == 1) {
              text("Recommended value: " + predictionResult_Security, width*0.22, height*0.74);
            } else if (profileSelected == 2) {
              text("Recommended value: " + alternateB_Security, width*0.22, height*0.74);
            } else if (profileSelected == 3) {
              text("Recommended value: " + alternateC_Security, width*0.22, height*0.74);
            } else if (profileSelected == 0) {
              text("Recommended value: " + "Not calculated", width*0.22, height*0.74);
            }

            text("Current value: " + securityValue, width*0.22, height*0.765);

            text("You can move the slider to change the value", width*0.22, height*0.81);
            textAlign(LEFT);
            textSize(12);
            text("Very low", width*0.12 - 10, height*0.84);
            textAlign(CENTER);
            text("Neutral", width*0.12 + 125, height*0.84);
            textAlign(RIGHT);
            text("Very high", width*0.12 + 260, height*0.84);

            security.show();
          } else if (editConvenience == 1) {
            fill(255);
            textAlign(CENTER);
            textSize(14);
            text("You can change the value for 'convenience' here.", width*0.22, height*0.61);
            text("It represents your agreement with this statement:", width*0.22, height*0.635);
            text("“My household would likely use smart home technology", width*0.22, height*0.67);
            text("for convenience by saving time and effort.”", width*0.22, height*0.695);

            if (profileSelected == 1) {
              text("Recommended value: " + predictionResult_Convenience, width*0.22, height*0.74);
            } else if (profileSelected == 2) {
              text("Recommended value: " + alternateB_Convenience, width*0.22, height*0.74);
            } else if (profileSelected == 3) {
              text("Recommended value: " + alternateC_Convenience, width*0.22, height*0.74);
            } else if (profileSelected == 0) {
              text("Recommended value: " + "Not calculated", width*0.22, height*0.74);
            }

            text("Current value: " + convenienceValue, width*0.22, height*0.765);

            text("You can move the slider to change the value", width*0.22, height*0.81);
            textAlign(LEFT);
            textSize(12);
            text("Very low", width*0.12 - 10, height*0.84);
            textAlign(CENTER);
            text("Neutral", width*0.12 + 125, height*0.84);
            textAlign(RIGHT);
            text("Very high", width*0.12 + 260, height*0.84);

            convenience.show();
          } else if (editPrivacy == 1) {
            fill(255);
            textAlign(CENTER);
            textSize(14);
            text("You can change the value for 'privacy' here.", width*0.22, height*0.61);
            text("It represents your agreement with this statement:", width*0.22, height*0.635);
            text("“My household would likely use smart home technology", width*0.22, height*0.67);
            text("for privacy by keeping personal information private.”", width*0.22, height*0.695);

            if (profileSelected == 1) {
              text("Recommended value: " + predictionResult_Privacy, width*0.22, height*0.74);
            } else if (profileSelected == 2) {
              text("Recommended value: " + alternateB_Privacy, width*0.22, height*0.74);
            } else if (profileSelected == 3) {
              text("Recommended value: " + alternateC_Privacy, width*0.22, height*0.74);
            } else if (profileSelected == 0) {
              text("Recommended value: " + "Not calculated", width*0.22, height*0.74);
            }

            text("Current value: " + privacyValue, width*0.22, height*0.765);

            text("You can move the slider to change the value", width*0.22, height*0.81);
            textAlign(LEFT);
            textSize(12);
            text("Very low", width*0.12 - 10, height*0.84);
            textAlign(CENTER);
            text("Neutral", width*0.12 + 125, height*0.84);
            textAlign(RIGHT);
            text("Very high", width*0.12 + 260, height*0.84);

            privacy.show();
          } else if (editPersonalization == 1) {
            fill(255);
            textAlign(CENTER);
            textSize(14);
            text("You can change the value for 'personalization' here.", width*0.22, height*0.61);
            text("It represents your agreement with this statement:", width*0.22, height*0.635);
            text("“My household would likely use smart home technology", width*0.22, height*0.67);
            text("for personalization by making the home more like our own.”", width*0.22, height*0.695);

            if (profileSelected == 1) {
              text("Recommended value: " + predictionResult_Personalization, width*0.22, height*0.74);
            } else if (profileSelected == 2) {
              text("Recommended value: " + alternateB_Personalization, width*0.22, height*0.74);
            } else if (profileSelected == 3) {
              text("Recommended value: " + alternateC_Personalization, width*0.22, height*0.74);
            } else if (profileSelected == 0) {
              text("Recommended value: " + "Not calculated", width*0.22, height*0.74);
            }

            text("Current value: " + personalizationValue, width*0.22, height*0.765);

            text("You can move the slider to change the value", width*0.22, height*0.81);
            textAlign(LEFT);
            textSize(12);
            text("Very low", width*0.12 - 10, height*0.84);
            textAlign(CENTER);
            text("Neutral", width*0.12 + 125, height*0.84);
            textAlign(RIGHT);
            text("Very high", width*0.12 + 260, height*0.84);

            personalization.show();
          } else if (editControl == 1) {
            fill(255);
            textAlign(CENTER);
            textSize(14);
            text("You can change the value for 'control' here.", width*0.22, height*0.61);
            text("It represents your agreement with this statement:", width*0.22, height*0.635);
            text("“My household would likely use smart home technology", width*0.22, height*0.67);
            text("for control by overseeing what is happening at home.”", width*0.22, height*0.695);

            if (profileSelected == 1) {
              text("Recommended value: " + predictionResult_Control, width*0.22, height*0.74);
            } else if (profileSelected == 2) {
              text("Recommended value: " + alternateB_Control, width*0.22, height*0.74);
            } else if (profileSelected == 3) {
              text("Recommended value: " + alternateC_Control, width*0.22, height*0.74);
            } else if (profileSelected == 0) {
              text("Recommended value: " + "Not calculated", width*0.22, height*0.74);
            }

            text("Current value: " + controlValue, width*0.22, height*0.765);

            text("You can move the slider to change the value", width*0.22, height*0.81);
            textAlign(LEFT);
            textSize(12);
            text("Very low", width*0.12 - 10, height*0.84);
            textAlign(CENTER);
            text("Neutral", width*0.12 + 125, height*0.84);
            textAlign(RIGHT);
            text("Very high", width*0.12 + 260, height*0.84);

            control.show();
          }

          confirmIntentions.show();
          changeSustainability.hide();
          changeSecurity.hide();
          changeConvenience.hide();
          changePrivacy.hide();
          changePersonalization.hide();
          changeControl.hide();
          changeProfile.hide();

          //security.show();
          //convenience.show();
          //privacy.show();
          //personalization.show();
          //control.show();
        }

        if (CharacteristicsDone == 0) { //if user has skipped the step for Household Characteristics set these values as defaults. If these defaults are not set the system cannot recommend any preferences, but instead gives an error
          HouseholdType = "Samenwonend enkel met partner";
          TotalOccupants = 2;
          UserGender = "Man";
          UserAge = 4; //Default age: 28-44
          UserEdu = 1; //Default education: Average
          UserTech = 2; //Default tech-level: Average
          UserHome = 2; //Default hours at home: 10-14
          HouseType = "2-onder-1-kapwoning"; //most popular type of house in the Netherlands is taken as default
        }

        if (updatePreferences == true) {
          calculatePreferences();
        }

        if (editPreferences == 0) {
          fill(255);
          textSize(16);
          textAlign(LEFT);
          text("Lighting: Your smart lights will automatically turn off...", width*0.40, height*0.24);
          text("Climate: The temperature in the house is brought to a warmer level...", width*0.40, height*0.355);
          text("Security: Your security cameras are turned on...", width*0.40, height*0.445);
          text("Notifications: A notification is sent to your phone when...", width*0.40, height*0.56);
          text("Programming: Who is to be responsible for programming and repairing devices?", width*0.40, height*0.675);

          textSize(14);
          //lighting
          text("...with sufficient sunlight.", width*0.41, height*0.265);
          text("...at 15 minutes no movement.", width*0.41, height*0.29);
          text("...when it is bedtime.", width*0.41, height*0.315);
          text("...with no one at home.", width*0.60, height*0.265);
          text("Never, no automatic changes.", width*0.60, height*0.29);

          fill(200, 0, 0, 150);
          ellipse(width*0.40 + 5, height*0.265 - 5, 10, 10);
          ellipse(width*0.40 + 5, height*0.29 - 5, 10, 10);
          ellipse(width*0.40 + 5, height*0.315 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.265 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.29 - 5, 10, 10);

          fill(0, 200, 0);
          if (lightingChanged == true) { //if lighting settings manually changed
            if (cp5.get(CheckBox.class, "lighting").getState(3) != true) { //if user has not selected to never automatically turn off their lights
              if (cp5.get(CheckBox.class, "lighting").getState(0) == true) { //sunlight
                ellipse(width*0.40 + 5, height*0.265 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "lighting").getState(1) == true) { //vacated
                ellipse(width*0.59 + 5, height*0.265 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "lighting").getState(2) == true) { //movement
                ellipse(width*0.40 + 5, height*0.29 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "lighting").getState(4) == true) { //bedtime
                ellipse(width*0.40 + 5, height*0.315 - 5, 11, 11);
              }
            } else if (cp5.get(CheckBox.class, "lighting").getState(3) == true) { //never
              ellipse(width*0.59 + 5, height*0.29 - 5, 11, 11);

              //deactivate all others if 'never' is selected
              cp5.get(CheckBox.class, "lighting").deactivate(0);
              cp5.get(CheckBox.class, "lighting").deactivate(1);
              cp5.get(CheckBox.class, "lighting").deactivate(2);
              cp5.get(CheckBox.class, "lighting").deactivate(4);
            }
          } else if (lightingChanged == false & profileSelected != 0) { //if lighting settings not yet manually changed and a profile has been selected
            if (predictionResult_LightingNever.equals("No")) { //only if 'never' is predicted as 'no' the others can be activated
              if (predictionResult_LightingSunlight.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.265 - 5, 11, 11);
                cp5.get(CheckBox.class, "lighting").activate(0);
              }
              if (predictionResult_LightingVacated.equals("Ja")) {
                ellipse(width*0.59 + 5, height*0.265 - 5, 11, 11);
                cp5.get(CheckBox.class, "lighting").activate(1);
              }
              if (predictionResult_LightingMovement.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.29 - 5, 11, 11);
                cp5.get(CheckBox.class, "lighting").activate(2);
              }
              if (predictionResult_LightingBedtime.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.315 - 5, 11, 11);
                cp5.get(CheckBox.class, "lighting").activate(4);
              }
            } else if (predictionResult_LightingNever.equals("Ja")) {
              ellipse(width*0.59 + 5, height*0.29 - 5, 11, 11);
              cp5.get(CheckBox.class, "lighting").activate(3);
            }
          }

          fill(255);

          //climate
          text("...when someone is home.", width*0.41, height*0.38);
          text("...when someone is home and awake.", width*0.41, height*0.405);
          text("...at all times.", width*0.60, height*0.38);
          text("Never, no automatic changes.", width*0.60, height*0.405);

          fill(200, 0, 0, 150);
          ellipse(width*0.40 + 5, height*0.38 - 5, 10, 10);
          ellipse(width*0.40 + 5, height*0.405 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.38 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.405 - 5, 10, 10);

          fill(0, 200, 0);
          if (climateChanged == true) { //if climate settings manually changed
            if (cp5.get(CheckBox.class, "climate").getState(3) != true) { //if user has not selected to never automatically raise their temperature
              if (cp5.get(CheckBox.class, "climate").getState(2) == true) { //awake
                ellipse(width*0.40 + 5, height*0.405 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "climate").getState(0) == true) { //home
                ellipse(width*0.40 + 5, height*0.38 - 5, 11, 11);

                //if user has selected 'if occupant home' also activate 'if occupant home and awake'
                cp5.get(CheckBox.class, "climate").activate(2);
              }
              if (cp5.get(CheckBox.class, "climate").getState(1) == true) { //always
                ellipse(width*0.59 + 5, height*0.38 - 5, 11, 11);

                //activate all others (except 'never') if user has selected 'always'
                cp5.get(CheckBox.class, "climate").activate(0);
                cp5.get(CheckBox.class, "climate").activate(2);
              }
            } else if (cp5.get(CheckBox.class, "climate").getState(3) == true) { //never
              ellipse(width*0.59 + 5, height*0.405 - 5, 11, 11);

              //deactivate all others if 'never' is selected
              cp5.get(CheckBox.class, "climate").deactivate(0);
              cp5.get(CheckBox.class, "climate").deactivate(1);
              cp5.get(CheckBox.class, "climate").deactivate(2);
            }
          } else if (climateChanged == false & profileSelected != 0) { //if climate settings not yet manually changed and a profile has been selected
            if (predictionResult_ClimateNever.equals("Nee")) { //only if 'never' is predicted as 'no' the others can be activated
              if (predictionResult_ClimateAwake.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.405 - 5, 11, 11);
                cp5.get(CheckBox.class, "climate").activate(2);
              }
              if (predictionResult_ClimateHome.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.38 - 5, 11, 11);
                cp5.get(CheckBox.class, "climate").activate(0);

                //when 'if occupant home' is predicted as 'yes' also activate 'if occupant home and awake'
                cp5.get(CheckBox.class, "climate").activate(2);
              }
            } else if (predictionResult_ClimateNever.equals("Ja")) {
              ellipse(width*0.59 + 5, height*0.405 - 5, 11, 11);
              cp5.get(CheckBox.class, "climate").activate(3);
            }//Note: 'Always' was never selected in the dataset for data mining and therefore was not included here
          }

          fill(255);

          //security
          text("...when movement is detected.", width*0.41, height*0.47);
          text("...when everyone has left the house.", width*0.41, height*0.495);
          text("...when everyone is sleeping.", width*0.41, height*0.52);
          text("... at all times.", width*0.60, height*0.47);
          text("Never, no cameras are installed.", width*0.60, height*0.495);

          fill(200, 0, 0, 150);
          ellipse(width*0.40 + 5, height*0.47 - 5, 10, 10);
          ellipse(width*0.40 + 5, height*0.495 - 5, 10, 10);
          ellipse(width*0.40 + 5, height*0.52 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.47 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.495 - 5, 10, 10);

          fill(0, 200, 0);
          if (securitySettingsChanged == true) { //if security settings manually changed
            if (cp5.get(CheckBox.class, "securitysettings").getState(3) != true) { //if user has not selected to never have security cameras
              if (cp5.get(CheckBox.class, "securitysettings").getState(0) == true) { //movement
                ellipse(width*0.40 + 5, height*0.47 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "securitysettings").getState(2) == true) { //vacated
                ellipse(width*0.40 + 5, height*0.495 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "securitysettings").getState(4) == true) { //sleeping
                ellipse(width*0.40 + 5, height*0.52 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "securitysettings").getState(1) == true) { //always
                ellipse(width*0.59 + 5, height*0.47 - 5, 11, 11);

                //activate all others (except 'never') if user has selected 'always'
                cp5.get(CheckBox.class, "securitysettings").activate(0);
                cp5.get(CheckBox.class, "securitysettings").activate(2);
                cp5.get(CheckBox.class, "securitysettings").activate(4);
              }
            } else if (cp5.get(CheckBox.class, "securitysettings").getState(3) == true) { //never
              ellipse(width*0.59 + 5, height*0.495 - 5, 11, 11);

              //deactivate all others if 'never' is selected
              cp5.get(CheckBox.class, "securitysettings").deactivate(0);
              cp5.get(CheckBox.class, "securitysettings").deactivate(2);
              cp5.get(CheckBox.class, "securitysettings").deactivate(4);
            }
          } else if (securitySettingsChanged == false & profileSelected != 0) { //if security settings not yet manually changed and a profile has been selected
            if (predictionResult_SecurityNever.equals("Nee")) { //only if 'never' is predicted as 'no' the others can be activated
              if (predictionResult_SecurityMovement.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.47 - 5, 11, 11);
                cp5.get(CheckBox.class, "securitysettings").activate(0);
              }
              if (predictionResult_SecurityAlways.equals("Ja")) {
                ellipse(width*0.59 + 5, height*0.47 - 5, 11, 11);
                cp5.get(CheckBox.class, "securitysettings").activate(1);

                //activate all others (except 'never') if 'always' is predicted as 'Yes'
                cp5.get(CheckBox.class, "securitysettings").activate(0);
                cp5.get(CheckBox.class, "securitysettings").activate(2);
                cp5.get(CheckBox.class, "securitysettings").activate(4);
              }
              if (predictionResult_SecurityVacated.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.495 - 5, 11, 11);
                cp5.get(CheckBox.class, "securitysettings").activate(2);
              }
              if (predictionResult_SecuritySleeping.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.52 - 5, 11, 11);
                cp5.get(CheckBox.class, "securitysettings").activate(4);
              }
            } else if (predictionResult_SecurityNever.equals("Ja")) {
              ellipse(width*0.59 + 5, height*0.495 - 5, 11, 11);
              cp5.get(CheckBox.class, "securitysettings").activate(3);
            }
          }

          fill(255);

          //notifications
          text("...someone rings the doorbell.", width*0.41, height*0.585);
          text("...the security alarm goes off.", width*0.41, height*0.61);
          text("...motion is detected and you're away.", width*0.41, height*0.635);
          text("...you leave for work the traffic and weather conditions.", width*0.60, height*0.585);
          text("...it's the end of the month, the energy usage analysis.", width*0.60, height*0.61);
          text("Never, none of such notifications are ever sent.", width*0.60, height*0.635);

          fill(200, 0, 0, 150);
          ellipse(width*0.40 + 5, height*0.585 - 5, 10, 10);
          ellipse(width*0.40 + 5, height*0.61 - 5, 10, 10);
          ellipse(width*0.40 + 5, height*0.635 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.585 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.61 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.635 - 5, 10, 10);

          fill(0, 200, 0);
          if (notificationsChanged == true) { //if security settings manually changed
            if (cp5.get(CheckBox.class, "notifications").getState(5) != true) { //if user has not selected to be never notified
              if (cp5.get(CheckBox.class, "notifications").getState(0) == true) { //doorbell
                ellipse(width*0.40 + 5, height*0.585 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "notifications").getState(1) == true) { //traffic
                ellipse(width*0.59 + 5, height*0.585 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "notifications").getState(2) == true) { //alarm
                ellipse(width*0.40 + 5, height*0.61 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "notifications").getState(3) == true) { //energy
                ellipse(width*0.59 + 5, height*0.61 - 5, 11, 11);
              }
              if (cp5.get(CheckBox.class, "notifications").getState(4) == true) { //movement
                ellipse(width*0.40 + 5, height*0.635 - 5, 11, 11);
              }
            } else if (cp5.get(CheckBox.class, "notifications").getState(5) == true) { //never
              ellipse(width*0.59 + 5, height*0.635 - 5, 11, 11);

              //deactivate all others if 'never' is selected
              cp5.get(CheckBox.class, "notifications").deactivate(0);
              cp5.get(CheckBox.class, "notifications").deactivate(1);
              cp5.get(CheckBox.class, "notifications").deactivate(2);
              cp5.get(CheckBox.class, "notifications").deactivate(3);
              cp5.get(CheckBox.class, "notifications").deactivate(4);
            }
          } else if (notificationsChanged == false & profileSelected != 0) { //if notification settings not yet manually changed and a profile has been selected
            if (predictionResult_NotificationsNever.equals("Nee")) { //only if 'never' is predicted as 'no' the others can be activated
              if (predictionResult_NotificationsDoorbell.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.585 - 5, 11, 11);
                cp5.get(CheckBox.class, "notifications").activate(0);
              }
              if (predictionResult_NotificationsTraffic.equals("Ja")) {
                ellipse(width*0.59 + 5, height*0.585 - 5, 11, 11);
                cp5.get(CheckBox.class, "notifications").activate(1);
              }
              if (predictionResult_NotificationsAlarm.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.61 - 5, 11, 11);
                cp5.get(CheckBox.class, "notifications").activate(2);
              }
              if (predictionResult_NotificationsEnergy.equals("Ja")) {
                ellipse(width*0.59 + 5, height*0.61 - 5, 11, 11);
                cp5.get(CheckBox.class, "notifications").activate(3);
              }
              if (predictionResult_NotificationsMovement.equals("Ja")) {
                ellipse(width*0.40 + 5, height*0.635 - 5, 11, 11);
                cp5.get(CheckBox.class, "notifications").activate(4);
              }
            } else if (predictionResult_NotificationsNever.equals("Ja")) {
              ellipse(width*0.59 + 5, height*0.635 - 5, 11, 11);
              cp5.get(CheckBox.class, "notifications").activate(5);
            }
          }

          fill(255);

          //programming
          text("Yourself", width*0.41, height*0.70);
          text("Another occupant", width*0.41, height*0.725);
          text("Your partner", width*0.60, height*0.70);
          text("A company", width*0.60, height*0.725);

          fill(200, 0, 0, 150);
          ellipse(width*0.40 + 5, height*0.70 - 5, 10, 10);
          ellipse(width*0.40 + 5, height*0.725 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.70 - 5, 10, 10);
          ellipse(width*0.59 + 5, height*0.725 - 5, 10, 10);

          fill(0, 200, 0);
          if (programmingChanged == true) { //if programming settings manually changed
            if (cp5.get(CheckBox.class, "programming").getState(0) == true) { //myself
              ellipse(width*0.40 + 5, height*0.70 - 5, 11, 11);
            }
            if (cp5.get(CheckBox.class, "programming").getState(1) == true) { //partner
              ellipse(width*0.59 + 5, height*0.70 - 5, 11, 11);
            }
            if (cp5.get(CheckBox.class, "programming").getState(2) == true) { //occupant
              ellipse(width*0.40 + 5, height*0.725 - 5, 11, 11);
            }
            if (cp5.get(CheckBox.class, "programming").getState(3) == true) { //company
              ellipse(width*0.59 + 5, height*0.725 - 5, 11, 11);
            }
          } else if (programmingChanged == false & profileSelected != 0) { //if programming settings not yet manually changed and a profile has been selected
            if (predictionResult_ProgrammingMyself.equals("Ja")) {
              ellipse(width*0.40 + 5, height*0.70 - 5, 11, 11);
              cp5.get(CheckBox.class, "programming").activate(0);
            }
            if (predictionResult_ProgrammingPartner.equals("Ja")) {
              ellipse(width*0.59 + 5, height*0.70 - 5, 11, 11);
              cp5.get(CheckBox.class, "programming").activate(1);
            }
            if (predictionResult_ProgrammingOccupant.equals("Ja")) {
              ellipse(width*0.40 + 5, height*0.725 - 5, 11, 11);
              cp5.get(CheckBox.class, "programming").activate(2);
            }
            if (predictionResult_ProgrammingCompany.equals("Ja")) {
              ellipse(width*0.59 + 5, height*0.725 - 5, 11, 11);
              cp5.get(CheckBox.class, "programming").activate(3);
            }
          }

          fill(255);

          confirmPreferences.hide();
          changeLighting.show();
          changeClimate.show();
          changeSecuritySettings.show();
          changeNotifications.show();
          changeProgramming.show();
          lighting.hide();
          climate.hide();
          securitysettings.hide();
          notifications.hide();
          programming.hide();
        } else if (editPreferences == 1) {

          if (editLighting == 1) {
            fill(255);
            textSize(18);
            textAlign(CENTER);
            text("Editing your preferences for Smart Lighting", width*0.645, height*0.24);

            textSize(16);
            textAlign(LEFT);
            text("What is Smart Lighting?", width*0.4, height*0.28);
            textSize(14);
            text("With Smart Lighting you can automate your lights and control them remotely. Benefits can include", width*0.4, height*0.305);
            text("easier and more control of your lights and more energy efficiency through time schedules and motion sensors.", width*0.4, height*0.33);

            textSize(16);
            text("Your smart lights will automatically turn off...", width*0.40, height*0.38);
            textSize(14);
            text("...with sufficient sunlight.", width*0.42, height*0.415);
            text("...at 15 minutes no movement.", width*0.59 + 50, height*0.415);
            text("...with no one at home.", width*0.42, height*0.455);
            text("Never, no automatic changes.", width*0.59 + 50, height*0.455);
            text("...when it is bedtime.", width*0.42, height*0.495);

            lighting.show();
          } else if (editClimate == 1) {
            fill(255);
            textSize(18);
            textAlign(CENTER);
            text("Editing your preferences for Smart Climate Control", width*0.645, height*0.24);

            textSize(16);
            textAlign(LEFT);
            text("What is Smart Climate Control?", width*0.4, height*0.28);
            textSize(14);
            text("Smart Climate Control can improve the climate in one's home through controlling the heating, ventilation,", width*0.4, height*0.305);
            text("air conditioning and blinds. Benefits can include more comfort, lower energy costs and a more sustainable home.", width*0.4, height*0.33);

            textSize(16);
            text("The temperature in the house is brought to a warmer level...", width*0.40, height*0.38);
            textSize(14);
            text("...when someone is home.", width*0.42, height*0.415);
            text("...at all times.", width*0.59 + 50, height*0.415);
            text("...when someone is home and awake.", width*0.42, height*0.455);
            text("Never, no automatic changes.", width*0.59 + 50, height*0.455);

            climate.show();
          } else if (editSecuritySettings == 1) {
            fill(255);
            textSize(18);
            textAlign(CENTER);
            text("Editing your preferences for Smart Home Security", width*0.645, height*0.24);

            textSize(16);
            textAlign(LEFT);
            text("What is Smart Home Security?", width*0.4, height*0.28);
            textSize(14);
            text("Smart Home Security can connect motion sensors and alarms to devices like door locks, cameras or lights. ", width*0.4, height*0.305);
            text("Benefits can include a better overview of what is happening in the house and a safer environment for the occupants.", width*0.4, height*0.33);

            textSize(16);
            text("Your security cameras are turned on...", width*0.40, height*0.38);
            textSize(14);
            text("...when movement is detected.", width*0.42, height*0.415);
            text("...at all times.", width*0.59 + 50, height*0.415);
            text("...when everyone has left the house.", width*0.42, height*0.455);
            text("Never, no cameras are installed.", width*0.59 + 50, height*0.455);
            text("...when everyone is sleeping.", width*0.42, height*0.495);

            securitysettings.show();
          } else if (editNotifications == 1) {
            fill(255);
            textSize(18);
            textAlign(CENTER);
            text("Editing your preferences for Smart Home Notifications", width*0.645, height*0.24);

            textSize(16);
            textAlign(LEFT);
            text("What are Smart Home Notifications?", width*0.4, height*0.28);
            textSize(14);
            text("A smart home can be used for a vast amount of purposes. You can choose to be notified on changes and reports of", width*0.4, height*0.305);
            text("your smart home devices. This way you have better overview of how your devices are functioning.", width*0.4, height*0.33);

            textSize(16);
            text("A notification is sent to your phone when...", width*0.40, height*0.38);
            textSize(14);
            text("...someone rings the doorbell.", width*0.42, height*0.415);
            text("...you leave for work the traffic and weather conditions.", width*0.59 + 50, height*0.415);
            text("...the security alarm goes off.", width*0.42, height*0.455);
            text("...it's the end of the month, the energy usage analysis.", width*0.59 + 50, height*0.455);
            text("...motion is detected and you're away.", width*0.42, height*0.495);
            text("Never, none of such notifications are ever sent.", width*0.59 + 50, height*0.495);

            notifications.show();
          } else if (editProgramming == 1) {
            fill(255);
            textSize(18);
            textAlign(CENTER);
            text("Editing your preferences for Smart Home Programming", width*0.645, height*0.24);

            textSize(16);
            textAlign(LEFT);
            text("What is Smart Home Programming?", width*0.4, height*0.28);
            textSize(14);
            text("It is possible to make changes to your smart home devices after installment. You can think of:", width*0.4, height*0.305);
            text("Changing time schedules, adding interactivity or making upgrades/repairs to hard- and software.", width*0.4, height*0.33);

            textSize(16);
            text("Who would you like to be responsible for programming and repairing devices for your smart home?", width*0.40, height*0.38);
            textSize(14);
            text("Yourself", width*0.42, height*0.415);
            text("Your partner", width*0.59 + 50, height*0.415);
            text("Another occupant", width*0.42, height*0.455);
            text("A company", width*0.59 + 50, height*0.455);

            programming.show();
          }

          confirmPreferences.show();
          changeLighting.hide();
          changeClimate.hide();
          changeSecuritySettings.hide();
          changeNotifications.hide();
          changeProgramming.hide();
        }



        //show all preference elicitation UI interactions
        changeHousehold.show();
        clear_.hide();
        closeHelp.hide();
        example.hide();
        help.show();
        submit.show();
        continue2.hide();
      }
    }
    // hide all login screen interactions
    occupantgender.hide();
    householdtype.hide();
    housetype.hide();
    closeEduInfo.hide();
    save_.hide();
    discard.hide();
    occupantage.hide();
    occupanteducation.hide();
    occupanttech.hide();
    occupanthome.hide();
    skip1.hide();
    toStep1.hide();
    continue_.hide();
    skip3.hide();
    back1.hide();
    householdconfirm.hide();
    login.hide();
    skip2.hide();
    edit1.hide();
    edit2.hide();
    edit3.hide();
    edit4.hide();
    edit5.hide();
    edit6.hide();
    add3.hide();
    add4.hide();
    add5.hide();
    add6.hide();
    confirm1.hide();
    confirm2.hide();
    confirm3.hide();
    confirm4.hide();
    confirm5.hide();
    confirm6.hide();
    remove3.hide();
    remove4.hide();
    remove5.hide();
    remove6.hide();
    removeconfirm.hide();
    back4.hide();
    changeIntentions.hide();
    keepIntentions.hide();

    //hide all profile selection interactions
    backToCharacteristics.hide();
    giveprofiles.hide();
    profileselect.hide();
    scratch.hide();
    scratchconfirm.hide();
    back2.hide();
    changePreferences.hide();
    keepPreferences.hide();

    userID.hide();
    start_.hide();

    break;

  case 3 : //FINAL SCREEN ---------------------------------------------------------------------------------------------------------------------------------------------------------------

    textSize(26);
    textAlign(CENTER);
    fill(255);
    rect(width/5, height*0.03, width*0.6, height*0.06, 20);
    fill(0);
    textSize(26);
    text("Final overview of your Smart Home Profile", width/2, height*0.07);


    fill(#6a92b7);
    rect(width/5, height*0.12, width*0.6, height*0.12, 20);
    fill(255);
    rect(width/5, height*0.12, width*0.6, height*0.04, 20);
    fill(0);
    textSize(20);
    text("Intentions: Likeliness of your household intending to use the smart home for...", width/2, height*0.15);
    fill(255);
    textAlign(LEFT);
    textSize(16);
    text("Sustainability:", width*0.23, height*0.19);
    text(sustainabilityValue, width*0.30, height*0.19);
    text("Security: ", width*0.23, height*0.22);
    text(securityValue, width*0.30, height*0.22);
    text("Convenience:", width*0.43, height*0.19);
    text(convenienceValue, width*0.50, height*0.19);
    text("Privacy:", width*0.43, height*0.22);
    text(privacyValue, width*0.50, height*0.22);
    text("Personalization:", width*0.62, height*0.19);
    text(personalizationValue, width*0.70, height*0.19);
    text("Control:", width*0.62, height*0.22);
    text(controlValue, width*0.70, height*0.22);

    fill(#6a92b7);
    rect(width/5, height*0.27, width*0.6, height*0.12, 20);
    fill(255);
    rect(width/5, height*0.27, width*0.6, height*0.04, 20);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("Smart Lighting: Your smart lights will turn automatically turn off...", width/2, height*0.30);
    textSize(16);
    fill(255);
    textAlign(LEFT);
    text("...with sufficient sunlight.", width*0.24, height*0.34);
    text("...with no one at home.", width*0.24, height*0.37);
    text("...at 15 minutes no movement.", width*0.44, height*0.34);
    text("...when it is bedtime.", width*0.44, height*0.37);
    text("Never, no automatic changes.", width*0.63, height*0.34);

    fill(200, 0, 0, 150);
    ellipse(width*0.23 + 5, height*0.34 - 5, 10, 10);
    ellipse(width*0.23 + 5, height*0.37 - 5, 10, 10);
    ellipse(width*0.43 + 5, height*0.34 - 5, 10, 10);
    ellipse(width*0.43 + 5, height*0.37 - 5, 10, 10);
    ellipse(width*0.62 + 5, height*0.34 - 5, 10, 10);

    fill(0, 200, 0);
    if (cp5.get(CheckBox.class, "lighting").getState(0) == true) { //sunlight
      ellipse(width*0.23 + 5, height*0.34 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "lighting").getState(1) == true) { //vacated
      ellipse(width*0.23 + 5, height*0.37 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "lighting").getState(2) == true) { //movement
      ellipse(width*0.43 + 5, height*0.34 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "lighting").getState(3) == true) { //never
      ellipse(width*0.59 + 5, height*0.34 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "lighting").getState(4) == true) { //bedtime
      ellipse(width*0.43 + 5, height*0.37 - 5, 11, 11);
    }

    fill(#6a92b7);
    rect(width/5, height*0.42, width*0.6, height*0.12, 20);
    fill(255);
    rect(width/5, height*0.42, width*0.6, height*0.04, 20);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("Climate Control: The temperature in the house is brought to a warmer level...", width/2, height*0.45);
    textSize(16);
    fill(255);
    textAlign(LEFT);
    text("...when someone is home.", width*0.24, height*0.49);
    text("...when someone is home and awake.", width*0.24, height*0.52);
    text("...at all times.", width*0.44, height*0.49);
    text("Never, no automatic changes.", width*0.44, height*0.52);

    fill(200, 0, 0, 150);
    ellipse(width*0.23 + 5, height*0.49 - 5, 10, 10);
    ellipse(width*0.23 + 5, height*0.52 - 5, 10, 10);
    ellipse(width*0.43 + 5, height*0.49 - 5, 10, 10);
    ellipse(width*0.43 + 5, height*0.52 - 5, 10, 10);

    fill(0, 200, 0);
    if (cp5.get(CheckBox.class, "climate").getState(0) == true) { //home
      ellipse(width*0.23 + 5, height*0.49 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "climate").getState(1) == true) { //always
      ellipse(width*0.23 + 5, height*0.52 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "climate").getState(2) == true) { //awake
      ellipse(width*0.43 + 5, height*0.49 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "climate").getState(3) == true) { //never
      ellipse(width*0.43 + 5, height*0.52 - 5, 11, 11);
    }

    fill(#6a92b7);
    rect(width/5, height*0.57, width*0.6, height*0.12, 20);
    fill(255);
    rect(width/5, height*0.57, width*0.6, height*0.04, 20);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("Security: Your security cameras are turned on...", width/2, height*0.60);
    textSize(16);
    fill(255);
    textAlign(LEFT);
    text("...when movement is detected.", width*0.24, height*0.64);
    text("...when everyone has left the house.", width*0.24, height*0.67);
    text("...when everyone is sleeping.", width*0.44, height*0.64);
    text("...at all times.", width*0.44, height*0.67);
    text("Never, no cameras are installed.", width*0.63, height*0.64);

    fill(200, 0, 0, 150);
    ellipse(width*0.23 + 5, height*0.64 - 5, 10, 10);
    ellipse(width*0.23 + 5, height*0.67 - 5, 10, 10);
    ellipse(width*0.43 + 5, height*0.64 - 5, 10, 10);
    ellipse(width*0.43 + 5, height*0.67 - 5, 10, 10);
    ellipse(width*0.62 + 5, height*0.64 - 5, 10, 10);

    fill(0, 200, 0);
    if (cp5.get(CheckBox.class, "securitysettings").getState(0) == true) { //movement
      ellipse(width*0.23 + 5, height*0.64 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "securitysettings").getState(1) == true) { //always
      ellipse(width*0.43 + 5, height*0.67 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "securitysettings").getState(2) == true) { //vacated
      ellipse(width*0.23 + 5, height*0.64 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "securitysettings").getState(3) == true) { //never
      ellipse(width*0.62 + 5, height*0.67 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "securitysettings").getState(4) == true) { //sleeping
      ellipse(width*0.43 + 5, height*0.64 - 5, 11, 11);
    }

    fill(#6a92b7);
    rect(width/5, height*0.72, width*0.6, height*0.15, 20);
    fill(255);
    rect(width/5, height*0.72, width*0.6, height*0.04, 20);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("Phone Notifications: A notification is sent to your phone when...", width*0.5, height*0.75);
    textSize(16);
    fill(255);
    textAlign(LEFT);
    text("...someone rings the doorbell.", width*0.24, height*0.79);
    text("...the security alarm goes off.", width*0.24, height*0.82);
    text("...motion is detected and you're away.", width*0.24, height*0.85);
    text("...you leave for work the traffic and weather conditions.", width*0.50, height*0.79);
    text("...it's the end of the month, the energy usage analysis.", width*0.50, height*0.82);
    text("Never, none of such notifications are ever sent.", width*0.50, height*0.85);

    fill(200, 0, 0, 150);
    ellipse(width*0.23 + 5, height*0.79 - 5, 10, 10);
    ellipse(width*0.23 + 5, height*0.82 - 5, 10, 10);
    ellipse(width*0.23 + 5, height*0.85 - 5, 10, 10);
    ellipse(width*0.49 + 5, height*0.79 - 5, 10, 10);
    ellipse(width*0.49 + 5, height*0.82 - 5, 10, 10);
    ellipse(width*0.49 + 5, height*0.85 - 5, 10, 10);

    fill(0, 200, 0);
    if (cp5.get(CheckBox.class, "notifications").getState(0) == true) { //doorbell
      ellipse(width*0.23 + 5, height*0.79 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "notifications").getState(1) == true) { //traffic
      ellipse(width*0.49 + 5, height*0.79 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "notifications").getState(2) == true) { //alarm
      ellipse(width*0.23 + 5, height*0.82 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "notifications").getState(3) == true) { //energy
      ellipse(width*0.49 + 5, height*0.82 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "notifications").getState(4) == true) { //movement
      ellipse(width*0.23 + 5, height*0.85 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "notifications").getState(5) == true) { //never
      ellipse(width*0.49 + 5, height*0.85 - 5, 11, 11);
    }

    fill(#6a92b7);
    rect(width/5, height*0.90, width*0.6, height*0.09, 20);
    fill(255);
    rect(width/5, height*0.90, width*0.6, height*0.04, 20);
    fill(0);
    textSize(20);
    textAlign(CENTER);
    text("Programming: Who is to be responsible for programming and repairing devices?", width*0.5, height*0.93);
    textSize(16);
    fill(255);
    textAlign(LEFT);
    text("Yourself", width*0.24, height*0.97);
    text("Your partner", width*0.37, height*0.97);
    text("Another occupant", width*0.50, height*0.97);
    text("A company", width*0.63, height*0.97);

    fill(200, 0, 0, 150);
    ellipse(width*0.23 + 5, height*0.97 - 5, 10, 10);
    ellipse(width*0.36 + 5, height*0.97 - 5, 10, 10);
    ellipse(width*0.49 + 5, height*0.97 - 5, 10, 10);
    ellipse(width*0.62 + 5, height*0.97 - 5, 10, 10);

    fill(0, 200, 0);
    if (cp5.get(CheckBox.class, "programming").getState(0) == true) { //myself
      ellipse(width*0.23 + 5, height*0.97 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "programming").getState(1) == true) { //partner
      ellipse(width*0.36 + 5, height*0.97 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "programming").getState(2) == true) { //occupant
      ellipse(width*0.49 + 5, height*0.97 - 5, 11, 11);
    }
    if (cp5.get(CheckBox.class, "programming").getState(3) == true) { //company
      ellipse(width*0.62 + 5, height*0.97 - 5, 11, 11);
    }

    userID.hide();
    start_.hide();

    //hide all household characteristics interactions
    occupantgender.hide();
    householdtype.hide();
    housetype.hide();
    closeEduInfo.hide();
    save_.hide();
    discard.hide();
    occupantage.hide();
    occupanteducation.hide();
    occupanttech.hide();
    occupanthome.hide();
    skip1.hide();
    toStep1.hide();
    continue_.hide();
    skip3.hide();
    back1.hide();
    householdconfirm.hide();
    login.hide();
    skip2.hide();
    edit1.hide();
    edit2.hide();
    edit3.hide();
    edit4.hide();
    edit5.hide();
    edit6.hide();
    add3.hide();
    add4.hide();
    add5.hide();
    add6.hide();
    confirm1.hide();
    confirm2.hide();
    confirm3.hide();
    confirm4.hide();
    confirm5.hide();
    confirm6.hide();
    remove3.hide();
    remove4.hide();
    remove5.hide();
    remove6.hide();
    removeconfirm.hide();
    back4.hide();
    changeIntentions.hide();
    keepIntentions.hide();

    //hide all profile selection interactions
    backToCharacteristics.hide();
    giveprofiles.hide();
    profileselect.hide();
    scratch.hide();
    scratchconfirm.hide();
    back2.hide();
    changePreferences.hide();
    keepPreferences.hide();

    //hide all preference elicitation UI interactions
    continue2.hide();
    changeHousehold.hide();
    changeSustainability.hide();
    changeSecurity.hide();
    changeConvenience.hide();
    changePrivacy.hide();
    changePersonalization.hide();
    changeControl.hide();
    confirmIntentions.hide();
    sustainability.hide();
    security.hide();
    convenience.hide();
    privacy.hide();
    personalization.hide();
    control.hide();
    changeProfile.hide();
    confirmPreferences.hide();
    changeLighting.hide();
    changeClimate.hide();
    changeSecuritySettings.hide();
    changeNotifications.hide();
    changeProgramming.hide();
    lighting.hide();
    climate.hide();
    securitysettings.hide();
    notifications.hide();
    programming.hide();
    clear_.hide();
    closeHelp.hide();
    example.hide();
    help.hide();
    submit.hide();

    break;
  }


  if (attemptexit == 1) {
    fill(0);
    rect(width/2 - 310, height*0.03, 620, 150);
    textSize(16);
    fill(255);
    textAlign(CENTER);
    text("You will lose all your progress by exiting the program.", width/2, height*0.07);
    text("Are you sure you wish to exit?", width/2, height*0.09);

    exitconfirm.show();
    back3.show();
  } else if (attemptexit == 0) {
    exitconfirm.hide();
    back3.hide();
  }
}


void mousePressed() {
  if (state == 1) {
    if (attemptscratch != 1) {
      if (mouseX > width*0.2 && mouseX < width*0.38 && mouseY > height*0.64 && mouseY < height*0.90) {
        if (mouseButton == LEFT) {
          profileSelected = 1;
          profile = "A";
        }
      } else if (mouseX > width*0.41 && mouseX < width*0.59 && mouseY > height*0.64 && mouseY < height*0.90) {
        if (mouseButton == LEFT) {
          profileSelected = 2;
          profile = "B";
        }
      } else if (mouseX > width*0.62 && mouseX < width*0.80 && mouseY > height*0.64 && mouseY < height*0.90) {
        if (mouseButton == LEFT) {
          profileSelected = 3;
          profile = "C";
        }
      }
    }
  } else if (state == 0) {
    if (occupantedit != 0 & confirmedit == 0 & occupantremove == 0 & confirmedit == 0 & attemptskip == 0) {
      if (mouseX > width*0.545 && mouseX < width*0.545 + 25 && mouseY > height*0.91 && mouseY < height*0.91 + 25) {
        displayEduInfo = 1;
      }
    }
  }
}
