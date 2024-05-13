import "package:flutter/material.dart";
import "package:gap/gap.dart";
import "package:get/get.dart";

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        onPressed: () {},
        backgroundColor: Color(0xffffffff),
        child: Icon(
          Icons.qr_code_scanner,
          color: Color(0xff000000),
          size: 35,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Gap(20),
            topBar(),
            location(),
            Gap(35),
            searcBar(),
            Gap(20),
            categorias(),
            Gap(20),
            cartas(),
          ],
        ),
      ),
    );
  }

  Widget topBar() {
    return Row(
      children: [
        //perfil del usuario
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/usuario.jpg'),
        ),
        const Gap(24),
        //texto nombre del usuario
        const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Bienvenido",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff663a3a))),
          Text("Juan",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff8b5151))),
        ]),
        const Spacer(),
        //icono de notificacion
        CircleAvatar(
          radius: 21,
          backgroundColor: const Color(0xffd94c4c),
          child: Image.asset(
            "assets/notificacion.png",
            height: 20.0,
          ),
        )
      ],
    );
  }

  //texto de ubicacion
  Widget location() {
    return const Row(
      children: [
        Icon(Icons.location_on_sharp, color: Color(0xffa83a3a)),
        Gap(6.0),
        Text("Suc. Torres Sur",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff663a3a))),
      ],
    );
  }

  //barra de busqueda
  Widget searcBar() {
    return Container(
      height: 40.0,
      width: Get.width,
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Color(0xffd2cccc)),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Image.asset("assets/lupa.png"),
            suffixIcon: Image.asset("assets/opciones.png"),
            suffixIconConstraints: BoxConstraints(maxHeight: 24.0),
            prefixIconConstraints: BoxConstraints(maxHeight: 20.0),
            border: InputBorder.none,
            fillColor: Color(0xffd2cccc),
            filled: true,
            hintText: "Buscar Aqui",
            hintStyle: TextStyle(fontSize: 18, color: Color(0xff585151))),
      ),
    );
  }

  Widget categorias() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categorias",
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Gap(10.0),
        SizedBox(
          height: 42,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    color: Color(0xffd40303)),
                child: Center(
                    child: Text(
                  "Todo",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffffffff), width: 1.5),
                    color: Color(0xfff43e3e)),
                child: Center(
                    child: Text(
                  "Herramientas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffffffff), width: 1.5),
                    color: Color(0xfff43e3e)),
                child: Center(
                    child: Text(
                  "Partes",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffffffff), width: 1.5),
                    color: Color(0xfff43e3e)),
                child: Center(
                    child: Text(
                  "Accesorios",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
              Container(
                height: 40,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(29),
                    border: Border.all(color: Color(0xffffffff), width: 1.5),
                    color: Color(0xfff43e3e)),
                child: Center(
                    child: Text(
                  "Mas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                )),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget cartas() {
    return Expanded(
      child: GridView.count(
        primary: false,
        childAspectRatio: 0.83,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffcb2c05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffffcfc),
                    radius: 16,
                    child: Icon(Icons.star, color: Color(0xff000000)),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/bateria.png",
                      height: 90,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "BATERIA",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Gap(1.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Color(0xffcb2c05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text("\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Color(0xffffffff)))),
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 15,
                          child: Icon(Icons.add_shopping_cart,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffcb2c05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffffcfc),
                    radius: 16,
                    child: Icon(Icons.star, color: Color(0xff000000)),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/i11.png",
                      height: 90,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "RESORTE",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Gap(1.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Color(0xffcb2c05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text("\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Color(0xffffffff)))),
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 15,
                          child: Icon(Icons.add_shopping_cart,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffcb2c05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffffcfc),
                    radius: 16,
                    child: Icon(Icons.star, color: Color(0xff000000)),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/i14.png",
                      height: 90,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "ACEITES",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Gap(1.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Color(0xffcb2c05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text("\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Color(0xffffffff)))),
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 15,
                          child: Icon(Icons.add_shopping_cart,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffcb2c05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffffcfc),
                    radius: 16,
                    child: Icon(Icons.star, color: Color(0xff000000)),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/i21.png",
                      height: 90,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "LLANTAS",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Gap(1.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Color(0xffcb2c05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text("\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Color(0xffffffff)))),
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 15,
                          child: Icon(Icons.add_shopping_cart,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffcb2c05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffffcfc),
                    radius: 16,
                    child: Icon(Icons.star, color: Color(0xff000000)),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/i23.jpg",
                      height: 90,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "FILTRO",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Gap(1.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Color(0xffcb2c05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text("\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Color(0xffffffff)))),
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 15,
                          child: Icon(Icons.add_shopping_cart,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xffcb2c05),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: CircleAvatar(
                    backgroundColor: Color(0xfffffcfc),
                    radius: 16,
                    child: Icon(Icons.star, color: Color(0xff000000)),
                  ),
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/i19.jpg",
                      height: 90,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "CASCOS",
                              style: TextStyle(
                                  fontSize: 19, fontWeight: FontWeight.bold),
                            ),
                            Gap(1.0),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10.0, vertical: 4.0),
                              decoration: BoxDecoration(
                                color: Color(0xffcb2c05),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text("\$40.00",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 15,
                                          color: Color(0xffffffff)))),
                            )
                          ],
                        ),
                        Spacer(),
                        CircleAvatar(
                          backgroundColor: Color(0xff202020),
                          radius: 15,
                          child: Icon(Icons.add_shopping_cart,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
