import 'package:dio/dio.dart';
import 'package:flutter_complete_project/features/home/data/apis/home_api_constants.dart';
import 'package:flutter_complete_project/features/home/data/models/specializations_response_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:flutter_complete_project/core/networking/api_constants.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseURL)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.specializationEP)
  Future<SpecializationsResponseModel> getSpecializations();
}
