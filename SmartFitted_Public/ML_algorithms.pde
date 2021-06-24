// ML algorithms data
import java.io.*;
import java.util.*;

Instances dataSustainability = null;
weka.classifiers.functions.SMO Sustainability_SMO = null;
Instances dataSecurity = null;
weka.classifiers.functions.SMO Security_SMO = null;
Instances dataConvenience = null;
weka.classifiers.functions.SMO Convenience_SMO = null;
Instances dataPrivacy = null;
weka.classifiers.functions.SMO Privacy_SMO = null;
Instances dataPersonalization = null;
weka.classifiers.functions.SMO Personalization_SMO = null;
Instances dataControl = null;
weka.classifiers.functions.SMO Control_SMO = null;

Instances dataLightingSunlight = null;
weka.classifiers.functions.SMO LightingSunlight_SMO = null;
Instances dataLightingMovement = null;
weka.classifiers.trees.J48 LightingMovement_J48 = null;
Instances dataLightingVacated = null;
weka.classifiers.functions.SMO LightingVacated_SMO = null;
Instances dataLightingBedtime = null;
weka.classifiers.functions.SMO LightingBedtime_SMO = null;
Instances dataLightingNever = null;
weka.classifiers.functions.SMO LightingNever_SMO = null;

Instances dataClimateHome = null;
weka.classifiers.functions.SMO ClimateHome_SMO = null;
Instances dataClimateAwake = null;
weka.classifiers.functions.SMO ClimateAwake_SMO = null;
Instances dataClimateNever = null;
weka.classifiers.trees.J48 ClimateNever_J48 = null;

Instances dataSecurityAlways = null;
weka.classifiers.functions.SMO SecurityAlways_SMO = null;
Instances dataSecurityMovement = null;
weka.classifiers.functions.SMO SecurityMovement_SMO = null;
Instances dataSecurityVacated = null;
weka.classifiers.trees.J48 SecurityVacated_J48 = null;
Instances dataSecuritySleeping = null;
weka.classifiers.functions.SMO SecuritySleeping_SMO = null;
Instances dataSecurityNever = null;
weka.classifiers.trees.J48 SecurityNever_J48 = null;

Instances dataNotificationsMovement = null;
weka.classifiers.rules.OneR NotificationsMovement_OneR = null;
Instances dataNotificationsAlarm = null;
weka.classifiers.trees.J48 NotificationsAlarm_J48 = null;
Instances dataNotificationsDoorbell = null;
weka.classifiers.functions.SMO NotificationsDoorbell_SMO = null;
Instances dataNotificationsTraffic = null;
weka.classifiers.trees.J48 NotificationsTraffic_J48 = null;
Instances dataNotificationsEnergy = null;
weka.classifiers.functions.SMO NotificationsEnergy_SMO = null;
Instances dataNotificationsNever = null;
weka.classifiers.functions.SMO NotificationsNever_SMO = null;

Instances dataProgrammingMyself = null;
weka.classifiers.rules.OneR ProgrammingMyself_OneR = null;
Instances dataProgrammingPartner = null;
weka.classifiers.functions.SMO ProgrammingPartner_SMO = null;
Instances dataProgrammingOccupant = null;
weka.classifiers.functions.SMO ProgrammingOccupant_SMO = null;
Instances dataProgrammingCompany = null;
weka.classifiers.functions.SMO ProgrammingCompany_SMO = null;

