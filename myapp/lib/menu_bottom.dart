import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          
          onTap: (int index){
            switch (index) {
              case 0:
                Navigator.pushNamed(context, '/');
                break;
              case 1:
                Navigator.pushNamed(context, '/rental');
                break;
              case 2:
                Navigator.pushNamed(context, '/buy');
                break;
              case 3:
                Navigator.pushNamed(context, '/');
                break;
              case 4:
                Navigator.pushNamed(context, '/');
                break;
              default:
            }
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(235, 235, 235, 1),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.abc), label: '대여'),
            BottomNavigationBarItem(icon: Icon(Icons.credit_card), label: '구매'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: '장바구니'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: '내 정보'),
          ],
    );
  }
}