import 'package:flutter/material.dart';
import '../page_list_screen.dart';

// Welcome Screen
import '../screens/welcome/welcome_screen.dart';

// Auth Screen
import '../screens/auth/sign_in/sign_in_screen.dart';
import '../screens/auth/sign_up/sign_up_screen.dart';
import '../screens/auth/check_email/check_email_screen.dart';
import '../screens/auth/reset_password/reset_password_screen.dart';
import '../screens/auth/create_new_password/create_new_password_screen.dart';

// Home Screen
import '../screens/home/home_screen.dart';
import '../screens/home/articles_tips/articles_tips_screen.dart';

// Categories Screen
import '../screens/category/category_screen.dart';
import '../screens/category/detail_product/detail_product_screen.dart';
import '../screens/category/product/product_screen.dart';
import '../screens/category/rating_review/rating_review_screen.dart';
import '../screens/category/review/review_screen.dart';

// Inbox Screen
import '../screens/inbox/inbox_screen.dart';
import '../screens/inbox/chat/chat_screen.dart';
import '../screens/inbox/notification/notification_screen.dart';

// Cart Screen
import '../screens/cart/cart_screen.dart';

// Checkout Screen
import '../screens/checkout/checkout_screen.dart';
import '../screens/checkout/payment/payment_screen.dart';
import '../screens/checkout/payment_confirmation/payment_confirmation_screen.dart';
import '../screens/checkout/payment_process/payment_process_screen.dart';

// Order History Screen
import '../screens/order_history/order_history_screen.dart';
import '../screens/order_history/order_details/order_details_screen.dart';
import '../screens/order_history/return_confirmation/return_confirmation_screen.dart';
import '../screens/order_history/tracking_status/tracking_status_screen.dart';

// Profile Screen
import '../screens/profile/add_address/add_address_screen.dart';
import '../screens/profile/change_password/change_password_screen.dart';
import '../screens/profile/edit_profile/edit_profile_screen.dart';
import '../screens/profile/profile_screen.dart';

class AppRoutes {
  // List Of Page
  static const String pageList = '/';

  // Welcome Screen
  static const String welcome = '/welcome';

  // Auth Screen
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String checkEmail = '/check-email';
  static const String resetPassword = '/reset-password';
  static const String createNewPassword = '/create-new-password';
  static const String forgotPassword = '/forgot-password';

  // Home Screen
  static const String home = '/home';
  static const String articlesTips = '/articles-tips';

  // Categories Screen
  static const String category = '/category';
  static const String detailProduct = '/detail-product';
  static const String product = '/product';
  static const String ratingReview = '/rating-review';
  static const String review = '/review';

  // Inbox Screen
  static const String inbox = '/inbox';
  static const String chat = '/chat';
  static const String notification = '/notification';

  // Cart Screen
  static const String cart = '/cart';

  // Checkout Screen
  static const String checkout = '/checkout';
  static const String payment = '/payment';
  static const String paymentConfirmation = '/payment-confirmation';
  static const String paymentProcess = '/payment-process';

  // Order History Screen
  static const String orderHistory = '/order-history';
  static const String orderDetails = '/order-details';
  static const String returnConfirmation = '/return-confirmation';
  static const String trackingStatus = '/tracking-status';

  // Profile Screen
  static const String addAddress = '/add-address';
  static const String changePassword = '/change-password';
  static const String profile = '/profile';
  static const String editProfile = '/edit-profile';

  static final Map<String, WidgetBuilder> routes = {
    // List Of Page
    pageList: (context) => const PageListScreen(),

    // Welcome Screen
    welcome: (context) => const WelcomeScreen(),

    // Auth Screen
    signIn: (context) => const SignInScreen(),
    signUp: (context) => const SignUpScreen(),
    checkEmail: (context) => const CheckEmailScreen(),
    resetPassword: (context) => const ResetPasswordScreen(),
    createNewPassword: (context) => const CreateNewPasswordScreen(),

    // Home Screen
    home: (context) => const HomeScreen(),
    articlesTips: (context) => const ArticlesTipsScreen(),

    // Categories Screen
    category: (context) => const CategoryScreen(),
    detailProduct: (context) => const DetailProductScreen(),
    product: (context) => const ProductScreen(),
    ratingReview: (context) => const RatingReviewScreen(),
    review: (context) => const ReviewScreen(),

    // Inbox Screen
    inbox: (context) => const InboxScreen(),
    chat: (context) => const ChatScreen(),
    notification: (context) => const NotificationScreen(),

    // Cart Screen
    cart: (context) => const CartScreen(),

    // Checkout Screen
    checkout: (context) => const CheckoutScreen(),
    payment: (context) => const PaymentScreen(),
    paymentConfirmation: (context) => const PaymentConfirmationScreen(),
    paymentProcess: (context) => const PaymentProcessScreen(),

    // Order History Screen
    orderHistory: (context) => const OrderHistoryScreen(),
    orderDetails: (context) => const OrderDetailsScreen(),
    returnConfirmation: (context) => const ReturnConfirmationScreen(),
    trackingStatus: (context) => const TrackingStatusScreen(),

    // Profile Screen
    addAddress: (context) => const AddAddressScreen(),
    changePassword: (context) => const ChangePasswordScreen(),
    profile: (context) => const ProfileScreen(),
    editProfile: (context) => const EditProfileScreen(),
  };
}
