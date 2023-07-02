class ApiConstant {
  static const String loginPath = "user/auth/login";
  static const String userPath = "user/auth/me";
  static const String logOutPath = "user/auth/logout";
  static const String getTaskPath = "task/all";
  static const String addTaskPath = "task/add";
  static String editTask({required int id}) => "task/edit/$id";
  static String approveTask({required int id}) => "task/approve/$id";
  static String rejectTask({required int id}) => "task/approve/$id";
  static String changeTaskStatus({required int id}) => "task/status/$id";
}
