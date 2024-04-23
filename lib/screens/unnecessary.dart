// floating action button at the bottom of the navigation bar
      //FloatingActionButton(
                //onPressed: () {},
                //backgroundColor: Colors.indigo,
                //child: Icon(Icons.phone),),

//bottom AppBar
       // bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
       // elevation: 0,
       // child: Padding(
         // padding: const EdgeInsets.symmetric(horizontal: 20),
          //child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //children: [
              //BottomNavItem(icon: Icons.home,text: 'Home',isSelected: true,),
              //BottomNavItem(icon: Icons.notifications,text: 'Notifications',),
              //BottomNavItem(icon: Icons.history,text: 'History',),
              //BottomNavItem(icon: Icons.person,text: 'Profile',),],),),),

// class BottomNavItem extends StatelessWidget {
//final IconData icon;final String text;final bool isSelected;
//const BottomNavItem({required this.icon,required this.text,this.isSelected = false,});

 // @override Widget build(BuildContext context) {
  //return Column( mainAxisSize: MainAxisSize.min,children: [Icon(icon,color: isSelected ? Colors.indigo : Colors.grey,size: 30,),
    //SizedBox(height: 6),
    //Text(text,style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.bold,color: isSelected ? Colors.indigo : Colors.grey,),),],);}

// GridView.Builder
//  GridView.builder(
           //   shrinkWrap: true,
             // itemCount: 4,
            //gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //  crossAxisCount: 4,
               // crossAxisSpacing: 10, 
               // mainAxisSpacing: 10, ),
              //itemBuilder: (context, index) => Container(
                //decoration: BoxDecoration(
                  //color: Colors.grey[200], 
                  //borderRadius: BorderRadius.circular(10),),
                //child: Column(
                  //children: [
                    //Container(
                      //padding: EdgeInsets.all(10), 
                      //height: 40,
                      //width: 40,
                      //decoration: BoxDecoration(
                        //color: Colors.blue, 
                        //borderRadius: BorderRadius.circular(10),),
                      //child: Image.asset(
                        //'assets/images/med/med4pic.jpg',
                        //color: Colors.blue, ),),
                    //Icon(
                      //Icons.more_vert,
                      //color: Colors.white10,),
                    //Text('Documents',
                      //maxLines: 1,
                      //overflow: TextOverflow.ellipsis,),
                    //Stack(children: [
                        //Container(width: double.infinity,height: 5,decoration: BoxDecoration(color: Colors.blue.withOpacity(0.1),
                        //borderRadius: BorderRadius.circular(10),),),
    //LayoutBuilder(
      //builder: (context, constraints) {
      // double percentage = 50;
      // return Container(
      // width: constraints.maxWidth * (percentage / 100),
      // height: 5,
      //decoration: BoxDecoration(
      //color: Colors.blue,
      //  borderRadius: BorderRadius.circular(10),),);},)],),],),),)



//GriedView.count
        //GridView.count(
                  //crossAxisCount: 2,
                  //crossAxisSpacing: 10,
                  //mainAxisSpacing: 10,
             //children: [
          //DashboardSection(
            //sectionTitle: 'Doctor Section',
            //icon: Icons.local_hospital,),
          //DashboardSection(
            //sectionTitle: 'Drugs Section',
            //icon: Icons.medical_services,),
          //DashboardSection(
            //sectionTitle: 'Reviews',
            //icon: Icons.rate_review,),
          //DashboardSection(
            //sectionTitle: 'Delivery',
            //icon: Icons.delivery_dining,),],),

//class for GridView Count            