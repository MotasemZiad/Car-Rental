import 'package:car_rental/core.dart';

class FilterService {
  List<Filter> getFilterList() {
    return [
      Filter(name: 'Highest Price'),
      Filter(name: 'Lowest Price'),
    ];
  }
}
