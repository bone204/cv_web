enum AppText {
  textContactMe,
  textHome,
  textAboutMe,
  textPortfolio,
  textUIT,
  textUniversityOfInformationTechnology,
  textHello,
  textOverview,
  textDescription,
  textGetInTouch,
  textFlutter,
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
  AppText.textUIT: "UIT", 
  AppText.textUniversityOfInformationTechnology: "University of\nInformation Technology",
  AppText.textHello: "Hello, I am Truong - Welcome to my portfolio website",
  AppText.textOverview: "I build cross-platform apps for\nmobile and web using ",
  AppText.textFlutter: "Flutter",
  AppText.textDescription: "I’m learning to create clean and simple apps people can actually use.\nI focus on building apps that look good and run smoothly.",
  AppText.textGetInTouch: "Get in touch",
};

extension AppTexts on AppText {
  static String getStringValue(String value) {
    return value;
  }

  String get text => texts[this] ?? '--TextNotFound--';
}