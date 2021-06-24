// ******************************************************
// Author: T.H.M. Pilaet
// Date: June. 04, 2021
// Description: Code for interface for SmartFitted. A program that can recommend smart home settings based on the characteristics of the user's household.
//              The SmartFitted app is part of the Design Research Project of Thomas Pilaet at the faculty of Industrial Design at TU/e.
//              
//              The code was built with help from codes written by:
//              - I-Tang Chiang (example code for TU/e course)
//              - Jun Hu (example code for TU/e course)
//              - Rick van Schie (code for TU/e course project)
//
//              Images used are from flaticon.com
//
// ******************************************************

import java.util.Map;
import controlP5.*;
import nl.tue.id.datafoundry.*;

// library for Date functions
import java.util.Calendar;

//

//// ------------------------------------------------------------------------
//// settings for DataFoundry library
////
//// ... :: CHANGE API TOKENS AND IDS YOURSELF! :: ...
////
//String host = "data.id.tue.nl";
//String entity_api_token = "..............";
//long entity_id = ............;
//// ------------------------------------------------------------------------

//// data foundry connection
//DataFoundry df = new DataFoundry(host);
//// access to two datasets: iotDS and entityDS
//DFDataset entityDS = df.dataset(entity_id, entity_api_token);

//String UserID;

int attemptskip = 0;
int attemptexit = 0;

// household attributes
int hType = 0; //household type
int hHouse = 0; //type of house
int ExplanationStep1 = 0;
int showattributes = 0;
int step1Shown = 0;
int step2Shown = 0;
int step3Shown = 0;
String HouseholdType = "Alleenstaand";
String HouseType = "2-onder-1-kapwoning";

// occupant attributes
int showoccupants = 0;
String oGender = "...";
String oAge = "...";
String oEdu = "...";
String oTech = "...";
String oHome = "...";
int occupantedit = 0;
int occupantremove = 0;
int confirmedit = 0;
int TotalOccupants;
int displayEduInfo = 0;

int o1print = 0;
String o1Gender = "...";
String o1Age = "...";
String o1Edu = "...";
String o1Tech = "...";
String o1Home = "...";
String UserGender;
int UserAge;
int UserEdu;
int UserTech;
int UserHome;

String OthersGenderAVG;
int MenPresent;
int WomenPresent;
int OtherPresent;
int OthersAgeAVG;
int OthersEduAVG;
int OthersTechAVG;
int OthersHomeAVG;

int o2print = 0;
String o2Gender = "...";
String o2Age = "...";
String o2Edu = "...";
String o2Tech = "...";
String o2Home = "...";
int O2_Gender = 0;
int O2_Age = 0;
int O2_Edu = 0;
int O2_Tech = 0;
int O2_Home = 0;

int o3added = 0;
int o3print = 0;
String o3Gender = "...";
String o3Age = "...";
String o3Edu = "...";
String o3Tech = "...";
String o3Home = "...";
int O3_Gender = 0;
int O3_Age = 0;
int O3_Edu = 0;
int O3_Tech = 0;
int O3_Home = 0;

int o4added = 0;
int o4print = 0;
String o4Gender = "...";
String o4Age = "...";
String o4Edu = "...";
String o4Tech = "...";
String o4Home = "...";
int O4_Gender = 0;
int O4_Age = 0;
int O4_Edu = 0;
int O4_Tech = 0;
int O4_Home = 0;

int o5added = 0;
int o5print = 0;
String o5Gender = "...";
String o5Age = "...";
String o5Edu = "...";
String o5Tech = "...";
String o5Home = "...";
int O5_Gender = 0;
int O5_Age = 0;
int O5_Edu = 0;
int O5_Tech = 0;
int O5_Home = 0;

int o6added = 0;
int o6print = 0;
String o6Gender = "...";
String o6Age = "...";
String o6Edu = "...";
String o6Tech = "...";
String o6Home = "...";
int O6_Gender = 0;
int O6_Age = 0;
int O6_Edu = 0;
int O6_Tech = 0;
int O6_Home = 0;

