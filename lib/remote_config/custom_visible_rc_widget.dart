import 'package:curso_intermediario/remote_config/custom_remote_config.dart';
import 'package:flutter/material.dart';

class CustomVisibleRCWidget extends StatelessWidget {
  final Widget child;
  final String rmKey;
  final dynamic defaultValue;

  const CustomVisibleRCWidget({
    Key? key,
    required this.child,
    required this.rmKey,
    required this.defaultValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      child: child,
      visible: CustomRemoteConfig().getValueOrDefault(
        key: rmKey,
        defaultValue: defaultValue,
      ),
    );
  }
}
