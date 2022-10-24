// ignore_for_file: unused_element

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_full_learn/200/service/comment_model.dart';

import 'post_model.dart';

abstract class IPostService {
  Future<bool> addItemToService(PostModel postModel);
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<CommentModel>?> fetchRelatedCommentWithPostId(int postId);
}

class PostService implements IPostService {
  late final Dio _dio;

  PostService() : _dio = Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

  @override
  Future<bool> addItemToService(PostModel postModel) async {
    final response = await _dio.post(_PostServicePaths.posts.name, data: postModel);

    return response.statusCode == HttpStatus.created;
  }

  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    final response = await _dio.put('${_PostServicePaths.posts.name}/$id', data: postModel);

    return response.statusCode == HttpStatus.ok;
  }

  @override
  Future<bool> deleteItemToService(int id) async {
    final response = await _dio.put(
      '${_PostServicePaths.posts.name}/$id',
    );

    return response.statusCode == HttpStatus.ok;
  }

  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    final response = await _dio.get(_PostServicePaths.posts.name);

    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        return datas.map((e) => PostModel.fromJson(e)).toList();
      }
    }

    return null;
  }

  @override
  Future<List<CommentModel>?> fetchRelatedCommentWithPostId(int postId) async {
    final response =
        await _dio.get(_PostServicePaths.comments.name, queryParameters: {_PostQueryPaths.postId.name: postId});

    if (response.statusCode == HttpStatus.ok) {
      final datas = response.data;
      if (datas is List) {
        return datas.map((e) => CommentModel.fromJson(e)).toList();
      }
    }

    return null;
  }
}

enum _PostServicePaths { posts, comments }

enum _PostQueryPaths { postId }

class _ShowDebug {
  static void showDioError<T>(DioError error, T type) {
    if (kDebugMode) {
      print(error.message);
      print(type);
      print('-----');
    }
  }
}
