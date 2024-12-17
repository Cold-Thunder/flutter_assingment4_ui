import 'package:assignment4_ui/utiles/all_images/home_images/home_page_images.dart';
import 'package:assignment4_ui/utiles/models/home_modules/best_deal_module.dart';
import 'package:assignment4_ui/utiles/models/home_modules/category_card_module.dart';

class HomePageAllTexts {
  static String appTitle = 'Grocery App';
  static String home = 'Home';
  static String location = '6391 Elgin St. Celina, Delaware 10299';
  static String search = 'Search';
  static String seeAll = 'See All';
  static String showNow = 'Shop Now';
  static String add = 'Add';

  // heading texts
  static String shopCategory = 'Shop By Category';
  static String bestDeal = 'Best Deal';
  static String adHeading =
      'World Food Festival, Bring the world to your Kitchen!';

  //catergory texts
  static String vegetables = 'Vegetables & Fruits';
  static String dairy = 'Dairy & Breakfast';
  static String coldDrinks = 'Cold Drinks & Juices';
  static String instantFoods = 'Instant & Frozen Food';
  static String teaCoffee = 'Tea & Coffee';
  static String atta = 'Atta, Rice & Dal';
  static String masala = 'Masala, Oil & Dry Fruits';
  static String meat = 'Chicken, Meat & Fish';

  // best deal texts title
static String surfExcelTitle = 'Surf Excel Easy Wash Detergent Power';
static String arharDalTitle = 'Fortune Arhar Dal (Toor Dal)';

// best deal texts subtitle
  static String surfExcelSub = '500 ml';
  static String arharDalSub = '1 kg';

  //prices
  static String surfExcelPrice = '\$12';
  static String arharDalPrice = '\$10';
  static String surfExcelPrePrice = '\$14';
  static String arharDalPrePrice = '\$12';


  static List<CategoryCardModule> categoryInfos= [
    CategoryCardModule(
        title: HomePageAllTexts.vegetables,
        image: HomePageImages.vegetablesImg),
    CategoryCardModule(
        title: HomePageAllTexts.dairy,
        image: HomePageImages.dairyImg),
    CategoryCardModule(
        title: HomePageAllTexts.coldDrinks,
        image: HomePageImages.coldDrinksImg),
    CategoryCardModule(
        title: HomePageAllTexts.instantFoods,
        image: HomePageImages.instantImg),
    CategoryCardModule(
        title: HomePageAllTexts.teaCoffee,
        image: HomePageImages.teaImg),
    CategoryCardModule(
        title: HomePageAllTexts.atta,
        image: HomePageImages.attaRiceImg),
    CategoryCardModule(
        title: HomePageAllTexts.masala,
        image: HomePageImages.masalaImg),
    CategoryCardModule(
        title: HomePageAllTexts.meat,
        image: HomePageImages.meatImg),
  ];

  // best deals list
  static List<BestDealModule> bestDeals = [
    BestDealModule(
        image: HomePageImages.surfImg,
        title: HomePageAllTexts.surfExcelTitle,
        sub: HomePageAllTexts.surfExcelSub,
        price: HomePageAllTexts.surfExcelPrice,
        prePrice: HomePageAllTexts.surfExcelPrePrice),
    BestDealModule(
        image: HomePageImages.arharDalImg,
        title: HomePageAllTexts.arharDalTitle,
        sub: HomePageAllTexts.arharDalSub,
        price: HomePageAllTexts.arharDalPrice,
        prePrice: HomePageAllTexts.arharDalPrePrice),
    BestDealModule(
        image: HomePageImages.arharDalImg,
        title: HomePageAllTexts.arharDalTitle,
        sub: HomePageAllTexts.arharDalSub,
        price: HomePageAllTexts.arharDalPrice,
        prePrice: HomePageAllTexts.arharDalPrePrice),
  ];

}
