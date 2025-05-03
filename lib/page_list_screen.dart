import 'package:flutter/material.dart';
import 'routes/app_routes.dart';

class PageListScreen extends StatelessWidget {
  const PageListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = <Map<String, String>>[
      // Welcome Screen
      {'title': 'Welcome', 'route': AppRoutes.welcome},

      // Auth Screen
      {'title': 'Sign In', 'route': AppRoutes.signIn},
      {'title': 'Sign Up', 'route': AppRoutes.signUp},
      {'title': 'Check Email', 'route': AppRoutes.checkEmail},
      {'title': 'Reset Password', 'route': AppRoutes.resetPassword},
      {'title': 'Create New Password', 'route': AppRoutes.createNewPassword},

      // Home Screen
      {'title': 'Home', 'route': AppRoutes.home},
      {'title': 'Articles Tips', 'route': AppRoutes.articlesTips},

      // Categories Screen
      {'title': 'Category', 'route': AppRoutes.category},
      {'title': 'DetailProduct', 'route': AppRoutes.detailProduct},
      {'title': 'Product', 'route': AppRoutes.product},
      {'title': 'RatingReview', 'route': AppRoutes.ratingReview},
      {'title': 'Review', 'route': AppRoutes.review},

      // Inbox Screen
      {'title': 'Chat', 'route': AppRoutes.chat},
      {'title': 'Notification', 'route': AppRoutes.notification},

      // Cart Screen
      {'title': 'Cart', 'route': AppRoutes.cart},

      // Checkout Screen
      {'title': 'Checkout', 'route': AppRoutes.checkout},
      {'title': 'Payment', 'route': AppRoutes.payment},
      {'title': 'Payment Confirmation', 'route': AppRoutes.paymentConfirmation},
      {'title': 'Payment Process', 'route': AppRoutes.paymentProcess},

      // Order History Screen
      {'title': 'Order History', 'route': AppRoutes.orderHistory},
      {'title': 'Order Details', 'route': AppRoutes.orderDetails},
      {'title': 'Return Confirmation', 'route': AppRoutes.returnConfirmation},
      {'title': 'Tracking Status', 'route': AppRoutes.trackingStatus},

      // Profile Screen
      {'title': 'Add Address', 'route': AppRoutes.addAddress},
      {'title': 'Change Password', 'route': AppRoutes.changePassword},
      {'title': 'Profile', 'route': AppRoutes.profile},
      {'title': 'Edit Profile', 'route': AppRoutes.editProfile},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Daftar Halaman')),
      body: ListView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(pages[index]['title']!),
            onTap: () {
              Navigator.pushNamed(context, pages[index]['route']!);
            },
          );
        },
      ),
    );
  }
}
