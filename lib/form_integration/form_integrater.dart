import 'package:flutter/foundation.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nlib_library_assistant/app_files/app_credentials/password_reset_guideliness.dart';
import 'package:nlib_library_assistant/app_files/app_credentials/welcome_note1_category1.dart';
import 'package:nlib_library_assistant/app_files/app_credentials/welcome_note2_category1.dart';
import 'package:nlib_library_assistant/app_files/app_credentials/welcome_note3_category1.dart';
import 'package:nlib_library_assistant/app_files/category_i_files/dynamic_book.dart';
import 'package:nlib_library_assistant/app_files/category_i_files/home_page.dart';
import 'package:nlib_library_assistant/app_files/category_i_files/search_results.dart';
import 'package:nlib_library_assistant/app_files/category_i_files/study_room_selection.dart';

class FormIntegrator {
  static const String initial = "/";
  static const String homePage = "/home-page";
  static const String dynamicBook = "/dynamic-book";
  static const String searchResult = "/search-results";
  static const String studyRoomSelection = "/study-room-selection";
  static const String welcomeNote1Category1 = "/welcome-note-1-category-1";
  static const String welcomeNote2Category1 = "/welcome-note-2-category-1";
  static const String welcomeNote3Category1 = "/welcome-note-3-category-1";
  static const String passwordResetGuidelines = "/password-reset-guidelines";

  static String getInitial() => "$initial";
  static String getHomePage() => "$homePage";
  static String getDynamicBook(int pageId) => "$dynamicBook?pageId=$pageId";
  static String getSearchResults() => "$searchResult";
  static String getStudyRoomSelection() => "$studyRoomSelection";
  static String getWelcomeNote1Category1() => "$welcomeNote1Category1";
  static String getWelcomeNote2Category1() => "$welcomeNote2Category1";
  static String getWelcomeNote3Category1() => "$welcomeNote3Category1";
  static String getPasswordResetGuidelines() => "$passwordResetGuidelines";

  static List<GetPage> routes = [
    //main home page
    GetPage(
      name: initial,
      page: () {
        return MainHomePage();
      },
      transition: Transition.fadeIn,
    ),
    //main home page
    GetPage(
      name: homePage,
      page: () {
        return MainHomePage();
      },
      transition: Transition.fadeIn,
    ),
    //dynamic book page
    GetPage(
      name: dynamicBook,
      page: () {
        var typeId = Get.parameters["pageId"];
        return DynamicBook(pageId: int.parse(typeId!));
      },
      transition: Transition.fadeIn,
    ),
    //search result page
    GetPage(
      name: searchResult,
      page: () {
        return SearchResult();
      },
      transition: Transition.fadeIn,
    ),
    //study room selection
    GetPage(
      name: studyRoomSelection,
      page: () {
        return StudyRoomSelection();
      },
      transition: Transition.fadeIn,
    ),
    //welcome note1 category 1
    GetPage(
      name: welcomeNote1Category1,
      page: () {
        return Category1WelcomeNote1();
      },
      transition: Transition.fadeIn,
    ),
    //welcome note2 category 1
    GetPage(
      name: welcomeNote2Category1,
      page: () {
        return Category1WelcomeNote2();
      },
      transition: Transition.fadeIn,
    ),
    //welcome note3 category1
    GetPage(
      name: welcomeNote3Category1,
      page: () {
        return Category1WelcomeNote3();
      },
      transition: Transition.fadeIn,
    ),
    //password reset guidelines
    GetPage(
      name: passwordResetGuidelines,
      page: () {
        return PasswordResetGuideliness();
      },
      transition: Transition.fadeIn,
    )
  ];
}
