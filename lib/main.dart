import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MianPage(),
    );
  }
}



class MianPage extends StatefulWidget {
  const MianPage({super.key});

  @override
  State<MianPage> createState() => _MianPageState();
}

class _MianPageState extends State<MianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,
        title: const Text("Example of showDialog",style: TextStyle(color: Colors.white),),
      ),
      body: ElevatedButton.icon(onPressed: (){
        showDialog(
            barrierColor:Colors.green,
            barrierDismissible:false,
            context: context,
            builder: (context)=>
                AlertDialog(
                  backgroundColor: Colors.lime,
                  icon: const Icon(Icons.question_mark_outlined),
                  iconColor: Colors.red,
                  title: const Text("رأيك يهمنا"),
                  content:const Text("هل تحب المواد التي يقوم الدكتور رائد جابري بتدريسها ؟"),
                  actions: [
                    TextButton(onPressed: (){Navigator.of(context).pop();},
                        child: const Text("نعم")),
                    TextButton(onPressed: (){Navigator.of(context).pop();},
                        child: const Text("لا")),
                  ],

                ));
      },
          icon: const Icon(Icons.question_mark),
          label: const Text("choose")),
    );
  }
}
