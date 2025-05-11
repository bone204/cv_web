enum AppText {
  textContactMe,
  textHome,
  textAboutMe,
  textPortfolio,
}

Map<AppText, String> texts = {
  // AppText.textRouteLogin: "/login",
  // AppText.textRouteChat: "/chat",
  // AppText.textRouteOverview: "/overview",
  // AppText.textRouteProfile: "/profile",

  AppText.textContactMe: "Contact Me",
  AppText.textHome: "Home",
  AppText.textAboutMe: "About Me",
  AppText.textPortfolio: "Portfolio",
};

extension AppTexts on AppText {
  static String getStringValue(String value) {
    return value;
  }

  String get text => texts[this] ?? '--TextNotFound--';
}