int CharacteristicsDone = 0;
boolean popupIntentions = false;
boolean popupPreferences = false;
boolean updateIntentions = true;
boolean updatePreferences = true;
String predictionResult_Sustainability = "Neutral";
String predictionResult_Security = "Neutral";
String predictionResult_Convenience = "Neutral";
String predictionResult_Privacy = "Neutral";
String predictionResult_Personalization = "Neutral";
String predictionResult_Control = "Neutral";
boolean calculateAlternates = false;
int AlternatesCalculated = 0;
String alternateB_Sustainability = "Not calculated";
String alternateB_Security = "Not calculated";
String alternateB_Convenience = "Not calculated";
String alternateB_Privacy = "Not calculated";
String alternateB_Personalization = "Not calculated";
String alternateB_Control = "Not calculated";
String alternateC_Sustainability = "Not calculated";
String alternateC_Security = "Not calculated";
String alternateC_Convenience = "Not calculated";
String alternateC_Privacy = "Not calculated";
String alternateC_Personalization = "Not calculated";
String alternateC_Control = "Not calculated";

boolean showProfiles = false;
int profileSelected = 0;
String profile = "None";
int attemptscratch = 0;

int finalstep = 0;
int allClear = 1;

int editIntentions = 0;
int editSustainability = 0;
int editSecurity = 0;
int editConvenience = 0;
int editPrivacy = 0;
int editPersonalization = 0;
int editControl = 0;
boolean sustainabilityChanged = false;
boolean securityChanged = false;
boolean convenienceChanged = false;
boolean privacyChanged = false;
boolean personalizationChanged = false;
boolean controlChanged = false;
String sustainabilityValue = "Neutral";
String securityValue = "Neutral";
String convenienceValue = "Neutral";
String privacyValue = "Neutral";
String personalizationValue = "Neutral";
String controlValue = "Neutral";
int SustainabilityScore = 0;
int SecurityScore = 0;
int ConvenienceScore = 0;
int PrivacyScore = 0;
int PersonalizationScore = 0;
int ControlScore = 0;

String predictionResult_LightingSunlight = "Not calculated";
String predictionResult_LightingMovement = "Not calculated";
String predictionResult_LightingVacated = "Not calculated";
String predictionResult_LightingBedtime = "Not calculated";
String predictionResult_LightingNever = "Not calculated";
String predictionResult_ClimateHome = "Not calculated";
String predictionResult_ClimateAwake = "Not calculated";
String predictionResult_ClimateNever = "Not calculated";
String predictionResult_SecurityAlways = "Not calculated";
String predictionResult_SecurityMovement = "Not calculated";
String predictionResult_SecurityVacated = "Not calculated";
String predictionResult_SecuritySleeping = "Not calculated";
String predictionResult_SecurityNever = "Not calculated";
String predictionResult_NotificationsMovement = "Not calculated";
String predictionResult_NotificationsAlarm = "Not calculated";
String predictionResult_NotificationsDoorbell = "Not calculated";
String predictionResult_NotificationsTraffic = "Not calculated";
String predictionResult_NotificationsEnergy = "Not calculated";
String predictionResult_NotificationsNever = "Not calculated";
String predictionResult_ProgrammingMyself = "Not calculated";
String predictionResult_ProgrammingPartner = "Not calculated";
String predictionResult_ProgrammingOccupant = "Not calculated";
String predictionResult_ProgrammingCompany = "Not calculated";

int editPreferences = 0;
int editLighting = 0;
int editClimate = 0;
int editSecuritySettings = 0;
int editNotifications = 0;
int editProgramming = 0;
boolean lightingChanged = false;
boolean climateChanged = false;
boolean securitySettingsChanged = false;
boolean notificationsChanged = false;
boolean programmingChanged = false;

// global variables for loading and reading CSV file
Table surveyTable;

int state; // used for showing different windows || 0 = login, 1 = list, 2 = details

// images (from flaticon.com)
PImage imgHouse, imgProfile, imgSettings, imgInfo;

// UI elements
ControlP5 cp5;
controlP5.Button start_, //button for login screen 
  page1, page2, page3, page4, login, continue_, toStep1, skip1, skip2, skip3, back1, quit, back3, exitconfirm, closeEduInfo, householdconfirm, changeIntentions, keepIntentions, //buttons for household attributes
  save_, discard, edit1, edit2, edit3, edit4, edit5, edit6, confirm1, confirm2, confirm3, confirm4, confirm5, confirm6, remove3, remove4, remove5, remove6, removeconfirm, back4, add3, add4, add5, add6, //buttons for occupant attributes
  backToCharacteristics, giveprofiles, profileselect, scratch, back2, scratchconfirm, continue2, changePreferences, keepPreferences, //buttons for profile selection
  clear_, help, closeHelp, changeHousehold, changeSustainability, changeSecurity, changeConvenience, changePrivacy, changePersonalization, changeControl, confirmIntentions, changeProfile, changeLighting, changeClimate, changeSecuritySettings, changeNotifications, changeProgramming, confirmPreferences, submit; //buttons for finalisation/third step

