library my_prj.globals;

import 'data.dart';

int id = 0;
bool flag = true;
double sum1 = 0;
void multy() {
  double mult = 0;
  sum1 = 0;
  for (int i = 0; i < data.length - 1; i++) {
    if (data[i].cartFlag) {
      mult = data[i].price.toDouble() * data[i].numberItemInCart;
      sum1 += mult;
    }
  }
}
