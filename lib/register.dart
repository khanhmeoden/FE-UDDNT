import 'package:flutter/material.dart';
import 'main.dart';

class Register extends StatefulWidget{
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('Đăng ký'),
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Center(
                  child: Text(
                    'Nhập thông tin của bạn',
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

                const Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: Stack(
                    alignment: AlignmentDirectional.centerEnd,
                    children: <Widget>[
                      Padding(
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
                    ],
                  ),
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
                    onPressed: (){
                      // tạo hồ sơ trên main screen
                    },
                    child: const Text(
                      'Tạo hồ sơ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