RadioButton occupantgender, householdtype, housetype;
Slider occupantage, occupanteducation, occupanttech, occupanthome, sustainability, security, convenience, privacy, personalization, control, example;
CheckBox lighting, climate, securitysettings, notifications, programming;
Textfield userID;

void setup() {

  initML();

  // canvas size and styling
  //fullScreen();
  size(1600, 900); //desktop size
  background(0, 45, 90);
  frameRate(20);
  noStroke();

  state = 0; // start on login window
  initControlP5();
}
void draw() {
  background(0, 45, 90);
  checkState(state);
}

// button handlers -------------------------------------------------------------------
public void quit() {
  attemptexit = 1;
}

public void back3() {
  attemptexit = 0;
}

public void exitconfirm() {
  exit(); //quit program
}

public void continue_() {
  showattributes = 1;
}

public void toStep1() {
  ExplanationStep1 = 1;
}

public void skip1() {
  state = 2; // deprecated skip button
}

public void skip2() {
  if (confirmedit == 0 & occupantremove == 0 & confirmedit == 0 & displayEduInfo == 0) {
    attemptskip = 1; // show pop-up
  }
}

public void skip3() {  
  state = 2; // skip to preference elicitation screen
  step1Shown = 1;
  step3Shown = 1;
  attemptskip = 0;
}

public void back1() {  
  attemptskip = 0; // close pop-up
}

public void householdtype(int a) { // check what household type was selected and show the occupants according to that
  o3added = 0;
  o4added = 0;
  o5added = 0;
  o6added = 0;
  occupantedit = 0;

  switch(a) {
  case 1:
    hType = 1;
    HouseholdType = "Samenwonend enkel met partner";
    TotalOccupants = 2;
    break;
  case 2:
    hType = 2;
    HouseholdType = "Samenwonend met partner en kind(eren)";
    TotalOccupants = 3;
    break;
  case 3:
    hType = 3;
    HouseholdType = "Samenwonend met huisgenoot/huisgenoten";
    TotalOccupants = 2;
    break;
  case 4:
    hType = 4;
    HouseholdType = "Alleenstaande ouder met kind(eren)";
    TotalOccupants = 2;
    break;
  case 5:
    hType = 5;
    HouseholdType = "Samenwonend enkel met partner"; //people that lived on their own were not included in the data mining process, therefore the recommendation system would not work if they were included here
    TotalOccupants = 1;
    //the predictions will not perform as needed if there are no other occupants, therefore the attributes of the other occupants are made the same as the user to make the system still perform as needed
    OthersGenderAVG = UserGender;
    OthersAgeAVG = UserAge;
    OthersEduAVG = UserEdu;
    OthersTechAVG = UserTech;
    OthersHomeAVG = UserHome;
    break;
  default:
    hType = 0;
    HouseholdType = "Samenwonend enkel met partner";
    OthersGenderAVG = UserGender;
    OthersAgeAVG = UserAge;
    OthersEduAVG = UserEdu;
    OthersTechAVG = UserTech;
    OthersHomeAVG = UserHome;
    break;
  }
}

public void housetype(int a) { // check what household income was selected

  switch(a) {
  case 1:
    hHouse = 1;
    HouseType = "Vrijstaande woning";
    break;
  case 2:
    hHouse = 2;
    HouseType = "Tussenwoning/hoekwoning";
    break;
  case 3:
    hHouse = 3;
    HouseType = "2-onder-1-kapwoning";
    break;
  case 4:
    hHouse = 4;
    HouseType = "Appartement";
    break;
  default:
    hHouse = 0;
    HouseType = "2-onder-1-kapwoning"; //most popular type of house in the Netherlands is taken as default
    break;
  }
}

public void householdconfirm() {
  showoccupants = 1;
}

public void save_() {  
  if (occupantedit == 1) {
    o1print = 1;
    occupantedit = confirmedit;
  } else if (occupantedit == 2) {
    o2print = 1;
    occupantedit = confirmedit;
  } else if (occupantedit == 3) {
    o3print = 1;
    occupantedit = confirmedit;
  } else if (occupantedit == 4) {
    o4print = 1;
    occupantedit = confirmedit;
  } else if (occupantedit == 5) {
    o5print = 1;
    occupantedit = confirmedit;
  } else if (occupantedit == 6) {
    o6print = 1;
    occupantedit = confirmedit;
  }

  confirmedit = 0;
  
  if (occupantedit == 1) {
    o1print = 0;
  } else if (occupantedit == 2) {
    o2print = 0;
  } else if (occupantedit == 3) {
    o3print = 0;
  } else if (occupantedit == 4) {
    o4print = 0;
  } else if (occupantedit == 5) {
    o5print = 0;
  } else if (occupantedit == 6) {
    o6print = 0;
  }     
} 

