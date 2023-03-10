import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: const [
            CircleAvatar(
              radius: 18.0,
              backgroundImage: NetworkImage('https://scontent.fcai1-2.fna.fbcdn.net/v/t39.30808-6/298690539_3258907411064357_7659641410637328191_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEP0z8sDedlos6r9A3Za7eCBuQOlDAX2NQG5A6UMBfY1Iph_WwsxCcBrDSszwdOvuuXTvqFddlh2FYUHe9l93Jv&_nc_ohc=F2BfmZaeybQAX9H-dzE&_nc_ht=scontent.fcai1-2.fna&oh=00_AT9MKKnSr2RSZ4nWALH_iEP2lOrrOfhTRn9sWloK_5ZBjw&oe=6309FE9D')
            ),
            SizedBox(
              width: 6,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
        actions: [
          IconButton(onPressed: (){},
              icon: const CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.camera_alt_rounded,
                  color: Colors.white,
                  size: 16.0,
                ),
              )
          ),
          IconButton(onPressed: (){},
              icon: const CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.edit,
                  color: Colors.white,
                  size: 16.0,
                ),
              )
          )

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[200],

              ),
              padding: EdgeInsets.all(8.0),
              child: Row(
                children:
                const [
                  Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Search'
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
