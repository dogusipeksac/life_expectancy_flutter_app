

import 'package:life_expectancy_flutter_app/user_data.dart';

class Calculate {

  UserData _userData;
  Calculate(this._userData);




  double calculateFonct(){
  double sonuc;
  sonuc=90+_userData.numberOfExercises-_userData.numberOfCigarettes;
  sonuc=sonuc+(_userData.humanSize/_userData.humanKilo);
  if(_userData.selectedButton=="FEMALE"){
        return sonuc+3;
  }
  else{
        return sonuc;
  }
  }

}