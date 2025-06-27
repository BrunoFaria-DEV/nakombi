import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nakombi/categorias/pages/adicionar_categoria.dart';
import 'package:nakombi/categorias/pages/lista_categoria_page.dart';
import 'package:nakombi/clientes/pages/perfil_page.dart';
import 'package:nakombi/commons/my_card.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Nakombi Baixa Gastronomia Cuiabana'), centerTitle: true),
      body:
          [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
             
              child: Center(
                child: SizedBox(
                  width: 250,
                  child: Column(
                    children: [
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                      MyCard("Vendas", "Clientes",Colors.blue, Colors.blue.shade200),
                    ],
                  )
                )
              ),
            ),
            Container(color: Colors.greenAccent, child: Center(child: Text("Verde"))),
            Container(color: Colors.blueAccent),
            PerfilPage(),
          ][_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (value) {
          setState(() {
            _index = value;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Vendas'),
          NavigationDestination(icon: Icon(Icons.list), label: 'Relatórios'),
          NavigationDestination(icon: Icon(Icons.person_2), label: 'Perfil de Usuário'),
        ],
      ),
      drawer: Drawer(
        width: 250,
        child: SafeArea(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Image.asset('assets/logo/kombi2.png', width: 150, height: 150),
                    //SvgPicture.asset('assets/logo/Logo.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Nakombi Gastro',
                      style: TextStyle(fontWeight: FontWeight.w600, color: TextTheme.of(context).bodyMedium!.color),
                    ),
                    //SvgPicture.asset('assets/logo/Logo.svg'),
                  ),
                ],
              ),
              const Divider(),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    // SizedBox(child: DrawerHeader(child: Text('Nakombi Gastro'))),
                    Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: ExpansionTile(
                        // shape: Border(),
                        initiallyExpanded: isSelected,
                        leading: SvgPicture.asset(
                          isSelected ? 'assets/icons/home_filled.svg' : 'assets/icons/home_light.svg',
                        ),
                        onExpansionChanged: (value) {
                          setState(() {
                            isSelected = value;
                          });
                        },
                        title: Text(
                          'Gerenciamento',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: TextTheme.of(context).bodyMedium!.color,
                          ),
                        ),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 35.0),
                            child: ListTile(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).push(MaterialPageRoute(builder: (context) => ListaCategoriaPage()));
                              },
                              title: Text(
                                'Categorias',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: TextTheme.of(context).bodySmall!.color,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.people),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      title: Text(
                        'Perfil de Usuário',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: TextTheme.of(context).bodyMedium!.color,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.shop),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      title: Text(
                        'Vendas', 
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: TextTheme.of(context).bodyMedium!.color,
                        ),
                      ),
                    ),
                    ListTile(
                      onTap: () {},
                      leading: Icon(Icons.shop),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      title: Text(
                        'Pedidos',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          color: TextTheme.of(context).bodyMedium!.color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

