// // import 'package:flutter/material.dart';
// // import 'package:go_router/go_router.dart';

// // class SignUpPage extends StatelessWidget {
// //   final TextEditingController usernameController = TextEditingController();
// //   final TextEditingController emailController = TextEditingController();
// //   final TextEditingController passwordController = TextEditingController();
// //   final TextEditingController confirmPasswordController =
// //       TextEditingController();

// //   SignUpPage({super.key});

// //   final _formKey = GlobalKey<FormState>();
// //   final Color goldColor = const Color(0xFFE9C575); // Gold color for styling

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(
// //           'Sign Up',
// //           style: TextStyle(color: goldColor),
// //         ),
// //         backgroundColor: Colors.black,
// //         elevation: 0,
// //         iconTheme: IconThemeData(color: goldColor),
// //       ),
// //       body: Container(
// //         color: Colors.black,
// //         child: Form(
// //           key: _formKey,
// //           child: Padding(
// //             padding: const EdgeInsets.all(16.0),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: [
// //                 Icon(
// //                   Icons.person_add_alt_1,
// //                   size: 100,
// //                   color: goldColor,
// //                 ),
// //                 const SizedBox(height: 20),
// //                 Text(
// //                   'Join Us',
// //                   textAlign: TextAlign.center,
// //                   style: Theme.of(context).textTheme.headlineMedium?.copyWith(
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.white,
// //                         fontSize: 30,
// //                       ),
// //                 ),
// //                 const SizedBox(height: 40),
// //                 TextFormField(
// //                   controller: usernameController,
// //                   decoration: InputDecoration(
// //                     labelText: 'Username',
// //                     labelStyle: TextStyle(color: goldColor),
// //                     hintText: 'Enter your username',
// //                     hintStyle: TextStyle(color: goldColor),
// //                     filled: true,
// //                     fillColor: Colors.white.withOpacity(0.1),
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(12.0),
// //                     ),
// //                     prefixIcon: Icon(Icons.person, color: goldColor),
// //                   ),
// //                   keyboardType: TextInputType.text,
// //                   validator: (value) {
// //                     if (value!.isEmpty) return "Please fill in your username";
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 20),
// //                 TextFormField(
// //                   controller: emailController,
// //                   decoration: InputDecoration(
// //                     labelText: 'Email',
// //                     labelStyle: TextStyle(color: goldColor),
// //                     hintText: 'Enter your email',
// //                     hintStyle: TextStyle(color: goldColor),
// //                     filled: true,
// //                     fillColor: Colors.white.withOpacity(0.1),
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(12.0),
// //                     ),
// //                     prefixIcon: Icon(Icons.email, color: goldColor),
// //                   ),
// //                   keyboardType: TextInputType.emailAddress,
// //                   validator: (value) {
// //                     if (value!.isEmpty) return "Please fill in your email";
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 20),
// //                 TextFormField(
// //                   controller: passwordController,
// //                   decoration: InputDecoration(
// //                     labelText: 'Password',
// //                     labelStyle: TextStyle(color: goldColor),
// //                     hintText: 'Enter your password',
// //                     hintStyle: TextStyle(color: goldColor),
// //                     filled: true,
// //                     fillColor: Colors.white.withOpacity(0.1),
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(12.0),
// //                     ),
// //                     prefixIcon: Icon(Icons.lock, color: goldColor),
// //                   ),
// //                   obscureText: true,
// //                   validator: (value) {
// //                     if (value!.isEmpty) return "Please fill in your password";
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 20),
// //                 TextFormField(
// //                   controller: confirmPasswordController,
// //                   decoration: InputDecoration(
// //                     labelText: 'Confirm Password',
// //                     labelStyle: TextStyle(color: goldColor),
// //                     hintText: 'Confirm your password',
// //                     hintStyle: TextStyle(color: goldColor),
// //                     filled: true,
// //                     fillColor: Colors.white.withOpacity(0.1),
// //                     border: OutlineInputBorder(
// //                       borderRadius: BorderRadius.circular(12.0),
// //                     ),
// //                     prefixIcon: Icon(Icons.lock, color: goldColor),
// //                   ),
// //                   obscureText: true,
// //                   validator: (value) {
// //                     if (value!.isEmpty) return "Please confirm your password";
// //                     if (value != passwordController.text)
// //                       return "Passwords do not match";
// //                     return null;
// //                   },
// //                 ),
// //                 const SizedBox(height: 30),
// //                 SizedBox(
// //                   width: double.infinity,
// //                   child: ElevatedButton(
// //                     style: ElevatedButton.styleFrom(
// //                       padding: const EdgeInsets.symmetric(vertical: 16),
// //                       backgroundColor: goldColor,
// //                       shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(12.0),
// //                       ),
// //                     ),
// //                     onPressed: () {
// //                       if (_formKey.currentState!.validate()) {
// //                         // Perform signup action
// //                         print("Sign-up successful");
// //                       }
// //                     },
// //                     child: const Text(
// //                       'Sign Up',
// //                       style: TextStyle(
// //                         fontSize: 18,
// //                         fontWeight: FontWeight.bold,
// //                         color: Colors.black,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 const SizedBox(height: 20),
// //                 GestureDetector(
// //                   onTap: () {
// //                     print("Navigate to Sign In page");
// //                   },
// //                   child: Text(
// //                     "Already have an account?",
// //                     style: TextStyle(color: goldColor, fontSize: 20),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// class SignUpPage extends StatelessWidget {
//   final TextEditingController usernameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController =
//       TextEditingController();

