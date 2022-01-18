// interface er samningur við klasa eða við hlut og það er ákveðið vandamál sem við leysum og vandamálið er að hver hlutur getur bara efrft einn klasa
// t.d. getum hundur erft animal en ekki robota hlutinn þetta hjæalpar okkur að strúktúra kóða og meintaina hann og interface leyfir okkur að
// implementa með erfðum eitthvað sem var áður ekki hægt með venjulegum erfðum
// t.d. með c++ maður getur erft eins marga klasa og maður vill en það er ekki hægt með dart
// animal er kannski með eitthvað name property og róbóti er með name property og þegar hundur erfir báða hvað ætlum við að erfa name frá hundinum eða animal ??
// það leysist þá með einhverjum priorities eftir fyrsta definition og það er búið að leysa þetta í nútíma forritunarmálum með því að banna að leyfa að erfa tvo klasa
// ÞAÐ ER MARGT Í ÞESSU Í ÞESSUM FYRIRLESTRI OG KANNSKI Í SÍÐASTA FYRIRLESTRI EN ÞAÐ ER EKKI KOMINN SKILNINGUR TIL AÐ NOTA ÞETTA Í OKKAR KÓÐA
// hverning þetta virkar og hvað er benifit
// tilgangur með interface er að gera lífið auðveldara


class Animal{
  String breed;
}
class IFly { //höfum gert interface og venjan er sú að þetta byrjar á stórum staf I
  //eina sem interface á er heitið á föllum og return gildi
  void Fly(){}
}
class Dog extends Animal {
  String Name;
}
class Bird extends Animal implements IFly{ // fall sem er fly kemur villa ef ég geri ekkert ekkert og ´ég er að segja að þessi clasi ath þega við gerum implement þá þarf maður að handsetja þetta inn
  String Name;

  @override
  void Fly() {
   print('bird flying');
  }

}


void main(List<String>argumnets){

  Dog d1= new Dog();

  d1.Name='lalli';
  d1.breed='kali';// hann erfir þetta frá Animal clasa
  Bird b1 = new Bird();
  CanFly(b1);

}
void CanFly(IFly obj){//getum tekið inn t.d. animal
  obj.Fly();

}

