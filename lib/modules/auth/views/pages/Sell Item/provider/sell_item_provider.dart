import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class SellItemState {
  final List<XFile> images;
  final String title;
  final String description;

  SellItemState({
    this.images = const [],
    this.title = '',
    this.description = '',
  });

  SellItemState copyWith({
    List<XFile>? images,
    String? title,
    String? description,
  }) {
    return SellItemState(
      images: images ?? this.images,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }
}

class SellItemNotifier extends StateNotifier<SellItemState> {
  SellItemNotifier() : super(SellItemState());

  final ImagePicker _picker = ImagePicker();

  // Add an image
  Future<void> addImages() async {
    final pickedImages = await _picker.pickMultiImage();
    if (pickedImages != null) {
      state = state.copyWith(images: [...state.images, ...pickedImages]);
    }
  }

  // Update title
  void updateTitle(String title) {
    state = state.copyWith(title: title);
  }

  // Update description
  void updateDescription(String description) {
    state = state.copyWith(description: description);
  }

  // Validate input
  bool validateInputs() {
    return state.title.isNotEmpty && state.description.isNotEmpty;
  }

  // Simulate Upload
  Future<void> uploadItem() async {
    // Simulate an API call or database operation
    if (validateInputs()) {
      // Add your upload logic here
    }
  }
}

final sellItemProvider = StateNotifierProvider<SellItemNotifier, SellItemState>(
  (ref) => SellItemNotifier(),
);
