import 'package:flutter/material.dart';
import 'package:untitled3/Register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('MealCare'),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Center(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30, 60, 30, 30),
                    child: Image(
                      image: AssetImage('assets/healthy-food.png'),
                      width: 150,
                      height: 150,
                    ),
                  ),
                ),

                const Center(
                  child: Text(
                    'Welcome to MealCare',
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                            fontSize: 20,
                            color: Colors.grey
                        ),
                        prefixIcon: Icon(Icons.email)
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              labelText: 'Mật khẩu',
                              labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey
                              ),
                              prefixIcon: Icon(Icons.password)
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: showPassword,
                          child: const Text(
                            'SHOW',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                      )
                    ],
                  ),
                ),


                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Text(
                        'Quên mật khẩu',
                        style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                Container(
                  width: 250,
                  height: 70,
                  padding: const EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    onPressed: onSignInclicked,
                    child: const Text(
                        'Đăng nhập',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                TextButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context)=> const Register()
                        ));
                  },
                  child: const Text(
                    'ĐĂNG KÝ TÀI KHOẢN',
                    style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }

  void showPassword() { // hàm này đang k thực thi được need help
    bool obscureText = true;
    setState(() {
      obscureText = !obscureText;
    });
  }
  void onSignInclicked() {

  }
}

