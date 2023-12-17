import 'package:flutter/material.dart';
import 'sidebarMenu.dart';
// import thêm

class NavBar extends StatelessWidget{
  const NavBar({super.key});

  @override
  Widget build(BuildContext context){
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          UserAccountsDrawerHeader(
              accountName: Text('Examole'),
              accountEmail: Text('Examole'),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  /*
                  child: Image ...... (avatar người dùng)
                  */
                ),
              ),
            decoration: BoxDecoration(
              color: Colors.green
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Thông tin chung'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          ListTile(
            leading: Icon(Icons.my_location),
            title: Text('Mục tiêu'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          ListTile(
            leading: Icon(Icons.book_outlined),
            title: Text('Nhật ký bữa ăn'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          ListTile(
            leading: Icon(Icons.sports_gymnastics),
            title: Text('Bài tập'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          Divider(),
          ListTile(
            title: Text('CÔNG CỤ'),
          ),
          ListTile(
            leading: Icon(Icons.change_circle_outlined),
            title: Text('Chuyển đổi chỉ số'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          ListTile(
            leading: Icon(Icons.calculate),
            title: Text('Tính toán calo'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Tạo lời nhắc'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          ListTile(
            leading: Icon(Icons.note),
            title: Text('Tạo ghi chú'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Cài đặt'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Góp ý'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Thoát'),
            // onTap: () => ... (sự kiện khi nhấn)
          ),
        ],
      ),
    );
  }
}
