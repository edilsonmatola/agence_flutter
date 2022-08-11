import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final LatLng _initialcameraposition = const LatLng(20.5937, 78.9629);

  // void _onMapCreated(GoogleMapController cntlr) {
  //   _controller = cntlr;
  //   _location.onLocationChanged.listen((location) {
  //     _controller.animateCamera(
  //       CameraUpdate.newCameraPosition(
  //         CameraPosition(
  //           target: LatLng(
  //             location.latitude as double,
  //             location.longitude as double,
  //           ),
  //           zoom: 15,
  //         ),
  //       ),
  //     );
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _initialcameraposition,
              zoom: 15,
            ),
          ),
        ),
        // body: SingleChildScrollView(
        //   padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
        //   child: Column(
        //     children: [
        //       // * Google Maps
        //       _initialcameraposition == null
        //           ? const Center(
        //               child: CircularProgressIndicator(
        //                 color: Colors.black,
        //               ),
        //             )
        //           : SizedBox(
        //               width: deviceWidth,
        //               height: deviceHeight * .3,
        //               child: GoogleMap(
        //                 initialCameraPosition:
        //                     CameraPosition(target: _initialcameraposition),
        //                 mapType: MapType.normal,
        //                 onMapCreated: _onMapCreated,
        //                 myLocationEnabled: true,
        //               ),
        //             ),
        //       const SizedBox(
        //         height: 12,
        //       ),
        //       SizedBox(
        //         width: deviceWidth,
        //         height: deviceHeight * .4,
        //         child: Card(
        //           shadowColor: Colors.black,
        //           shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(6),
        //           ),
        //         ),
        //       ),
        //       const SizedBox(
        //         height: 16,
        //       ),
        //       SizedBox(
        //         width: deviceWidth * .9,
        //         height: deviceHeight * .1,
        //         child: ElevatedButton(
        //           style: ElevatedButton.styleFrom(
        //             shape: RoundedRectangleBorder(
        //               borderRadius: BorderRadius.circular(20),
        //             ),
        //           ),
        //           onPressed: () {},
        //           child: const Text(
        //             'Comprar',
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        // ),
      ),
    );
  }
}
