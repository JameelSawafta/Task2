import '../models/dataModel.dart';

class DataViewModel {
  DataModel? dataModel;
  DataViewModel({this.dataModel});

  get id => dataModel?.source ?? '';
  get title => dataModel?.title ?? '';
  get author => dataModel?.author ?? '';
  get description => dataModel?.description ?? '';
  get url => dataModel?.url ?? '';
  get urlToImage => dataModel?.urlToImage ?? '';
  get publishedAt => dataModel?.publishedAt ?? '';
  get content => dataModel?.content ?? '';

  

}