//   SignUpPage({super.key});

//   final _formKey = GlobalKey<FormState>();
//   final Color goldColor = const Color(0xFFE9C575); // Gold color for styling

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Sign Up',
//           style: TextStyle(color: goldColor),
//         ),
//         backgroundColor: Colors.black,
//         elevation: 0,
//         iconTheme: IconThemeData(color: goldColor),
//       ),
//       body: Container(
//         color: Colors.black,
//         child: Form(
//           key: _formKey,
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   Icons.person_add_alt_1,
//                   size: 100,
//                   color: goldColor,
//                 ),
//                 const SizedBox(height: 20),
//                 Text(
//                   'Join Us',
//                   textAlign: TextAlign.center,
//                   style: Theme.of(context).textTheme.headlineMedium?.copyWith(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         fontSize: 30,
//                       ),
//                 ),
//                 const SizedBox(height: 40),
//                 TextFormField(
//                   controller: usernameController,
//                   decoration: InputDecoration(
//                     labelText: 'Username',
//                     labelStyle: TextStyle(color: goldColor),
//                     hintText: 'Enter your username',
//                     hintStyle: TextStyle(color: goldColor),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.1),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: Icon(Icons.person, color: goldColor),
//                   ),
//                   keyboardType: TextInputType.text,
//                   validator: (value) {
//                     if (value!.isEmpty) return "Please fill in your username";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: emailController,
//                   decoration: InputDecoration(
//                     labelText: 'Email',
//                     labelStyle: TextStyle(color: goldColor),
//                     hintText: 'Enter your email',
//                     hintStyle: TextStyle(color: goldColor),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.1),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: Icon(Icons.email, color: goldColor),
//                   ),
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (value) {
//                     if (value!.isEmpty) return "Please fill in your email";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: passwordController,
//                   decoration: InputDecoration(
//                     labelText: 'Password',
//                     labelStyle: TextStyle(color: goldColor),
//                     hintText: 'Enter your password',
//                     hintStyle: TextStyle(color: goldColor),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.1),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: Icon(Icons.lock, color: goldColor),
//                   ),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value!.isEmpty) return "Please fill in your password";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 20),
//                 TextFormField(
//                   controller: confirmPasswordController,
//                   decoration: InputDecoration(
//                     labelText: 'Confirm Password',
//                     labelStyle: TextStyle(color: goldColor),
//                     hintText: 'Confirm your password',
//                     hintStyle: TextStyle(color: goldColor),
//                     filled: true,
//                     fillColor: Colors.white.withOpacity(0.1),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(12.0),
//                     ),
//                     prefixIcon: Icon(Icons.lock, color: goldColor),
//                   ),
//                   obscureText: true,
//                   validator: (value) {
//                     if (value!.isEmpty) return "Please confirm your password";
//                     if (value != passwordController.text)
//                       return "Passwords do not match";
//                     return null;
//                   },
//                 ),
//                 const SizedBox(height: 30),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       padding: const EdgeInsets.symmetric(vertical: 16),
//                       backgroundColor: goldColor,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(12.0),
//                       ),
//                     ),
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         // Perform signup action
//                         print("Sign-up successful");
//                       }
//                     },
//                     child: const Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 GestureDetector(
//                   onTap: () {
//                     context.go(
//                         '/SignInPage'); // Navigate to SignInPage using GoRouter
//                   },
//                   child: Text(
//                     "Already have an account?",
//                     style: TextStyle(color: goldColor, fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  SignUpPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final Color goldColor = const Color(0xFFE9C575); // Gold color for styling

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(color: goldColor),
        ),
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme: IconThemeData(color: goldColor),
      ),
      body: Container(
        color: Colors.black,
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.person_add_alt_1,
                  size: 100,
                  color: goldColor,
                ),
                const SizedBox(height: 20),
                Text(
                  'Join Us',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: usernameController,
                  style: TextStyle(
                      color: goldColor), // Ensures the entered text is gold
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Enter your username',
                    hintStyle: TextStyle(
                        color: goldColor), // Ensures the hint text is gold
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.person, color: goldColor),
                  ),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value!.isEmpty) return "Please fill in your username";
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: emailController,
                  style: TextStyle(
                      color: goldColor), // Ensures the entered text is gold
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Enter your email',
                    hintStyle: TextStyle(
                        color: goldColor), // Ensures the hint text is gold
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.email, color: goldColor),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) return "Please fill in your email";
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  style: TextStyle(
                      color: goldColor), // Ensures the entered text is gold
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(
                        color: goldColor), // Ensures the hint text is gold
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.lock, color: goldColor),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) return "Please fill in your password";
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: confirmPasswordController,
                  style: TextStyle(
                      color: goldColor), // Ensures the entered text is gold
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: TextStyle(color: goldColor),
                    hintText: 'Confirm your password',
                    hintStyle: TextStyle(
                        color: goldColor), // Ensures the hint text is gold
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.1),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    prefixIcon: Icon(Icons.lock, color: goldColor),
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value!.isEmpty) return "Please confirm your password";
                    if (value != passwordController.text) {
                      return "Passwords do not match";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: goldColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Perform signup action
                        print("Sign-up successful");
                      }
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    context.go(
                        '/SignInPage'); // Navigate to SignInPage using GoRouter
                  },
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(color: goldColor, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}