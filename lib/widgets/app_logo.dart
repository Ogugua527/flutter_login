import 'package:flutter/material.dart';

/// Reusable Logo Widget
class AppLogo extends StatelessWidget {
  final double size;
  final String? assetPath;
  const AppLogo({super.key, this.size = 80, this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: assetPath != null ? const EdgeInsets.all(4) : EdgeInsets.zero,
      decoration: BoxDecoration(
        color: assetPath != null ? Colors.white : null,
        shape: BoxShape.circle,
        gradient: assetPath == null
            ? const LinearGradient(
                colors: [Color(0xFF4F46E5), Color(0xFF6366F1)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )
            : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.15),
            blurRadius: 12,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: ClipOval(
        child: assetPath != null
            ? Image.asset(
                assetPath!,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.rocket_launch_rounded,
                  size: 40,
                  color: Colors.white,
                ),
              )
            : const Icon(
                Icons.rocket_launch_rounded,
                size: 40,
                color: Colors.white,
              ),
      ),
    );
  }
}
