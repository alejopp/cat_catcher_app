import 'dart:convert';

import 'package:cat_catcher_app/features/cat/data/datasources/cat_remote_datasource.dart';
import 'package:cat_catcher_app/features/cat/data/datasources/cat_remote_datasource_impl.dart';
import 'package:cat_catcher_app/features/network/domain/entities/api_failure.dart';
import 'package:cat_catcher_app/features/network/domain/entities/custom_response.dart';
import 'package:cat_catcher_app/features/network/domain/services/network_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart' as mocktail;

import '../../../fixtures/fixture_reader.dart';

class MockNetworkService extends mocktail.Mock implements NetworkService {}

void main() async {
  late NetworkService mockNetworkService;
  late CatDatasource datasource;

  setUpAll(() {
    mockNetworkService = MockNetworkService();
    datasource = CatRemoteDatasourceImpl(mockNetworkService);
  });

  group('cat remote datasource test', () {
    test('should return success', () async {
      // arrange
      mocktail.when(() => mockNetworkService.get(mocktail.any())).thenAnswer(
            (_) async => Right(
              CustomResponse(
                statusCode: 200,
                statusMessage: '',
                data: [],
              ),
            ),
          );

      // act
      final resp = await datasource.fetchCats();

      // assert
      expect(resp.isRight(), true);
    });
    test('should return fail', () async {
      // arrange
      mocktail.when(() => mockNetworkService.get(mocktail.any())).thenAnswer(
            (_) async =>
                Left(ApiFailure(statusCode: 404, statusMessage: 'Not Found')),
          );

      // act
      final resp = await datasource.fetchCats();

      // assert
      expect(resp.isLeft(), true);
    });
    test('should convert a fixture JSON in a Cat List', () async {
      // arrange
      final jsonString = fixture('cat_fixture.json');
      mocktail.when(() => mockNetworkService.get(mocktail.any())).thenAnswer(
            (_) async => Right(
              CustomResponse(
                statusCode: 200,
                statusMessage: '',
                data: jsonDecode(jsonString) as List,
              ),
            ),
          );

      // act
      final result = await datasource.fetchCats();

      // assert
      result.fold((l) {}, (r) {
        expect(r.first.name, 'Abyssinian');
      });
    });
  });
}
