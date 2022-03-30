import 'dart:async';

import 'package:quick_cab/exports.dart';

class ConfirmDestinationScreen extends StatefulWidget {
  const ConfirmDestinationScreen({Key? key}) : super(key: key);

  @override
  _ConfirmDestinationScreenState createState() =>
      _ConfirmDestinationScreenState();
}

class _ConfirmDestinationScreenState extends State<ConfirmDestinationScreen> {
  BitmapDescriptor? dropOffIcon;
  BitmapDescriptor? cabIcon;
  final DraggableScrollableController _draggableController =
      DraggableScrollableController();
  static const _initialCameraPosition =
      CameraPosition(target: LatLng(37.773972, -122.441287), zoom: 12.5);

  GoogleMapController? googleMapController;

  Directions? _info;
  static const Polyline kPolyLine = Polyline(
      polylineId: PolylineId('kPolyline'),
      points: [LatLng(37.773972, -122.441287), LatLng(37.773978, -122.4713963)],
      width: 3);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(size: Size(500, 300)),
            'assets/drop_off_icon.png')
        .then((d) {
      dropOffIcon = d;
    });
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(size: Size(500, 300)), 'assets/cab.png')
        .then((d) {
      cabIcon = d;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: ScreenUtil().screenHeight,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                child: Column(
                  children: [
                    Expanded(
                      child: GoogleMap(
                        mapType: MapType.normal,
                        myLocationButtonEnabled: true,
                        markers: {
                          // if (_origin != null) _origin!,
                          // if (_destination != null) _destination!,
                          if (cabIcon != null)
                            Marker(
                              markerId: const MarkerId('Origin'),
                              infoWindow: const InfoWindow(title: 'Origin'),
                              position: const LatLng(37.773972, -122.441287),
                              icon: cabIcon!,
                            ),
                          if (cabIcon != null)
                            Marker(
                              markerId: const MarkerId('Destination'),
                              infoWindow:
                                  const InfoWindow(title: 'Destination'),
                              position: const LatLng(37.773978, -122.4713963),
                              icon: dropOffIcon!,
                            ),
                        },
                        polylines: {
                          kPolyLine,
                        },
                        zoomControlsEnabled: false,
                        initialCameraPosition: _initialCameraPosition,
                        onMapCreated: (controller) =>
                            googleMapController = controller,
                      ),
                    ),
                    if (_info != null)
                      Positioned(
                        top: ScreenUtil().setHeight(20.0),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: ScreenUtil().setHeight(10),
                            horizontal: ScreenUtil().setWidth(15),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              ScreenUtil().radius(20),
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0, 2),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Text(
                            '${_info!.totalDistance}, ${_info!.totalDuration}',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: ScreenUtil().setSp(18),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(
                    top: ScreenUtil().setHeight(
                      20,
                    ),
                    left: ScreenUtil().setWidth(
                      20,
                    ),
                    right: ScreenUtil().setWidth(
                      20,
                    ),
                  ),
                  height: ScreenUtil().setHeight(230),
                  decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(
                        ScreenUtil().radius(40),
                      ),
                      topLeft: Radius.circular(
                        ScreenUtil().radius(40),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: ScreenUtil().setHeight(
                          5,
                        ),
                      ),
                      Text(
                        "Confirm pickup",
                        style: kTitleTextStyle.copyWith(
                            fontSize: ScreenUtil().setSp(16)),
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(
                          5,
                        ),
                      ),
                      LocationCard(
                        onPressed: () {},
                        locationName: 'Internet city - Business tower',
                        locationDetails:
                            'Dubai, internet city - barsha heights...',
                      ),
                      SizedBox(
                        height: ScreenUtil().setHeight(
                          5,
                        ),
                      ),
                      DefaultButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RideDetailsScreen(),
                            ),
                          );
                        },
                        title: "Confirm ride",
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  buildSecondBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      enableDrag: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(
            ScreenUtil().radius(20),
          ),
        ),
      ),
      builder: (context) => Container(
        padding: EdgeInsets.only(
          top: ScreenUtil().setHeight(
            20,
          ),
          left: ScreenUtil().setWidth(
            20,
          ),
          right: ScreenUtil().setWidth(
            20,
          ),
        ),
        height: ScreenUtil().setHeight(280),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              ScreenUtil().radius(40),
            ),
            topLeft: Radius.circular(
              ScreenUtil().radius(40),
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(
                5,
              ),
            ),
            Text(
              "Confirm pickup",
              style: kTitleTextStyle.copyWith(fontSize: ScreenUtil().setSp(16)),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(
                5,
              ),
            ),
            LocationCard(
              onPressed: () {},
              locationName: 'Internet city - Business tower',
              locationDetails: 'Dubai, internet city - barsha heights...',
            )
          ],
        ),
      ),
    );
  }

// _addMarker(LatLng pos) async {
//   if (_origin == null || (_origin != null && _destination != null)) {
//     setState(() {
//       _origin = Marker(
//           markerId: const MarkerId('Origin'),
//           infoWindow: const InfoWindow(title: 'Origin'),
//           position: pos,
//           icon: BitmapDescriptor.defaultMarkerWithHue(
//               BitmapDescriptor.hueBlue));
//       _destination = null;
//       _info = null;
//     });
//   } else {
//     setState(() {
//       _destination = Marker(
//         markerId: const MarkerId('Destination'),
//         infoWindow: const InfoWindow(title: 'Destination'),
//         position: pos,
//         icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
//       );
//     });
//     //Get Directions
//     final directions = await DirectionsRepository()
//         .getDirections(origin: _origin!.position, destination: pos);
//     setState(() {
//       _info = directions;
//     });
//     _info != null
//         ? CameraUpdate.newLatLngBounds(_info!.bounds!, 100.0)
//         : CameraUpdate.newCameraPosition(_initialCameraPosition);
//   }
// }
}
