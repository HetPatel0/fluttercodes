class User{
  int id;
  String name;
  int age;

  User(this.id, this.name, this.age);
  @override
  String toString() {
    return 'User{id: $id, name: $name, age: $age}';
  }
}

class Work {
  List<User> users = [];//  list of users class created before

// method to add user
void addUser(User user){
  users.add(user);

}

//method to read all the user
void getAllUsers(){
  if(users.isEmpty){
    print("No users out there");
  }

  for(var user in users) {
    print(user);

  }
}

// method to update user
void updateUser(int id, {String? newname, int? newage}){
  bool found = false;
  for(var user in users) {
    if (user.id== id){
      if (newname != null) user.name=newname;
      if (newage != null) user.age=newage;
      print("User with id $id is updated");
      found= true;
      break;

    }
  }

  if(!found) print("User with id $id not found");

}

//method to delete a user by taking id as parameter
void deleteUser(int id) {
  users.removeWhere((user)=> user.id==id);

}

}
void main() {
  // Create an instance of UserManager
Work work = Work();

  // CREATE: Add new users
  work.addUser(User( 1, 'Alice', 25));
  work.addUser(User( 2,  'Bob',  30));
  work.addUser(User(3, 'Charlie',  28));

  // READ: Show all users
work.getAllUsers();

  // UPDATE: Update a user's details
work.updateUser(2, newname:  'Bobby',newage:  31);
work.getAllUsers(); // Check updates

  // DELETE: Remove a user
work.deleteUser(1);
work.getAllUsers(); // Check remaining users

  // Try updating or deleting a non-existent user
work.updateUser(99, newname: 'Ghost');
work.deleteUser(99);

}