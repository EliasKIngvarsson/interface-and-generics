
class IDataBaseConnection{
  void create(String s){}
  void read(){}
  void update(){}
  void delete(){}
}

class DataBase{//ath ef fall heitir það sama og clasi þá er það smiður
  DataBase(this.connectionUrl);
  String connectionUrl;
}

class TheRealDatabase extends DataBase implements IDataBaseConnection{
  TheRealDatabase(String connectionurl):super(connectionurl);

  @override
  void create(String s) {
    print("$s has been created in the database in the cloud*****");
    // TODO: implement create
  }

  @override
  void delete() {
    // TODO: implement delete
  }

  @override
  void read() {
    // TODO: implement read
  }

  @override
  void update() {
    // TODO: implement update
  }
}
//þetta er mock database hann verður að vera einsog alv0ru gagnagrunnur

class MockDataBase extends DataBase implements IDataBaseConnection{ //Hérna bjuggum við líka til smið
  MockDataBase(String connectionurl):super(connectionurl);
  void read(){
    print("Read from db file");
  }
  void update(){
    print('update db file');
  }
  void create(String entry){
    print("$entry has been created in the database");
  }
  void delete(){
    print("Delete entry from database");
  }
}

void main(List<String>argumnets){

  TheRealDatabase db = new TheRealDatabase("C:/database.db");
  db.create("New user: Lalli");

}