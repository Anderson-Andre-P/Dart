import '002-funcao-1.dart';
import '002-funcao-2.dart';

void main() {
  List<String> list = <String>[];
  getMenu().then((option) {
    operation(option, list);
  });
}
