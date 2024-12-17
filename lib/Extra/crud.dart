class User {
  int id;
  String name;
  int age;

  User({required this.id, required this.name, required this.age});

  @override
  String toString() {
    return 'ID: $id, Name: $name, Age: $age';
  }
}

class UserManager {
  List<User> _users = []; // In-memory list to store users

  // CREATE: Add a new user
  void addUser(User user) {
    _users.add(user);
    print('User added: ${user.name}');
  }

  // READ: Get all users
  void getAllUsers() {
    if (_users.isEmpty) {
      print('No users found.');
      return;
    }
    print('\nUser List:');
    for (var user in _users) {
      print(user);
    }
  }

  // UPDATE: Update a user by ID
    void updateUser(int id, {String? newName, int? newAge}) {
      bool found = false;

    for (var user in _users) {
      if (user.id == id) {
        if (newName != null) user.name = newName;
        if (newAge != null) user.age = newAge;
        print('User with ID $id updated.');
        found = true;
        break;
      }
    }

    if (!found) print('User with ID $id not found.');
  }

  // DELETE: Remove a user by ID
  void deleteUser(int id) {
    int initialLength = _users.length; // Store the initial length of the list

    _users.removeWhere((user) => user.id == id); // Remove user with matching ID

    // Check if the length has changed (i.e., a user was removed)
    if (_users.length < initialLength) {
      print('User with ID $id deleted.');
    } else {
      print('User with ID $id not found.');
    }
  }
}

void main() {
  // Create an instance of UserManager
  UserManager userManager = UserManager();

  // CREATE: Add new users
  userManager.addUser(User(id: 1, name: 'Alice', age: 25));
  userManager.addUser(User(id: 2, name: 'Bob', age: 30));
  userManager.addUser(User(id: 3, name: 'Charlie', age: 28));

  // READ: Show all users
  userManager.getAllUsers();

  // UPDATE: Update a user's details
  userManager.updateUser(2, newName: 'Bobby', newAge: 31);
  userManager.getAllUsers(); // Check updates

  // DELETE: Remove a user
  userManager.deleteUser(1);
  userManager.getAllUsers(); // Check remaining users

  // Try updating or deleting a non-existent user
  userManager.updateUser(99, newName: 'Ghost');
  userManager.deleteUser(99);
}