void initML() {
    loadDataSustainability(dataPath("data_cleaned_vA1_IntentionsSustainability.csv"));
    loadModelSustainability(dataPath("Sustainability_SMO.model"));
    loadDataSecurity(dataPath("data_cleaned_vA1_IntentionsSecurity.csv"));
    loadModelSecurity(dataPath("Security_SMO.model"));
    loadDataConvenience(dataPath("data_cleaned_vA1_IntentionsConvenience.csv"));
    loadModelConvenience(dataPath("Convenience_SMO.model"));
    loadDataPrivacy(dataPath("data_cleaned_vA1_IntentionsPrivacy.csv"));
    loadModelPrivacy(dataPath("Privacy_SMO.model"));
    loadDataPersonalization(dataPath("data_cleaned_vA1_IntentionsPersonalization.csv"));
    loadModelPersonalization(dataPath("Personalization_SMO.model"));
    loadDataControl(dataPath("data_cleaned_vA1_IntentionsControl.csv"));
    loadModelControl(dataPath("Control_SMO.model"));
    
    loadDataLightingSunlight(dataPath("data_cleaned_vA1_LightingSunlight.csv"));
    loadModelLightingSunlight(dataPath("LightingSunlight_SMO.model"));
    loadDataLightingMovement(dataPath("data_cleaned_vA1_LightingMovement.csv"));
    loadModelLightingMovement(dataPath("LightingMovement_J48.model"));
    loadDataLightingVacated(dataPath("data_cleaned_vA1_LightingVacated.csv"));
    loadModelLightingVacated(dataPath("LightingVacated_SMO.model"));
    loadDataLightingBedtime(dataPath("data_cleaned_vA1_LightingBedtime.csv"));
    loadModelLightingBedtime(dataPath("LightingBedtime_SMO.model"));
    loadDataLightingNever(dataPath("data_cleaned_vA1_LightingNever.csv"));
    loadModelLightingNever(dataPath("LightingNever_SMO.model"));
    
    loadDataClimateHome(dataPath("data_cleaned_vA1_ClimateHome.csv"));
    loadModelClimateHome(dataPath("ClimateHome_SMO.model"));
    loadDataClimateAwake(dataPath("data_cleaned_vA1_ClimateAwake.csv"));
    loadModelClimateAwake(dataPath("ClimateAwake_SMO.model"));
    loadDataClimateNever(dataPath("data_cleaned_vA1_ClimateNever.csv"));
    loadModelClimateNever(dataPath("ClimateNever_J48.model"));
    
    loadDataSecurityAlways(dataPath("data_cleaned_vA1_SecurityAlways.csv"));
    loadModelSecurityAlways(dataPath("SecurityAlways_SMO.model"));
    loadDataSecurityMovement(dataPath("data_cleaned_vA1_SecurityMovement.csv"));
    loadModelSecurityMovement(dataPath("SecurityMovement_SMO.model"));
    loadDataSecurityVacated(dataPath("data_cleaned_vA1_SecurityVacated.csv"));
    loadModelSecurityVacated(dataPath("SecurityVacated_J48.model"));
    loadDataSecuritySleeping(dataPath("data_cleaned_vA1_SecuritySleeping.csv"));
    loadModelSecuritySleeping(dataPath("SecuritySleeping_SMO.model"));
    loadDataSecurityNever(dataPath("data_cleaned_vA1_SecurityNever.csv"));
    loadModelSecurityNever(dataPath("SecurityNever_J48.model"));
    
    loadDataNotificationsMovement(dataPath("data_cleaned_vA1_NotificationsMovement.csv"));
    loadModelNotificationsMovement(dataPath("NotificationsMovement_OneR.model"));
    loadDataNotificationsAlarm(dataPath("data_cleaned_vA1_NotificationsAlarm.csv"));
    loadModelNotificationsAlarm(dataPath("NotificationsAlarm_J48.model"));
    loadDataNotificationsDoorbell(dataPath("data_cleaned_vA1_NotificationsDoorbell.csv"));
    loadModelNotificationsDoorbell(dataPath("NotificationsDoorbell_SMO.model"));
    loadDataNotificationsTraffic(dataPath("data_cleaned_vA1_NotificationsTraffic.csv"));
    loadModelNotificationsTraffic(dataPath("NotificationsTraffic_J48.model"));
    loadDataNotificationsEnergy(dataPath("data_cleaned_vA1_NotificationsEnergy.csv"));
    loadModelNotificationsEnergy(dataPath("NotificationsEnergy_SMO.model"));
    loadDataNotificationsNever(dataPath("data_cleaned_vA1_NotificationsNever.csv"));
    loadModelNotificationsNever(dataPath("NotificationsNever_SMO.model"));
    
    loadDataProgrammingMyself(dataPath("data_cleaned_vA1_ProgrammingMyself.csv"));
    loadModelProgrammingMyself(dataPath("ProgrammingMyself_OneR.model"));
    loadDataProgrammingPartner(dataPath("data_cleaned_vA1_ProgrammingPartner.csv"));
    loadModelProgrammingPartner(dataPath("ProgrammingPartner_SMO.model"));
    loadDataProgrammingOccupant(dataPath("data_cleaned_vA1_ProgrammingOccupant.csv"));
    loadModelProgrammingOccupant(dataPath("ProgrammingOccupant_SMO.model"));
    loadDataProgrammingCompany(dataPath("data_cleaned_vA1_ProgrammingCompany.csv"));
    loadModelProgrammingCompany(dataPath("ProgrammingCompany_SMO.model"));
}

