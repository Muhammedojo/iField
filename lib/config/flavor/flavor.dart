enum Flavor { DEV, QA, PROD }

class BuildFlavor{
  final String baseUrl;
  final Flavor flavor;
  final String appName;
  BuildFlavor({required this.baseUrl, required this.flavor,required this.appName});
}

class FlavorValues{
  final String baseUrl;
  FlavorValues({required this.baseUrl});
}