public void discard() {  
  confirmedit = 0;
}

public void closeEduInfo() {
  displayEduInfo = 0;
}

public void edit1() {
  if (occupantedit != 0) {
    confirmedit = 1;
    
    //close all other tabs
    attemptskip = 0;
    displayEduInfo = 0;
    occupantremove = 0;
  } else { 
    occupantedit = 1;
    o1print = 0;
  }
}

public void edit2() {
  if (occupantedit != 0) {
    confirmedit = 2;

    //close all other tabs
    attemptskip = 0;
    displayEduInfo = 0;
    occupantremove = 0;
  } else {
    occupantedit = 2;
    o2print = 0;
  }
}

public void edit3() {
  if (occupantedit != 0) {
    confirmedit = 3;

    //close all other tabs
    attemptskip = 0;
    displayEduInfo = 0;
    occupantremove = 0;
  } else {
    occupantedit = 3;
    o3print = 0;
  }
}

public void edit4() {
  if (occupantedit != 0) {
    confirmedit = 4;

    //close all other tabs
    attemptskip = 0;
    displayEduInfo = 0;
    occupantremove = 0;
  } else {
    occupantedit = 4;
    o4print = 0;
  }
}

public void edit5() {
  if (occupantedit != 0) {
    confirmedit = 5;

    //close all other tabs
    attemptskip = 0;
    displayEduInfo = 0;
    occupantremove = 0;
  } else {
    occupantedit = 5;
    o5print = 0;
  }
}

public void edit6() {
  if (occupantedit != 0) {
    confirmedit = 6;

    //close all other tabs
    attemptskip = 0;
    displayEduInfo = 0;
    occupantremove = 0;
  } else {
    occupantedit = 6;
    o6print = 0;
  }
}

public void occupantgender(int a) {

  if (occupantedit != 0) {
    switch(a) {
    case 1:
      oGender = "Woman";
      break;
    case 2:
      oGender = "Man";
      break;
    case 3:
      oGender = "Other";
      break;
    default:
      oGender = "...";
      break;
    }
  }
}

public void add3() {
  o3added = 1;
  o3print = 0;
  TotalOccupants = 3;
}

public void add4() {
  o4added = 1;
  o4print = 0;
  TotalOccupants = 4;
}

public void add5() {
  o5added = 1;
  o5print = 0;
  TotalOccupants = 5;
}

public void add6() {
  o6added = 1;
  o6print = 0;
  TotalOccupants = 6;
}

public void confirm1() {
  o1print = 1;
  occupantedit = 0;
}

public void confirm2() {
  o2print = 1;
  occupantedit = 0;
}

public void confirm3() {
  o3print = 1;
  occupantedit = 0;
}

public void confirm4() {
  o4print = 1;
  occupantedit = 0;
}

public void confirm5() {
  o5print = 1;
  occupantedit = 0;
}

public void confirm6() {
  o6print = 1;
  occupantedit = 0;
}

public void removeconfirm() {
  if (occupantremove == 3) {
    o3added = 0;
    o4added = 0;
    o5added = 0;
    o6added = 0;
    o3print = 3;
    occupantremove = 0;
    TotalOccupants = 2;

    //remove all values for Occupant 3
    o3Gender = "...";
    o3Age = "...";
    o3Edu = "...";
    o3Tech = "...";
    o3Home = "...";

    remove3.hide();
    confirm3.hide();

    if (occupantedit >  2) {
      occupantedit = 0;
    }
  }

  if (occupantremove == 4) {
    o4added = 0;
    o5added = 0;
    o6added = 0;
    o4print = 3;
    occupantremove = 0;
    TotalOccupants = 3;

    //remove all values for Occupant 4
    o4Gender = "...";
    o4Age = "...";
    o4Edu = "...";
    o4Tech = "...";
    o4Home = "...";

    remove4.hide();
    confirm4.hide();

    if (occupantedit >  3) {
      occupantedit = 0;
    }
  }

  if (occupantremove == 5) {
    o5added = 0;
    o6added = 0;
    o5print = 3;
    occupantremove = 0;
    TotalOccupants = 4;

    //remove all values for Occupant 5
    o5Gender = "...";
    o5Age = "...";
    o5Edu = "...";
    o5Tech = "...";
    o5Home = "...";

    remove5.hide();
    confirm5.hide();

    if (occupantedit >  4) {
      occupantedit = 0;
    }
  }

  if (occupantremove == 6) {
    o6added = 0;
    o6print = 3;
    occupantremove = 0;
    TotalOccupants = 5;

    //remove all values for Occupant 6
    o6Gender = "...";
    o6Age = "...";
    o6Edu = "...";
    o6Tech = "...";
    o6Home = "...";

    remove6.hide();
    confirm6.hide();

    if (occupantedit >  5) {
      occupantedit = 0;
    }
  }
}