//// PREDICTION OF SUSTAINABILITY INTENTION ////
void loadDataSustainability(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataSustainability = source.getDataSet();

    if (dataSustainability.classIndex() == -1)
      dataSustainability.setClassIndex(dataSustainability.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelSustainability(String filepath) {
    try {
      Sustainability_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Sustainability loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_sustainability(String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_, int UserTech_, int UserHome_) {
  String r = "Sorry, unable to predict Sustainability_Intention.";
  if (Sustainability_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(8);
  di.setDataset(dataSustainability);
  di.setValue(0, HouseholdType_);//
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);

  try {
    int i = (int)Sustainability_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF SECURITY INTENTION ////
void loadDataSecurity(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataSecurity = source.getDataSet();

    if (dataSecurity.classIndex() == -1)
      dataSecurity.setClassIndex(dataSecurity.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelSecurity(String filepath) {
    try {
      Security_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Security loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_security (int OthersAgeAVG_, String OthersGenderAVG_, int OthersEduAVG_, int OthersTechAVG_) {
  String r = "Sorry, unable to predict Security_Intention.";
  if (Security_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(5);
  di.setDataset(dataSecurity);
  di.setValue(0, OthersAgeAVG_);
  di.setValue(1, OthersGenderAVG_);
  di.setValue(2, OthersEduAVG_);
  di.setValue(3, OthersTechAVG_);

  try {
    int i = (int)Security_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF CONVENIENCE INTENTION ////
void loadDataConvenience(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataConvenience = source.getDataSet();

    if (dataConvenience.classIndex() == -1)
      dataConvenience.setClassIndex(dataConvenience.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelConvenience(String filepath) {
    try {
      Convenience_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Convenience loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_convenience (int UserAge_, String UserGender_, int UserEdu_, int UserTech_, int UserHome_) {
  String r = "Sorry, unable to predict Convenience_Intention.";
  if (Convenience_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(6);
  di.setDataset(dataConvenience);
  di.setValue(0, UserAge_);
  di.setValue(1, UserGender_);
  di.setValue(2, UserEdu_);
  di.setValue(3, UserTech_);
  di.setValue(4, UserHome_);

  try {
    int i = (int)Convenience_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF PRIVACY INTENTION ////
void loadDataPrivacy(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataPrivacy = source.getDataSet();

    if (dataPrivacy.classIndex() == -1)
      dataPrivacy.setClassIndex(dataPrivacy.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelPrivacy(String filepath) {
    try {
      Privacy_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Privacy loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_privacy (int UserAge_, String UserGender_, int UserEdu_, int UserTech_, int UserHome_) {
  String r = "Sorry, unable to predict Privacy_Intention.";
  if (Privacy_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(6);
  di.setDataset(dataPrivacy);
  di.setValue(0, UserAge_);
  di.setValue(1, UserGender_);
  di.setValue(2, UserEdu_);
  di.setValue(3, UserTech_);
  di.setValue(4, UserHome_);

  try {
    int i = (int)Privacy_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF PERSONALIZATION INTENTION ////
void loadDataPersonalization(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataPersonalization = source.getDataSet();

    if (dataPersonalization.classIndex() == -1)
      dataPersonalization.setClassIndex(dataPersonalization.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelPersonalization(String filepath) {
    try {
      Personalization_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Personalization loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_personalization (int OthersAgeAVG_, String OthersGenderAVG_, int OthersEduAVG_, int OthersTechAVG_) {
  String r = "Sorry, unable to predict Personalization_Intention.";
  if (Personalization_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(5);
  di.setDataset(dataPersonalization);
  di.setValue(0, OthersAgeAVG_);
  di.setValue(1, OthersGenderAVG_);
  di.setValue(2, OthersEduAVG_);
  di.setValue(3, OthersTechAVG_);

  try {
    int i = (int)Personalization_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF CONTROL INTENTION ////
void loadDataControl(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataControl = source.getDataSet();

    if (dataControl.classIndex() == -1)
      dataControl.setClassIndex(dataControl.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelControl(String filepath) {
    try {
      Control_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Control loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_control (int UserAge_ , int OthersAgeAVG_, String OthersGenderAVG_, int OthersEduAVG_, int OthersTechAVG_, int OthersHomeAVG_) {
  String r = "Sorry, unable to predict Control_Intention.";
  if (Control_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(7);
  di.setDataset(dataControl);
  di.setValue(0, UserAge_);
  di.setValue(1, OthersAgeAVG_);
  di.setValue(2, OthersGenderAVG_);
  di.setValue(3, OthersEduAVG_);
  di.setValue(4, OthersTechAVG_);
  di.setValue(5, OthersHomeAVG_);

  try {
    int i = (int)Control_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF LIGHTING_SUNLIGHT ////
void loadDataLightingSunlight(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataLightingSunlight = source.getDataSet();

    if (dataLightingSunlight.classIndex() == -1)
      dataLightingSunlight.setClassIndex(dataLightingSunlight.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelLightingSunlight(String filepath) {
    try {
      LightingSunlight_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Lighting_Sunlight loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_lightingsunlight (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Lighting_Sunlight.";
  if (LightingSunlight_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataLightingSunlight);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);//
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)LightingSunlight_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF LIGHTING_MOVEMENT ////
void loadDataLightingMovement(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataLightingMovement = source.getDataSet();

    if (dataLightingMovement.classIndex() == -1)
      dataLightingMovement.setClassIndex(dataLightingMovement.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelLightingMovement(String filepath) {
    try {
      LightingMovement_J48 = (weka.classifiers.trees.J48) SerializationHelper.read(filepath);
      println("Lighting_Movement loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_lightingmovement (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, String sustainabilityValue_, String securityValue_, String convenienceValue_, String privacyValue_, String personalizationValue_, String controlValue_) {
  String r = "Sorry, unable to predict Lighting_Movement.";
  if (LightingMovement_J48 == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataLightingMovement);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, sustainabilityValue_);//
  di.setValue(8, securityValue_);
  di.setValue(9, convenienceValue_);
  di.setValue(10, privacyValue_);
  di.setValue(11, personalizationValue_);
  di.setValue(12, controlValue_);
  

  try {
    int i = (int)LightingMovement_J48.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF LIGHTING_VACATED ////
void loadDataLightingVacated(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataLightingVacated = source.getDataSet();

    if (dataLightingVacated.classIndex() == -1)
      dataLightingVacated.setClassIndex(dataLightingVacated.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelLightingVacated(String filepath) {
    try {
      LightingVacated_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Lighting_Vacated loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_lightingvacated (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, String sustainabilityValue_, String securityValue_, String convenienceValue_, String privacyValue_, String personalizationValue_, String controlValue_) {
  String r = "Sorry, unable to predict Lighting_Vacated.";
  if (LightingVacated_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataLightingVacated);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, sustainabilityValue_);
  di.setValue(8, securityValue_);
  di.setValue(9, convenienceValue_);
  di.setValue(10, privacyValue_);
  di.setValue(11, personalizationValue_);
  di.setValue(12, controlValue_);
  

  try {
    int i = (int)LightingVacated_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF LIGHTING_BEDTIME ////
void loadDataLightingBedtime(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataLightingBedtime = source.getDataSet();

    if (dataLightingBedtime.classIndex() == -1)
      dataLightingBedtime.setClassIndex(dataLightingBedtime.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelLightingBedtime(String filepath) {
    try {
      LightingBedtime_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Lighting_Bedtime loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_lightingbedtime (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Lighting_Bedtime.";
  if (LightingBedtime_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataLightingBedtime);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)LightingBedtime_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF LIGHTING_NEVER ////
void loadDataLightingNever(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataLightingNever = source.getDataSet();

    if (dataLightingNever.classIndex() == -1)
      dataLightingNever.setClassIndex(dataLightingNever.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelLightingNever(String filepath) {
    try {
      LightingNever_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Lighting_Never loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_lightingnever (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Lighting_Never.";
  if (LightingNever_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataLightingNever);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)LightingNever_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF CLIMATE_HOME ////
void loadDataClimateHome(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataClimateHome = source.getDataSet();

    if (dataClimateHome.classIndex() == -1)
      dataClimateHome.setClassIndex(dataClimateHome.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelClimateHome(String filepath) {
    try {
      ClimateHome_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Climate_Home loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_climatehome (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Climate_Home.";
  if (ClimateHome_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataClimateHome);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)ClimateHome_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF CLIMATE_AWAKE ////
void loadDataClimateAwake(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataClimateAwake = source.getDataSet();

    if (dataClimateAwake.classIndex() == -1)
      dataClimateAwake.setClassIndex(dataClimateAwake.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelClimateAwake(String filepath) {
    try {
      ClimateAwake_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Climate_Awake loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_climateawake (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, String sustainabilityValue_, String securityValue_, String convenienceValue_, String privacyValue_, String personalizationValue_, String controlValue_) {
  String r = "Sorry, unable to predict Climate_Awake.";
  if (ClimateAwake_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataClimateAwake);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, sustainabilityValue_);
  di.setValue(8, securityValue_);
  di.setValue(9, convenienceValue_);
  di.setValue(10, privacyValue_);
  di.setValue(11, personalizationValue_);
  di.setValue(12, controlValue_);
  
  try {
    int i = (int)ClimateAwake_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF CLIMATE_NEVER ////
void loadDataClimateNever(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataClimateNever = source.getDataSet();

    if (dataClimateNever.classIndex() == -1)
      dataClimateNever.setClassIndex(dataClimateNever.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelClimateNever(String filepath) {
    try {
      ClimateNever_J48 = (weka.classifiers.trees.J48) SerializationHelper.read(filepath);
      println("Climate_Never loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_climatenever (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Climate_Never.";
  if (ClimateNever_J48 == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataClimateNever);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)ClimateNever_J48.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF SECURITY_ALWAYS ////
void loadDataSecurityAlways(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataSecurityAlways = source.getDataSet();

    if (dataSecurityAlways.classIndex() == -1)
      dataSecurityAlways.setClassIndex(dataSecurityAlways.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelSecurityAlways(String filepath) {
    try {
      SecurityAlways_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Security_Always loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_securityalways (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Security_Always.";
  if (SecurityAlways_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataSecurityAlways);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)SecurityAlways_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF SECURITY_MOVEMENT ////
void loadDataSecurityMovement(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataSecurityMovement = source.getDataSet();

    if (dataSecurityMovement.classIndex() == -1)
      dataSecurityMovement.setClassIndex(dataSecurityMovement.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelSecurityMovement(String filepath) {
    try {
      SecurityMovement_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Security_Movement loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_securitymovement (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Security_Always.";
  if (SecurityMovement_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataSecurityMovement);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)SecurityMovement_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF SECURITY_VACATED ////
void loadDataSecurityVacated(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataSecurityVacated = source.getDataSet();

    if (dataSecurityVacated.classIndex() == -1)
      dataSecurityVacated.setClassIndex(dataSecurityVacated.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelSecurityVacated(String filepath) {
    try {
      SecurityVacated_J48 = (weka.classifiers.trees.J48) SerializationHelper.read(filepath);
      println("Security_Vacated loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_securityvacated (int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Security_Vacated.";
  if (SecurityVacated_J48 == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(7);
  di.setDataset(dataSecurityVacated);
  di.setValue(0, SustainabilityScore_);
  di.setValue(1, SecurityScore_);
  di.setValue(2, ConvenienceScore_);
  di.setValue(3, PrivacyScore_);
  di.setValue(4, PersonalizationScore_);
  di.setValue(5, ControlScore_);
  

  try {
    int i = (int)SecurityVacated_J48.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF SECURITY_SLEEPING ////
void loadDataSecuritySleeping(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataSecuritySleeping = source.getDataSet();

    if (dataSecuritySleeping.classIndex() == -1)
      dataSecuritySleeping.setClassIndex(dataSecuritySleeping.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelSecuritySleeping(String filepath) {
    try {
      SecuritySleeping_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Security_Sleeping loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_securitysleeping (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Security_Sleeping.";
  if (SecuritySleeping_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataSecuritySleeping);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)SecuritySleeping_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF SECURITY_NEVER ////
void loadDataSecurityNever(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataSecurityNever = source.getDataSet();

    if (dataSecurityNever.classIndex() == -1)
      dataSecurityNever.setClassIndex(dataSecurityNever.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelSecurityNever(String filepath) {
    try {
      SecurityNever_J48 = (weka.classifiers.trees.J48) SerializationHelper.read(filepath);
      println("Security_Never loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_securitynever (int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Security_Never.";
  if (SecurityNever_J48 == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(7);
  di.setDataset(dataSecurityNever);
  di.setValue(0, SustainabilityScore_);
  di.setValue(1, SecurityScore_);
  di.setValue(2, ConvenienceScore_);
  di.setValue(3, PrivacyScore_);
  di.setValue(4, PersonalizationScore_);
  di.setValue(5, ControlScore_);
  

  try {
    int i = (int)SecurityNever_J48.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF NOTIFICATIONS_MOVEMENT ////
void loadDataNotificationsMovement(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataNotificationsMovement = source.getDataSet();

    if (dataNotificationsMovement.classIndex() == -1)
      dataNotificationsMovement.setClassIndex(dataNotificationsMovement.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelNotificationsMovement(String filepath) {
    try {
      NotificationsMovement_OneR = (weka.classifiers.rules.OneR) SerializationHelper.read(filepath);
      println("Notifications_Movement loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_notificationsmovement (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Notifications_Movement.";
  if (NotificationsMovement_OneR == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataNotificationsMovement);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)NotificationsMovement_OneR.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF NOTIFICATIONS_ALARM ////
void loadDataNotificationsAlarm(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataNotificationsAlarm = source.getDataSet();

    if (dataNotificationsAlarm.classIndex() == -1)
      dataNotificationsAlarm.setClassIndex(dataNotificationsAlarm.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelNotificationsAlarm(String filepath) {
    try {
      NotificationsAlarm_J48 = (weka.classifiers.trees.J48) SerializationHelper.read(filepath);
      println("Notifications_Alarm loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_notificationsalarm (int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Notifications_Alarm.";
  if (NotificationsAlarm_J48 == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(7);
  di.setDataset(dataNotificationsAlarm);
  di.setValue(0, SustainabilityScore_);
  di.setValue(1, SecurityScore_);
  di.setValue(2, ConvenienceScore_);
  di.setValue(3, PrivacyScore_);
  di.setValue(4, PersonalizationScore_);
  di.setValue(5, ControlScore_);
  

  try {
    int i = (int)NotificationsAlarm_J48.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF NOTIFICATIONS_DOORBELL ////
void loadDataNotificationsDoorbell(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataNotificationsDoorbell = source.getDataSet();

    if (dataNotificationsDoorbell.classIndex() == -1)
      dataNotificationsDoorbell.setClassIndex(dataNotificationsDoorbell.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelNotificationsDoorbell(String filepath) {
    try {
      NotificationsDoorbell_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Notifications_Doorbell loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_notificationsdoorbell (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Notifications_Doorbell.";
  if (NotificationsDoorbell_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataNotificationsDoorbell);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)NotificationsDoorbell_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF NOTIFICATIONS_TRAFFIC ////
void loadDataNotificationsTraffic(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataNotificationsTraffic = source.getDataSet();

    if (dataNotificationsTraffic.classIndex() == -1)
      dataNotificationsTraffic.setClassIndex(dataNotificationsTraffic.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelNotificationsTraffic(String filepath) {
    try {
      NotificationsTraffic_J48 = (weka.classifiers.trees.J48) SerializationHelper.read(filepath);
      println("Notifications_Traffic loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_notificationstraffic (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Notifications_Traffic.";
  if (NotificationsTraffic_J48 == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataNotificationsTraffic);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)NotificationsTraffic_J48.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF NOTIFICATIONS_ENERGY ////
void loadDataNotificationsEnergy(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataNotificationsEnergy = source.getDataSet();

    if (dataNotificationsEnergy.classIndex() == -1)
      dataNotificationsEnergy.setClassIndex(dataNotificationsEnergy.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelNotificationsEnergy(String filepath) {
    try {
      NotificationsEnergy_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Notifications_Energy loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_notificationsenergy (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Notifications_Energy.";
  if (NotificationsEnergy_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataNotificationsEnergy);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)NotificationsEnergy_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF NOTIFICATIONS_NEVER ////
void loadDataNotificationsNever(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataNotificationsNever = source.getDataSet();

    if (dataNotificationsNever.classIndex() == -1)
      dataNotificationsNever.setClassIndex(dataNotificationsNever.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelNotificationsNever(String filepath) {
    try {
      NotificationsNever_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Notifications_Never loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_notificationsnever (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Notifications_Never.";
  if (NotificationsNever_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataNotificationsNever);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)NotificationsNever_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF PROGRAMMING_MYSELF ////
void loadDataProgrammingMyself(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataProgrammingMyself = source.getDataSet();

    if (dataProgrammingMyself.classIndex() == -1)
      dataProgrammingMyself.setClassIndex(dataProgrammingMyself.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelProgrammingMyself(String filepath) {
    try {
      ProgrammingMyself_OneR = (weka.classifiers.rules.OneR) SerializationHelper.read(filepath);
      println("Programming_Myself loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_programmingmyself (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Programming_Myself.";
  if (ProgrammingMyself_OneR == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataProgrammingMyself);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)ProgrammingMyself_OneR.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF PROGRAMMING_PARTNER ////
void loadDataProgrammingPartner(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataProgrammingPartner = source.getDataSet();

    if (dataProgrammingPartner.classIndex() == -1)
      dataProgrammingPartner.setClassIndex(dataProgrammingPartner.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelProgrammingPartner(String filepath) {
    try {
      ProgrammingPartner_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Programming_Partner loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_programmingpartner (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Programming_Partner.";
  if (ProgrammingPartner_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataProgrammingPartner);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)ProgrammingPartner_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF PROGRAMMING_OCCUPANT ////
void loadDataProgrammingOccupant(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataProgrammingOccupant = source.getDataSet();

    if (dataProgrammingOccupant.classIndex() == -1)
      dataProgrammingOccupant.setClassIndex(dataProgrammingOccupant.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelProgrammingOccupant(String filepath) {
    try {
      ProgrammingOccupant_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Programming_Occupant loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_programmingoccupant (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Programming_Occupant.";
  if (ProgrammingOccupant_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataProgrammingOccupant);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)ProgrammingOccupant_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}

//// PREDICTION OF PROGRAMMING_PARTNER ////
void loadDataProgrammingCompany(String filepath) {
  try {
    weka.core.converters.ConverterUtils.DataSource source
      = new weka.core.converters.ConverterUtils.DataSource(filepath);
    dataProgrammingCompany = source.getDataSet();

    if (dataProgrammingCompany.classIndex() == -1)
      dataProgrammingCompany.setClassIndex(dataProgrammingCompany.numAttributes() - 1);
  }
  catch (Exception ex) {
    ex.printStackTrace();
  }
}

void loadModelProgrammingCompany(String filepath) {
    try {
      ProgrammingCompany_SMO = (weka.classifiers.functions.SMO) SerializationHelper.read(filepath);
      println("Programming_Company loaded");
    }
    catch(Exception ex) {
      ex.printStackTrace();
    }
}

String predict_programmingcompany (String HouseholdType_, String HouseType_, int UserAge_, String UserGender_, int UserEdu_,int UserTech_, int UserHome_, int SustainabilityScore_, int SecurityScore_, int ConvenienceScore_, int PrivacyScore_, int PersonalizationScore_, int ControlScore_) {
  String r = "Sorry, unable to predict Programming_Company.";
  if (ProgrammingCompany_SMO == null) return r;

  //build a new instance with the given input
  Instance di = new DenseInstance(14);
  di.setDataset(dataProgrammingCompany);
  di.setValue(0, HouseholdType_);
  di.setValue(1, HouseType_);
  di.setValue(2, UserAge_);
  di.setValue(3, UserGender_);
  di.setValue(4, UserEdu_);
  di.setValue(5, UserTech_);
  di.setValue(6, UserHome_);
  di.setValue(7, SustainabilityScore_);
  di.setValue(8, SecurityScore_);
  di.setValue(9, ConvenienceScore_);
  di.setValue(10, PrivacyScore_);
  di.setValue(11, PersonalizationScore_);
  di.setValue(12, ControlScore_);
  

  try {
    int i = (int)ProgrammingCompany_SMO.classifyInstance(di);
    r = di.classAttribute().value(i);
  }
  catch(Exception ex) {
    ex.printStackTrace();
  }

  return r;
}
