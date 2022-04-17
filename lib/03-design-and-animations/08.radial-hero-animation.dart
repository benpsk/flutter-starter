import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'dart:math' as math;

class Photo extends StatelessWidget {
  const Photo({Key? key, required this.photo, required this.onTap})
      : super(key: key);

  final String photo;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor.withOpacity(0.25),
      child: InkWell(
        onTap: onTap,
        child: LayoutBuilder(
          builder: (context, size) {
            return Image.asset(
              photo,
              fit: BoxFit.contain,
            );
          },
        ),
      ),
    );
  }
}

class RadialExpansion extends StatelessWidget {
  const RadialExpansion(
      {Key? key, required this.maxRadius, required this.child})
      : clipRectSize = 2.0 * (maxRadius / math.sqrt2),
        super(key: key);

  final double maxRadius;
  final double clipRectSize;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Center(
        child: SizedBox(
          width: clipRectSize,
          height: clipRectSize,
          child: ClipRect(
            child: child,
          ),
        ),
      ),
    );
  }
}

class RadialExpansionDemo extends StatelessWidget {
  const RadialExpansionDemo({Key? key}) : super(key: key);

  static const double kMinRadius = 32.0;
  static const double kMaxRadius = 128.0;
  static const opacityCurve = Interval(0.0, 0.75, curve: Curves.fastOutSlowIn);

  static RectTween _createRectTween(begin, end) {
    return MaterialRectCenterArcTween(begin: begin, end: end);
  }

  static Widget _buildPage(
      BuildContext context, String imageName, String description) {
    return Container(
      color: Theme.of(context).canvasColor,
      child: Center(
        child: Card(
          elevation: 8.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                  width: kMaxRadius * 2.0,
                  height: kMaxRadius * 2.0,
                  child: Hero(
                    createRectTween: (begin, end) =>
                        _createRectTween(begin, end),
                    tag: imageName,
                    child: RadialExpansion(
                        maxRadius: kMaxRadius,
                        child: Photo(
                            photo: imageName,
                            onTap: () => Navigator.of(context).pop)),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHero(
      BuildContext context, String imageName, String description) {
    return SizedBox(
      width: kMinRadius * 3.0,
      height: kMinRadius * 3.0,
      child: Hero(
          createRectTween: (begin, end) {
            return _createRectTween(begin, end);
          },
          tag: imageName,
          child: RadialExpansion(
              maxRadius: kMaxRadius,
              child: Photo(
                  photo: imageName,
                  onTap: () {
                    Navigator.of(context).push(PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) {
                      return AnimatedBuilder(
                          animation: animation,
                          builder: (context, child) {
                            return Opacity(
                              opacity: opacityCurve.transform(animation.value),
                              child:
                                  _buildPage(context, imageName, description),
                            );
                          });
                    }));
                  }))),
    );
  }

  @override
  Widget build(BuildContext context) {
    // animation speed
    timeDilation = 4.0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radial Hero Animation'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(33.0),
        child: Row(
          children: [
            _buildHero(
                context, 'assets/images/01-avengers.jpg', 'Captain America'),
            _buildHero(context, 'assets/images/02-avengers.jpg', 'Iron Man'),
            _buildHero(context, 'assets/images/03-avengers.jpg', 'Spider Man')
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RadialExpansionDemo(),
    );
  }
}

void main(List<String> args) {
  runApp(const MyApp());
}
