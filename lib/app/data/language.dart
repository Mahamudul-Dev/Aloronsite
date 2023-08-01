import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'dashboardTitle': 'Dashboard',
          'search': 'Search',
          'collectionSheetTitle': 'House Collection',
          'error': 'There was a error when load data.',
          'noName': 'No Name Found'
        },
        'bn_BD': {
          'dashboardTitle': 'ড্যাশবোর্ড',
          'search': 'খুঁজুন',
          'collectionSheetTitle': 'বাড়ির কালেকশন শীট',
          'error':
              'একটু সমস্যা হচ্ছে ডাটা লোড করতে, দইয়া করে পুনরায় আবার চেষ্টা করুন।',
          'noName': 'কোনো নাম পাওয়া যায়নি'
        }
      };
}
