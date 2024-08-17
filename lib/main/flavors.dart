enum FlavorTypes { dev, prod }

class Flavor {
  Flavor._instance();

  static late FlavorTypes flavorType;

  static String get flavorMessage {
    switch (flavorType) {
      case FlavorTypes.dev:
        return 'Dev';
      case FlavorTypes.prod:
        return 'Production';
      default:
        return 'Dev';
    }
  }

  static String get apiBaseUrl {
    switch (flavorType) {
      case FlavorTypes.dev:
        return 'https://api-ats-event-dev.sdasystems.org/';
      case FlavorTypes.prod:
        return 'https://api-ats-event.sdasystems.org/';
      default:
        return 'https://api-ats-event-dev.sdasystems.org/';
    }
  }
}
