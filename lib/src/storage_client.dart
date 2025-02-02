import 'package:storage_client/src/constants.dart';
import 'package:storage_client/src/storage_bucket_api.dart';
import 'package:storage_client/src/storage_file_api.dart';

class SupabaseStorageClient extends StorageBucketApi {
  SupabaseStorageClient(String url, Map<String, String> headers)
      : super(url, {...Constants.defaultHeaders, ...headers});

  /// Perform file operation in a bucket.
  ///
  /// [id] The bucket id to operate on.
  StorageFileApi from(String id) {
    return StorageFileApi(url, headers, id);
  }
}
