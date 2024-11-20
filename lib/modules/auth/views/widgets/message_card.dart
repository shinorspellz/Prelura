import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.username,
    required this.message,
    required this.time,
    required this.avatarUrl,
    required this.itemImageUrl,
  });

  final String username;
  final String message;
  final String time;
  final String avatarUrl;
  final String itemImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).dividerColor,
              width: 2.0,
            ),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Avatar
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(avatarUrl),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  username,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 5),
                Text(
                  message,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall
                      ?.copyWith(fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 5),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    itemImageUrl,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                time,
                style: const TextStyle(color: Colors.grey, fontSize: 12),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
