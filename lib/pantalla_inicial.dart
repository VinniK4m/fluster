import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PantallaInicial extends StatelessWidget{
  const PantallaInicial({super.key});
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        color: Color.fromARGB(219, 11, 77, 220),
        fontSize: 14,
        fontFamily: "Arial"
    );
      return  Scaffold(
        appBar: AppBar(
          title: const Text("Titulo principal - Bar 1"),
          backgroundColor: Colors.blue,
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          width: double.infinity,
          height: 360,
          child: Container(

            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        child: Text("V"),
                      ),
                      SizedBox(width: 10),
                      Text("Vinni",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color.fromARGB(
                          255, 244, 67, 54)))
                    ],
                  ),
                ),
                Text("Espacio de github, para llegar a el puedes ingresar a "
                    "http://github.com y desde alli buscar el usuario vinnikam ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis),
                Container(
                  width: 200,
                  height: 200,
                  child: Image.network("https://avatars.githubusercontent.com/u/54365595?v=4",
                  fit: BoxFit.cover,)
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton(onPressed: (){},
                          child: Text("Me gusta",style: textStyle)),
                      TextButton(onPressed: (){},
                          child: Text("Comentar",style: textStyle)),
                      TextButton(onPressed: (){},
                          child: Text("Compartir",style: textStyle)),
                    ],
                  ),
                )
              ],
            ),
          ),
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(10),

        ),
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
            onPressed: (){}, child: Icon(Icons.add)),
      );

  }

}