public void back4() {
  occupantremove = 0;
}

public void remove3() {
  if (attemptskip == 0 & confirmedit == 0 & displayEduInfo == 0) {
    occupantremove = 3;
  }
}

public void remove4() {
  if (attemptskip == 0 & confirmedit == 0 & displayEduInfo == 0) {
    occupantremove = 4;
  }
}

public void remove5() {
  if (attemptskip == 0 & confirmedit == 0 & displayEduInfo == 0) {
    occupantremove = 5;
  }
}

public void remove6() {
  if (attemptskip == 0 & confirmedit == 0 & displayEduInfo == 0) {
    occupantremove = 6;
  }
}


public void login() {  
  if (step3Shown == 0 & step2Shown == 0) {
    state = 1; // go to initial profile suggestions
    step1Shown = 1;
    step2Shown = 1;
    CharacteristicsDone = 1;
  } else if (step2Shown == 1) {
    popupIntentions = true;
  }
}

public void changeIntentions() {
  updateIntentions = true;
  popupIntentions = false;
  state = 1;
}

public void keepIntentions() {
  updateIntentions = false;
  popupIntentions = false;
  state = 1;
}

public void backToCharacteristics() {
  state = 0;
}

public void giveprofiles() {
  showProfiles = true;
}

public void profileselect() {
  if (step3Shown == 0) {
    state = 2; // go to preference elicitation screen
    step3Shown = 1;
  } else if (step3Shown == 1) {
    popupPreferences = true;
  }
}

public void scratch() {
  attemptscratch = 1;
}

public void back2() {
  attemptscratch = 0;
}

public void scratchconfirm() {
  if (step3Shown == 0) {
    state = 2; // go to preference elicitation screen
    step3Shown = 1;
    profileSelected = 0;
    attemptscratch = 0;
  } else if (step3Shown == 1) {
    popupPreferences = true;
    attemptscratch = 0;
  }
}

public void changePreferences() {
  updatePreferences = true;
  popupPreferences = false;
  state = 2;
}

public void keepPreferences() {
  updatePreferences = false;
  popupPreferences = false;
  state = 2;
}

public void continue2() {
  finalstep = 1;
}

public void clear_() {
  allClear = 1;
}

public void closeHelp() {
  allClear = 1;
}

public void help() {
  allClear = 0;
}

public void changeHousehold() {
  state = 0; //go to household characteristics screen
  allClear = 1;
}

public void changeSustainability() {
  editIntentions = 1;
  editSustainability = 1;
  sustainabilityChanged = true;
}

public void changeSecurity() {
  editIntentions = 1;
  editSecurity = 1;
  securityChanged = true;
}

public void changeConvenience() {
  editIntentions = 1;
  editConvenience = 1;
  convenienceChanged = true;
}

public void changePrivacy() {
  editIntentions = 1;
  editPrivacy = 1;
  privacyChanged = true;
}

public void changePersonalization() {
  editIntentions = 1;
  editPersonalization = 1;
  personalizationChanged = true;
}

public void changeControl() {
  editIntentions = 1;
  editControl = 1;
  controlChanged = true;
}

public void confirmIntentions() {
  editIntentions = 0;
  editSustainability = 0;
  editSecurity = 0;
  editConvenience = 0;
  editPrivacy = 0;
  editPersonalization = 0;
  editControl = 0;
}

public void sustainability(int a) {

  switch(a) {
  case 1:
    sustainabilityValue = "Low"; //In the dataset for data mining no instances included 'very low' for sustainability. The app would not work if it was included here
    break;
  case 2:
    sustainabilityValue = "Low";
    break;
  case 3:
    sustainabilityValue = "Somewhat low";
    break;
  case 4:
    sustainabilityValue = "Neutral";
    break;
  case 5:
    sustainabilityValue = "Somewhat high";
    break;
  case 6:
    sustainabilityValue = "High";
    break;
  case 7:
    sustainabilityValue = "Very high";
    break;
  default:
    sustainabilityValue = "Neutral";
    break;
  }
}

