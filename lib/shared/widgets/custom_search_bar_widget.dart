import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBarWidget extends StatelessWidget {
  final String searchText;

  const CustomSearchBarWidget({super.key, required this.searchText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Search Bar
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          color: Color(0xFF330072),
          child: TextField(
            onChanged: (value) => print('Pikachu'),
            //ref.read(searchProvider.notifier).state = value,
            style: TextStyle(color: Color(0xFF330072)),
            decoration: InputDecoration(
              hintText: "¿Qué raza buscas?",
              hintStyle: TextStyle(color: Color(0xFF330072)),
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              prefixIcon: Icon(Icons.search, color: Color(0xFF330072)),
              suffixIcon: searchText.isNotEmpty
                  ? IconButton(
                      icon: Icon(Icons.clear, color: Color(0xFF330072)),
                      onPressed: () => print(
                          'Pikachu clear') // ref.read(searchProvider.notifier).state = "",
                      )
                  : null,
            ),
          ),
        ),
        // Search Results
        searchText.isNotEmpty
            ? Text('PIjs')
            // ? Expanded(
            //     child: ListView.builder(
            //       itemCount: 3,
            //       itemBuilder: (context, index) {
            //         return ListTile(
            //           title: Text('index $index',
            //               style: TextStyle(color: Colors.white)),
            //           onTap: () {
            //             //ref.read(searchProvider.notifier).state = "";
            //             // Aquí puedes navegar a la pantalla de detalle de la raza
            //           },
            //         );
            //       },
            //     ),
            //   )
            : Center(
                child: Text(
                  "Busca una raza de gato",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
      ],
    );
  }
}
