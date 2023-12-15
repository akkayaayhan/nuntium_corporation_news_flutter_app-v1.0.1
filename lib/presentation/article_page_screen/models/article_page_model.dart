// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [article_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ArticlePageModel extends Equatable {
  ArticlePageModel() {}

  ArticlePageModel copyWith() {
    return ArticlePageModel();
  }

  @override
  List<Object?> get props => [];
}
