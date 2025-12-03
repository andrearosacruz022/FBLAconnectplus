import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // WelcomeScreen
  {
    'q3feiva7': {
      'en': 'Welcome',
      'es': '',
    },
    '3t7p6krg': {
      'en': 'FBLA\nconnect+',
      'es': '',
    },
    'h9dq906f': {
      'en': 'Sign Up',
      'es': '',
    },
    'qarh71j6': {
      'en': 'Login',
      'es': '',
    },
    '47g1asws': {
      'en': 'Privacy Policies',
      'es': '',
    },
    'qfe5sd31': {
      'en': 'Terms & Conditions',
      'es': '',
    },
    '28sw34vf': {
      'en': 'Home',
      'es': '',
    },
  },
  // LoginPage
  {
    '0x31a28q': {
      'en': 'WELCOME BACK!',
      'es': '',
    },
    '9btzjy1x': {
      'en': 'Email',
      'es': '',
    },
    'eope7j29': {
      'en': 'email',
      'es': '',
    },
    'gl5bu1vy': {
      'en': 'Email is required',
      'es': '',
    },
    '1u8a2jrc': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'bl17j2hx': {
      'en': 'Password',
      'es': '',
    },
    'mfe5ea8b': {
      'en': 'Password',
      'es': '',
    },
    'f38cf3h7': {
      'en': 'Password is required',
      'es': '',
    },
    'q75osmbg': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'nneso52z': {
      'en': 'Forgot password?',
      'es': '',
    },
    'w0ireoxg': {
      'en': 'Continue with Google',
      'es': '',
    },
    '4v3s1k6t': {
      'en': 'Login',
      'es': '',
    },
    '4mcpuse9': {
      'en': 'Login',
      'es': '',
    },
    'lho8i03h': {
      'en': 'Home',
      'es': '',
    },
  },
  // TermsAndConditionsPage
  {
    'mwkaqb3j': {
      'en': 'Terms and Conditions',
      'es': '',
    },
    '73d1a88y': {
      'en': 'Home',
      'es': '',
    },
  },
  // PrivacyPoliciesPage
  {
    'av08p8um': {
      'en': 'Privacy Policies',
      'es': '',
    },
    'qnv0os9p': {
      'en': 'Home',
      'es': '',
    },
  },
  // SignUpPage
  {
    '9oz92tmy': {
      'en': 'Sign Up',
      'es': '',
    },
    'yhs76b2h': {
      'en': 'Name',
      'es': '',
    },
    's1rva0ep': {
      'en': 'Full name',
      'es': '',
    },
    '96zeimxs': {
      'en': 'Name is required',
      'es': '',
    },
    '747bsz2o': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '8e4rce0s': {
      'en': 'Email',
      'es': '',
    },
    'o1twl84w': {
      'en': 'example@email.com',
      'es': '',
    },
    '6wy87szl': {
      'en': 'Email is required',
      'es': '',
    },
    'ku9mb7gz': {
      'en': 'Email must contain  @ and .com',
      'es': '',
    },
    '9wwxpatg': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    '70oc4ymz': {
      'en': 'Password',
      'es': '',
    },
    '45ysd6kl': {
      'en': 'Password',
      'es': '',
    },
    '8v604zmk': {
      'en': 'Password is required',
      'es': '',
    },
    '4nkel9md': {
      'en': 'Minimum 8 characters, one uppercase letter and one number',
      'es': '',
    },
    '1mkh5p1f': {
      'en':
          'Password must contain at least one uppercase letter and one number',
      'es': '',
    },
    '0situt3r': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'yvtc20no': {
      'en': 'Chapter',
      'es': '',
    },
    '17o91hex': {
      'en': 'Chapter2190',
      'es': '',
    },
    'ualcdlo1': {
      'en': 'Chapter is required',
      'es': '',
    },
    'aoay9oa8': {
      'en': 'Please choose an option from the dropdown',
      'es': '',
    },
    'wzlkszrx': {
      'en': 'I accept the privacy policies',
      'es': '',
    },
    'ynhdapvz': {
      'en': 'I accept the terms and conditions',
      'es': '',
    },
    'qbfaa7yf': {
      'en': 'Create Account',
      'es': '',
    },
    '79i43s2s': {
      'en': 'Do you already have an account? Login',
      'es': '',
    },
    'l1c9674o': {
      'en': 'Home',
      'es': '',
    },
  },
  // Resources
  {
    '0dho684s': {
      'en': 'Search',
      'es': '',
    },
    'mzlnr9o4': {
      'en': 'Search Document',
      'es': '',
    },
    'cxm8zajr': {
      'en': 'All',
      'es': '',
    },
    'oxy7ispo': {
      'en': 'Competences',
      'es': '',
    },
    '6hlj3t86': {
      'en': 'Education',
      'es': '',
    },
    'gqq65kvp': {
      'en': 'About FBLA',
      'es': '',
    },
    '5uryp7sd': {
      'en': 'See more',
      'es': '',
    },
    'lfq1wseh': {
      'en': 'Resources',
      'es': '',
    },
    '9qi3ksp6': {
      'en': 'Resources',
      'es': '',
    },
  },
  // Profile
  {
    'p3sx5aga': {
      'en': 'Profile',
      'es': '',
    },
    'k676r3ir': {
      'en': 'FBLA\nConnect+',
      'es': '',
    },
    'lizpvbuk': {
      'en': 'Edit Profile',
      'es': '',
    },
    'f6nh3ied': {
      'en': '',
      'es': '',
    },
    'zrlqv5pe': {
      'en': 'Change Password',
      'es': '',
    },
    '83xdysgx': {
      'en': '',
      'es': '',
    },
    '6ugwawn7': {
      'en': 'Log Out',
      'es': '',
    },
    'bbe6poil': {
      'en': 'Privacy Policies',
      'es': '',
    },
    'n70tijek': {
      'en': 'Terms and Conditions',
      'es': '',
    },
    's0ryato5': {
      'en': 'Profile',
      'es': '',
    },
  },
  // AnnouncementsDetails
  {
    '8dmga49n': {
      'en': 'See More',
      'es': '',
    },
    'lk93fubh': {
      'en': 'Announcement Details',
      'es': '',
    },
    '69gpfmp6': {
      'en': 'Home',
      'es': '',
    },
  },
  // HomePage2
  {
    '2f3z2aav': {
      'en': 'Announcements',
      'es': '',
    },
    'alctpzvb': {
      'en': 'See more',
      'es': '',
    },
    '32wrso4t': {
      'en': 'Chapter Social Media',
      'es': '',
    },
    '0q7iu6l3': {
      'en': 'FBLAconnect+',
      'es': '',
    },
    'aqlzlknd': {
      'en': 'Home',
      'es': '',
    },
  },
  // CreateEvent
  {
    'k0vxw0oh': {
      'en': 'Event',
      'es': '',
    },
    '9nwzexhr': {
      'en': 'TextField',
      'es': '',
    },
    'upyo6x2h': {
      'en': 'Location',
      'es': '',
    },
    'x3z4030l': {
      'en': 'TextField',
      'es': '',
    },
    'p9dh2xsg': {
      'en': 'Description',
      'es': '',
    },
    'haxgwqnq': {
      'en': 'TextField',
      'es': '',
    },
    'ai43xmdt': {
      'en': 'Select Date',
      'es': '',
    },
    'c2ea05ph': {
      'en': 'Set a reminder',
      'es': '',
    },
    'v5u8br6v': {
      'en': 'Reminder',
      'es': '',
    },
    'j0v62kfp': {
      'en': 'Search...',
      'es': '',
    },
    '4qlcu59y': {
      'en': 'None',
      'es': '',
    },
    '6hnqsok2': {
      'en': '1 day before',
      'es': '',
    },
    'zvgg2gno': {
      'en': '2 days before',
      'es': '',
    },
    'a7py8xa0': {
      'en': '1 week before',
      'es': '',
    },
    '7t13sx46': {
      'en': 'Create Event',
      'es': '',
    },
    '69ae5ib8': {
      'en': 'Events',
      'es': '',
    },
    '9hnfp8l2': {
      'en': 'Home',
      'es': '',
    },
  },
  // Calendar2
  {
    'qoh0tacg': {
      'en': 'Month',
      'es': '',
    },
    'erelbowg': {
      'en': 'Week',
      'es': '',
    },
    'h9g8ts2e': {
      'en': 'Coming Up',
      'es': '',
    },
    'hqpn6k5g': {
      'en': 'Past Due',
      'es': '',
    },
    'nctl1tsq': {
      'en': 'Calendar',
      'es': '',
    },
    '388lim6j': {
      'en': 'Home',
      'es': '',
    },
  },
  // EditProfile
  {
    'qfq45sa4': {
      'en': 'FBLA\nConnect+',
      'es': '',
    },
    'a0f5a3jx': {
      'en': 'Change Name',
      'es': '',
    },
    'u7yry38j': {
      'en': 'TextField',
      'es': '',
    },
    'nlo3w5jv': {
      'en': 'Change Bio',
      'es': '',
    },
    'k1rifyl7': {
      'en': 'TextField',
      'es': '',
    },
    'g0rwfoye': {
      'en': 'Cancel',
      'es': '',
    },
    'dseljy0q': {
      'en': 'Save',
      'es': '',
    },
    '0eso9m0j': {
      'en': 'Delete account',
      'es': '',
    },
    '1t6trb1r': {
      'en': 'Edit Profile',
      'es': '',
    },
    'dc89t6j0': {
      'en': 'Home',
      'es': '',
    },
  },
  // Miscellaneous
  {
    '77tcj2a4': {
      'en':
          'This app need permisions to send you notifications about new announcements and event reminders.',
      'es': '',
    },
    '168nbg4i': {
      'en': '',
      'es': '',
    },
    '6v0l550x': {
      'en': '',
      'es': '',
    },
    '3ue683id': {
      'en': '',
      'es': '',
    },
    '9pdhoys7': {
      'en': '',
      'es': '',
    },
    '69ii3ivg': {
      'en': '',
      'es': '',
    },
    '1jhpp8e4': {
      'en': '',
      'es': '',
    },
    'c1edojgk': {
      'en': '',
      'es': '',
    },
    's9kkudoj': {
      'en': '',
      'es': '',
    },
    'ubu6zcip': {
      'en': '',
      'es': '',
    },
    'kkybeg2g': {
      'en': '',
      'es': '',
    },
    'ba27v67l': {
      'en': '',
      'es': '',
    },
    '1w50vfls': {
      'en': '',
      'es': '',
    },
    'z6tridpw': {
      'en': '',
      'es': '',
    },
    'u58ox0h0': {
      'en': '',
      'es': '',
    },
    '1jy79nqs': {
      'en': '',
      'es': '',
    },
    'ypk5jxer': {
      'en': '',
      'es': '',
    },
    '1m8jh95y': {
      'en': '',
      'es': '',
    },
    'jriqui7m': {
      'en': '',
      'es': '',
    },
    'np5jh3lj': {
      'en': '',
      'es': '',
    },
    '3w5wzdfw': {
      'en': '',
      'es': '',
    },
    '91olxzxj': {
      'en': '',
      'es': '',
    },
    'loyw437z': {
      'en': '',
      'es': '',
    },
    '5ams9jbt': {
      'en': '',
      'es': '',
    },
    '4d8fp9um': {
      'en': '',
      'es': '',
    },
    '10oq7sor': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
