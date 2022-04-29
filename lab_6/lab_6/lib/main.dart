import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes:{
      '/':(BuildContext context) => const MainScreen(),
    },
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Возвращение значения')),
      body: Center(child: ElevatedButton(
          onPressed: ()async{
            var result = await Navigator.push<String>(context,MaterialPageRoute(builder: (context) =>  const SecondScreen(),));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('$result'), backgroundColor: Colors.black,)
            );
          },
          child: const Text('Приступить к выбору...'),),),
    );
  }
}
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  final String res1 = 'Да!';
  final String res2 = 'Нет.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Выберите любой вариант')),
      body: Center(
        child:(
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context,res1);
              },
              child:  Text(res1),
            ),

            ElevatedButton(
              onPressed: (){
                Navigator.maybePop(context,res2);
              },
              child:  Text(res2),
            ),
          ],
        )
        )
      ),
    );
  }
}
