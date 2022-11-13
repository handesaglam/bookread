import 'package:bookread/model/book.dart';
import 'package:flutter/foundation.dart';

import '../services/book_services.dart';



enum JobState { IDLE, BUSY, ERROR }
 late JobState _state;


class JobViewModel with ChangeNotifier {
 List<Book> jobList;

 JobViewModel(this.jobList) {
    jobList = [];
    _state = JobState.IDLE;
 fetchJobs();
  }

 JobState get state => _state;
 set state(JobState state) {
    _state = state;
 notifyListeners();
  }

 Future<List<Book>> fetchJobs() async {
 try {
      state = JobState.BUSY;
      jobList = await ApiService().fetchdataall();
      state = JobState.IDLE;
 return jobList;
    } catch (e) {
      state = JobState.ERROR;
 return [];
    }
  }
}