import 'package:flutter_test/flutter_test.dart';

// ignore: avoid_relative_lib_imports
import '../lib/300/generic_learn.dart';

void main() {
  setUp(() {});
  test('User calculate ', () {
    final users = [
      const GenericUser('vb', '11', 10),
      const GenericUser('vb', '11', 10),
      const GenericUser('vb', '11', 20),
    ];
    final userManagement = UserManagement(const AdminUser('vadmin', '1', 15, 1));
    final result = userManagement.calculateMoney(users);

    // ignore: unused_local_variable
    final response = userManagement.showNames<String>(users);

    expect(result, 40);
  });
}
