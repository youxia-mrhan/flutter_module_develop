import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:common/provider/counter.dart';
import 'package:home/home_page.dart';
import 'package:order/order_page.dart';
import 'package:personal/personal_page.dart';
import 'package:common/model/message.dart';
import 'package:common/error/error_page.dart';
import 'package:common/router/routers.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => Counter(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      title: 'Flutter Demo',
      onGenerateRoute: (settings) {
        if (settings.name == Home.homePage) {
          final args = settings.arguments as Message;
          return MaterialPageRoute(
            builder: (context) {
              return HomePage(
                message: args,
              );
            },
          );
        }
        if (settings.name == Order.orderPage) {
          final args = settings.arguments as Message;
          return MaterialPageRoute(
            builder: (context) {
              return OrderPage(
                message: args,
              );
            },
          );
        }
        if (settings.name == Personal.personalPage) {
          final args = settings.arguments as Message;
          return MaterialPageRoute(
            builder: (context) {
              return PersonalPage(
                message: args,
              );
            },
          );
        }
        return MaterialPageRoute(
          builder: (context) {
            return const ErrorPage();
          },
        );
      },
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Message? message;

  const MyHomePage({super.key, this.message});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Message?;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AppPage：${args?.info}',
          style: const TextStyle(fontSize: 16),
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<Counter>(
              builder: (_, counter, __) => Text(
                '${counter.count}',
                style: const TextStyle(fontSize: 26),
              ),
            ),
            Consumer<Counter>(
              builder: (_, counter, __) => ElevatedButton(
                onPressed: () {
                  counter.compute();
                },
                child: const Text(
                  '+1',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  Home.homePage,
                  arguments: Message('from - app - info'),
                );
              },
              child: const Text(
                'To Home Page',
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
