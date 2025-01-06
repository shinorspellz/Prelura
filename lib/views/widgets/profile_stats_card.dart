import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../res/colors.dart';

class ProfileStatsCard extends ConsumerWidget {
  const ProfileStatsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color(0xFFab28b2),
            Color(0XFFa126a8),
            Color(0xFF8a2190),
            Color(0xFF8a2190),
          ], // Purple gradient
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 32.0,
          right: 32.0,
          top: 24,
          bottom: 18,
        ),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Total Sales
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("£10,250", style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: PreluraColors.white, fontSize: 24, fontWeight: FontWeight.w900)),
                      const SizedBox(height: 4),
                      Text("Total sales made", style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: PreluraColors.white, fontSize: 14, fontWeight: FontWeight.w400)),
                    ],
                  ),
                  // Total Items Uploaded
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("1024", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: PreluraColors.white, fontSize: 24, fontWeight: FontWeight.w900)),
                          const SizedBox(width: 8),
                          Text("459 Sold", style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: const Color(0xFF13E969), fontSize: 12, fontWeight: FontWeight.w500)),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Text("Total items uploaded", style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: PreluraColors.white, fontSize: 14, fontWeight: FontWeight.w400)),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            // View More Stats Button
            const SizedBox(height: 32),
            Text("View more stats", style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: PreluraColors.white, fontSize: 14, fontWeight: FontWeight.w700)),
          ],
        ),
      ),
    );
  }
}
