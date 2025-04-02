class Test {
  String name;
  String description;
  String status;
  String result;
  String duration;

  Test({
    required this.name,
    required this.description,
    required this.status,
    required this.result,
    required this.duration,
  });

  @override
  String toString() {
    return 'Test{name: $name, description: $description, status: $status, result: $result, duration: $duration}';
  }
}
