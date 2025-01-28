// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:prelura_app/res/colors.dart';
import 'package:prelura_app/views/widgets/app_bar.dart';
import 'package:prelura_app/views/widgets/app_button_with_loader.dart';

@RoutePage()
class ListOfContacts extends StatefulWidget {
  const ListOfContacts({super.key});

  @override
  State<ListOfContacts> createState() => _ListOfContactsState();
}

class _ListOfContactsState extends State<ListOfContacts> {
  @override
  void initState() {
    loadInitialContacts();
    scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(_scrollListener);
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: _buildAppBar(colorScheme),
      body: SafeArea(
        child: isLoading
            ? const Center(child: CircularProgressIndicator.adaptive())
            : ListView.separated(
                controller: scrollController,
                itemCount: displayedContacts.length + (hasMoreContacts ? 1 : 0),
                separatorBuilder: (context, index) =>
                    const Divider(thickness: 0.4),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  // Show loading indicator at the bottom when loading more
                  if (index >= displayedContacts.length) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child:
                          Center(child: CircularProgressIndicator.adaptive()),
                    );
                  }

                  final contact = displayedContacts[index];
                  final phoneNumber = contact.phones.isNotEmpty
                      ? contact.phones.first.number
                      : null;
                  final isSelected = selectedContacts.contains(phoneNumber);

                  return ListTile(
                    onTap: phoneNumber?.isNotEmpty == true
                        ? () => toggleSelection(contact)
                        : null,
                    enabled: phoneNumber?.isNotEmpty == true,
                    dense: true,
                    trailing: Radio.adaptive(
                      value: true,
                      groupValue: isSelected,
                      activeColor: colorScheme.primary,
                      onChanged: phoneNumber?.isNotEmpty == true
                          ? (value) => toggleSelection(contact)
                          : null,
                    ),
                    title: Text(
                      contact.structuredName?.displayName ??
                          contact.displayName,
                      textAlign: TextAlign.start,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: phoneNumber?.isNotEmpty == true
                                ? Theme.of(context).textTheme.bodyMedium?.color
                                : Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.color!
                                    .withOpacity(0.5),
                            fontSize: 14,
                          ),
                    ),
                  );
                },
              ),
      ),
      bottomNavigationBar: _buildBottomNav(colorScheme, context),
    );
  }

  _buildBottomNav(ColorScheme colorScheme, BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(color: colorScheme.surface),
      child: PreluraButtonWithLoader(
        buttonTitle: "Invite",
        buttonColor: PreluraColors.primaryColor,
        onPressed: selectedContacts.isEmpty
            ? null
            : () {
                inviteSelectedContacts(context);
              },
      ),
    );
  }

  _buildAppBar(ColorScheme colorScheme) {
    return PreluraAppBar(
      leadingIcon: Container(),
      centerTitle: true,
      backgroundColor: colorScheme.surface,
      elevation: 0,
      appbarTitle: "Contacts",
    );
  }

  final scrollController = ScrollController();
  var profileLink = "Prelura.com/sdjvhsdElWhsa064";
  var selectedContacts = <String>[];
  var displayedContacts = <Contact>[];
  var contacts = <Contact>[];

  final int pageSize = 20;
  var currentPage = 0;

  var isLoading = false;
  var hasMoreContacts = false;
  var isLoadingMore = false;

  void _scrollListener() {
    if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - 500 &&
        !isLoadingMore &&
        hasMoreContacts) {
      loadMoreContacts();
    }
  }

  Future<void> loadInitialContacts() async {
    try {
      setState(() {
        isLoading = true;
      });
      bool isGranted = await Permission.contacts.status.isGranted;
      if (!isGranted) {
        isGranted = await Permission.contacts.request().isGranted;
      }
      if (isGranted) {
        // Get contacts, filter those with phones, then sort alphabetically
        var allContacts = await FastContacts.getAllContacts();
        var contactsWithPhones = allContacts
            .where((contact) =>
                contact.phones.isNotEmpty &&
                contact.phones.first.number.isNotEmpty)
            .toList();

        contactsWithPhones.sort((a, b) {
          String nameA = a.structuredName?.displayName ?? a.displayName;
          String nameB = b.structuredName?.displayName ?? b.displayName;
          return nameA.toLowerCase().compareTo(nameB.toLowerCase());
        });

        contacts = contactsWithPhones;
        await loadInitialBatch();
      }
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> loadInitialBatch() async {
    if (contacts.isEmpty) return;

    final initialBatch = contacts.take(pageSize).toList();
    displayedContacts.addAll(initialBatch);
    setState(() {
      currentPage = 1;
      hasMoreContacts = contacts.length > pageSize;
    });
  }

  Future<void> loadMoreContacts() async {
    if (!hasMoreContacts || isLoadingMore) return;

    try {
      setState(() {
        isLoadingMore = true;
      });

      final startIndex = currentPage * pageSize;
      final endIndex = startIndex + pageSize;
      setState(() {});

      await Future.delayed(const Duration(milliseconds: 500));

      final nextBatch = contacts.skip(startIndex).take(pageSize).toList();

      displayedContacts.addAll(nextBatch);
      setState(() {});

      setState(() {
        currentPage++;
        hasMoreContacts = contacts.length > endIndex;
      });
    } finally {
      setState(() {
        isLoadingMore = false;
      });
    }
  }

  void toggleSelection(Contact contact) {
    if (contact.phones.isEmpty) return;
    final phoneNumber = contact.phones.first.number;
    if (selectedContacts.contains(phoneNumber)) {
      setState(() {
        selectedContacts.remove(phoneNumber);
      });
      log("Deselected: ${contact.displayName} - $phoneNumber");
    } else {
      setState(() {
        selectedContacts.add(phoneNumber);
      });
      log("Selected: ${contact.displayName} - $phoneNumber");
    }
    log("Selected Contacts: $selectedContacts");
  }

  Future<void> inviteSelectedContacts(BuildContext context) async {
    if (selectedContacts.isNotEmpty) {
      for (var phoneNumber in selectedContacts) {
        log("Inviting contact with phone: $phoneNumber");
      }
      context.router.popForced();
    }
  }
}
