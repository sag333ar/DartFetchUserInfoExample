import 'package:flutter/material.dart';
import '../models/user_model.dart';

class UserList extends StatelessWidget {

  final List<UserModel> usersList;

  UserList(this.usersList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return buildUserContainer(usersList[index]);
      },
      itemCount: usersList.length,
    );
  }

  Widget buildUserContainer(UserModel model) {
    return Container(
      padding: EdgeInsets.all(20.0),
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.black
        )
      ),
      child: buildUserWidget(model),
    );
    // return Text(model.username);
  }

  Widget buildUserWidget(UserModel model) {
    return Column(
      children: <Widget>[
        Text('UserName: ${model.username}'),
        Text('UserID: ${model.id}'),
        Text('Name: ${model.name}'),
        Text('Phone: ${model.phone}'),
        Text('Website: ${model.website}'),
        Text('Address: ${model.address.street}, ${model.address.suite}, ${model.address.city}, ${model.address.zipcode}'),
        Text('Company: ${model.company.name}, ${model.company.catchPhrase}, ${model.company.bs}'),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }

}