import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart' as fp;
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_city_services/core/widgets.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:sizer/sizer.dart';

import 'package:equatable/equatable.dart';

part 'api/api_endpoints.dart';
part 'api/api_excepion.dart';
part 'api/api_service.dart';
part 'color_palette/color_palette.dart';
part 'constants/image_constants.dart';
part 'constants/userdata.dart';
part 'constants/widget_constants.dart';
part 'image_picker.dart';
part 'sizer/sizer.dart';
part 'theme/text_theme.dart';
part 'theme/theme.dart';

