class ProfileData {
  final String profileBanner;
  final String profilePicture;
  final String username;
  final String firstname;
  final String lastname;
  final String location;
  final int followers;
  final int following;
  final int pieces;
  final List<String> piecesList;

  ProfileData(
    this.profileBanner,
    this.profilePicture,
    this.username,
    this.firstname,
    this.lastname,
    this.location,
    this.followers,
    this.following,
    this.pieces,
    this.piecesList
  );
}