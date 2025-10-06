
import 'package:app/main.dart';

import 'package:flutter/material.dart';


class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.asset(
              'assets/map.png',
              width: 100,
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>
                    const MyApp()
                    ),
                    );
                  },
                  child: Text(
                     "HPU Location",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: Theme.of(context).primaryColor,
                      
                      ),
                      
                  ),
                  
                ),
                 // ignore: prefer_const_constructors
                 SizedBox(
                  height: 5
                  ),
                Text(
                  "ALHAWASH PRIVATE UNIVER",
                  style: Theme.of(context).textTheme.labelLarge,
                )
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
