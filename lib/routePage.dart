import 'package:get/get_navigation/src/routes/get_route.dart';

import 'Parents/Feature/Authentication/presentation/Screen/Login.dart';
import 'Parents/Feature/Authentication/presentation/Screen/OTPVerify.dart';
import 'Parents/Feature/Authentication/presentation/Screen/ResetPassword.dart';
import 'Parents/Feature/Authentication/presentation/Screen/SignUp.dart';
import 'Parents/Feature/Authentication/presentation/Screen/Welcome.dart';
import 'Parents/Feature/Authentication/presentation/Screen/forgetPassword.dart';
import 'Parents/Feature/HomeSection/presentation/Screen/AiSupport.dart';
import 'Parents/Feature/HomeSection/presentation/Screen/CheckInPage.dart';
import 'Parents/Feature/HomeSection/presentation/Screen/HomePage.dart';
import 'Parents/Feature/HomeSection/presentation/Screen/HomeWelcomePage.dart';
import 'Parents/Feature/HomeSection/presentation/Screen/Shared_Messages.dart';
import 'Parents/Feature/HomeSection/presentation/Widget/ShareLinkPage.dart';
import 'Parents/Feature/LibrarySection/presentation/screen/ArticleDetailsPage.dart';
import 'Parents/Feature/LibrarySection/presentation/screen/ResourceLibrary.dart';
import 'Parents/Feature/ProfileSection/presentation/Screen/About_LYNKFOLK.dart';
import 'Parents/Feature/ProfileSection/presentation/Screen/ContactSupport.dart';
import 'Parents/Feature/ProfileSection/presentation/Screen/OtherPage.dart';
import 'Parents/Feature/ProfileSection/presentation/Screen/PrivacyPolicy.dart';
import 'Parents/Feature/ProfileSection/presentation/Screen/ThermsOfService.dart';
import 'Parents/Feature/ProfileSection/presentation/Screen/profile.dart';
import 'Parents/Feature/ProfileSection/presentation/Screen/updateProfileParent.dart';
import 'Parents/Feature/ToolSection/presentation/Screen/BreathingPage.dart';
import 'Parents/Feature/ToolSection/presentation/Screen/ConnectionBuilder.dart';
import 'Parents/Feature/ToolSection/presentation/Screen/ConversationStarters.dart';
import 'Parents/Feature/ToolSection/presentation/Screen/ReframeThis.dart';
import 'Parents/Feature/ToolSection/presentation/Screen/ReframeTool.dart';
import 'Parents/Feature/ToolSection/presentation/Screen/SupportTools.dart';
import 'Parents/Feature/onbording/presentation/screen/Awareness.dart';
import 'Parents/Feature/onbording/presentation/screen/FeelingPage.dart';
import 'Parents/Feature/onbording/presentation/screen/Growth.dart';
import 'Parents/Feature/onbording/presentation/screen/Warmth.dart';
import 'Parents/Feature/onbording/presentation/screen/splashScreen.dart';
import 'Parents/core/utils/ExtraPage/ErrorPage.dart';



class Routepage {
  static List<GetPage> routes=[
  //orBoarding
  GetPage(name: '/splashScreen', page: () => const SplashScreen()),
  GetPage(name: '/awareness', page: () => const Awareness()),
  GetPage(name: '/Warmth', page: () => const Warmth()),
  GetPage(name: '/growth', page: () => const Growth()),
  GetPage(name: '/Feelingpage', page: () => const Feelingpage()),

  //Authentication
  GetPage(name: '/Welcome', page: () => const Welcome()),
  GetPage(name: '/LoginParent', page: () =>  LoginParent()),
  GetPage(name: '/SignupParent', page: () =>  SignupParent()),
  GetPage(name: '/ForgetPassword', page: () =>  ForgetPassword()),
  GetPage(name: '/Resetpassword', page: () => Resetpassword()),
  GetPage(name: '/OtpVerify', page: () => OtpVerify()),

  //ProfileSection
  GetPage(name: '/PrfilePage', page: () => PrfilePage()),
  GetPage(name: '/OtherPage', page: () => OtherPage()),
  GetPage(name: '/PrivacyPolicy', page: () => PrivacyPolicy()),
  GetPage(name: '/TermsOfService', page: () => TermsOfService()),
  GetPage(name: '/AboutLynkfolk', page: () => AboutLynkfolk()),
  GetPage(name: '/ContractSupport', page: () => ContractSupport()),
  GetPage(name: '/UpdateProfileParent', page: () => UpdateProfileParent()),

    //Error
    GetPage(name:'/ErrorPage', page: () => ErrorPage()),

    //Home
    GetPage(name:'/HomePage', page: () => HomePage()),
    GetPage(name:'/CheckInPage', page: () => CheckInPage()),
    GetPage(name:'/HomeWelcomePage', page: () => HomeWelcomePage()),
    GetPage(name:'/AiSupportPage', page: () => AiSupportPage()),
    GetPage(name:'/ShareLinkPage', page: () => ShareLinkPage()),
    GetPage(name:'/SharedMessages', page: () => SharedMessages()),

    //Tool
    GetPage(name:'/ConnectionBuilder', page: () => ConnectionBuilder()),
    GetPage(name:'/ConversationStarters', page: () => ConversationStarters()),
    GetPage(name:'/ReframeTool', page: () => ReframeTool()),
    GetPage(name:'/SupportTools', page: () => SupportTools()),
    GetPage(name:'/ReframeThis', page: () => ReframeThis()),
    GetPage(name:'/BreathingPage', page: () => BreathingPage()),

    //Library
    GetPage(name:'/ResourceLibrary', page: () => ResourceLibrary()),
    GetPage(name:'/AritcleDetailsPage', page: () => AritcleDetailsPage()),







  ];
}