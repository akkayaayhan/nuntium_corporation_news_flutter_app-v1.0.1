import 'package:flutter/material.dart';
import 'package:flutter_firebase_app/presentation/splash_screen/splash_screen.dart';
import 'package:flutter_firebase_app/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:flutter_firebase_app/presentation/welcome_screen/welcome_screen.dart';
import 'package:flutter_firebase_app/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:flutter_firebase_app/presentation/sign_in_typing_screen/sign_in_typing_screen.dart';
import 'package:flutter_firebase_app/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:flutter_firebase_app/presentation/verification_code_screen/verification_code_screen.dart';
import 'package:flutter_firebase_app/presentation/create_new_password_screen/create_new_password_screen.dart';
import 'package:flutter_firebase_app/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:flutter_firebase_app/presentation/sign_up_typing_screen/sign_up_typing_screen.dart';
import 'package:flutter_firebase_app/presentation/select_your_favorite_topics_screen/select_your_favorite_topics_screen.dart';
import 'package:flutter_firebase_app/presentation/select_your_favorite_topics_selected_screen/select_your_favorite_topics_selected_screen.dart';
import 'package:flutter_firebase_app/presentation/homepage_container_screen/homepage_container_screen.dart';
import 'package:flutter_firebase_app/presentation/bookmarks_empty_state_screen/bookmarks_empty_state_screen.dart';
import 'package:flutter_firebase_app/presentation/article_page_screen/article_page_screen.dart';
import 'package:flutter_firebase_app/presentation/article_page_two_screen/article_page_two_screen.dart';
import 'package:flutter_firebase_app/presentation/article_page_three_screen/article_page_three_screen.dart';
import 'package:flutter_firebase_app/presentation/language_screen/language_screen.dart';
import 'package:flutter_firebase_app/presentation/change_password_screen/change_password_screen.dart';
import 'package:flutter_firebase_app/presentation/terms_conditions_screen/terms_conditions_screen.dart';
import 'package:flutter_firebase_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String signInTypingScreen = '/sign_in_typing_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String verificationCodeScreen = '/verification_code_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signUpTypingScreen = '/sign_up_typing_screen';

  static const String selectYourFavoriteTopicsScreen =
      '/select_your_favorite_topics_screen';

  static const String selectYourFavoriteTopicsSelectedScreen =
      '/select_your_favorite_topics_selected_screen';

  static const String homepagePage = '/homepage_page';

  static const String homepageTabContainerPage = '/homepage_tab_container_page';

  static const String homepageContainerScreen = '/homepage_container_screen';

  static const String homepageTwoPage = '/homepage_two_page';

  static const String categoriesPage = '/categories_page';

  static const String bookmarksPage = '/bookmarks_page';

  static const String bookmarksEmptyStateScreen =
      '/bookmarks_empty_state_screen';

  static const String articlePageScreen = '/article_page_screen';

  static const String articlePageTwoScreen = '/article_page_two_screen';

  static const String articlePageThreeScreen = '/article_page_three_screen';

  static const String profilePage = '/profile_page';

  static const String languageScreen = '/language_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String termsConditionsScreen = '/terms_conditions_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    onboardingScreen: (context) => OnboardingScreen(),
    welcomeScreen: (context) => WelcomeScreen(),
    signInScreen: (context) => SignInScreen(),
    signInTypingScreen: (context) => SignInTypingScreen(),
    forgotPasswordScreen: (context) => ForgotPasswordScreen(),
    verificationCodeScreen: (context) => VerificationCodeScreen(),
    createNewPasswordScreen: (context) => CreateNewPasswordScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signUpTypingScreen: (context) => SignUpTypingScreen(),
    selectYourFavoriteTopicsScreen: (context) =>
        SelectYourFavoriteTopicsScreen(),
    selectYourFavoriteTopicsSelectedScreen: (context) =>
        SelectYourFavoriteTopicsSelectedScreen(),
    homepageContainerScreen: (context) => HomepageContainerScreen(),
    bookmarksEmptyStateScreen: (context) => BookmarksEmptyStateScreen(),
    articlePageScreen: (context) => ArticlePageScreen(),
    articlePageTwoScreen: (context) => ArticlePageTwoScreen(),
    articlePageThreeScreen: (context) => ArticlePageThreeScreen(),
    languageScreen: (context) => LanguageScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    termsConditionsScreen: (context) => TermsConditionsScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