public void security(int a) {
  switch(a) {
  case 1:
    securityValue = "Low"; //In the dataset for data mining no instances included 'very low' for security. The app would not work if it was included here
    break;
  case 2:
    securityValue = "Low";
    break;
  case 3:
    securityValue = "Somewhat low";
    break;
  case 4:
    securityValue = "Neutral";
    break;
  case 5:
    securityValue = "Somewhat high";
    break;
  case 6:
    securityValue = "High";
    break;
  case 7:
    securityValue = "Very high";
    break;
  default:
    securityValue = "Neutral";
    break;
  }
}

public void convenience(int a) {
  switch(a) {
  case 1:
    convenienceValue = "Low"; //In the dataset for data mining no instances included 'very low' for convenience. The app would not work if it was included here
    break;
  case 2:
    convenienceValue = "Low";
    break;
  case 3:
    convenienceValue = "Somewhat low";
    break;
  case 4:
    convenienceValue = "Neutral";
    break;
  case 5:
    convenienceValue = "Somewhat high";
    break;
  case 6:
    convenienceValue = "High";
    break;
  case 7:
    convenienceValue = "Very high";
    break;
  default:
    convenienceValue = "Neutral";
    break;
  }
}

public void privacy(int a) {
  switch(a) {
  case 1:
    privacyValue = "Very low";
    break;
  case 2:
    privacyValue = "Low";
    break;
  case 3:
    privacyValue = "Somewhat low";
    break;
  case 4:
    privacyValue = "Neutral";
    break;
  case 5:
    privacyValue = "Somewhat high";
    break;
  case 6:
    privacyValue = "High";
    break;
  case 7:
    privacyValue = "High"; //In the dataset for data mining no instances included 'very high' for privacy. The app would not work if it was included here
    break;
  default:
    privacyValue = "Neutral";
    break;
  }
}

public void personalization(int a) {
  switch(a) {
  case 1:
    personalizationValue = "Very low";
    break;
  case 2:
    personalizationValue = "Low";
    break;
  case 3:
    personalizationValue = "Somewhat low";
    break;
  case 4:
    personalizationValue = "Neutral";
    break;
  case 5:
    personalizationValue = "Somewhat high";
    break;
  case 6:
    personalizationValue = "High";
    break;
  case 7:
    personalizationValue = "Very high";
    break;
  default:
    personalizationValue = "Neutral";
    break;
  }
}

public void control(int a) {
  switch(a) {
  case 1:
    controlValue = "Very low";
    break;
  case 2:
    controlValue = "Low";
    break;
  case 3:
    controlValue = "Somewhat low";
    break;
  case 4:
    controlValue = "Neutral";
    break;
  case 5:
    controlValue = "Somewhat high";
    break;
  case 6:
    controlValue = "High";
    break;
  case 7:
    controlValue = "Very high";
    break;
  default:
    controlValue = "Neutral";
    break;
  }
}

public void changeProfile() {
  state = 1; //go to initial profile selection screen
  allClear = 1;
}

public void confirmPreferences() {
  editPreferences = 0;  
  editLighting = 0;
  editClimate = 0;
  editSecuritySettings = 0;
  editNotifications = 0;
  editProgramming = 0;
}

public void changeLighting() {
  editLighting = 1;
  editPreferences = 1;
  lightingChanged = true;
}

public void changeClimate() {
  editClimate = 1;
  editPreferences = 1;
  climateChanged = true;
}

public void changeSecuritySettings() {
  editSecuritySettings = 1;
  editPreferences = 1;
  securitySettingsChanged = true;
}

public void changeNotifications() {
  editNotifications = 1;
  editPreferences = 1;
  notificationsChanged = true;
}

public void changeProgramming() {
  editProgramming = 1;
  editPreferences = 1;
  programmingChanged = true;
}

public void submit() { //upload all data to Data Foundry
  upload();
  state = 3;
}

//-------------RESEARCHING BUTTONS (DELETE THIS FOR DEPLOYMENT)
public void page1() {
  state = 0;
}

public void page2() {
  state = 1;
}

public void page3() {
  state = 2;
}

public void page4() {
  state = 3;
}

public void start_() {
  //UserID = cp5.get(Textfield.class, "userID").getText();
  state = 0;
}
