class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);
}

class NoConnectionFailure extends Failure {
  NoConnectionFailure(super.message);
}
