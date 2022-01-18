import '../core.dart';

class DealerService {
  List<Dealer> getDealersList() {
    return <Dealer>[
      Dealer(
        name: "Hertz",
        offers: 174,
        image: "assets/images/dealers/hertz.png",
      ),
      Dealer(
        name: "Avis",
        offers: 126,
        image: "assets/images/dealers/avis.png",
      ),
      Dealer(
        name: "Tesla",
        offers: 89,
        image: "assets/images/dealers/tesla.jpg",
      ),
    ];
  }
}
