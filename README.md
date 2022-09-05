# plant_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

![Main Page](https://user-images.githubusercontent.com/92115431/185806260-02b04c6a-7f8f-45d1-9747-a4160e88f005.JPG)

![Secound Page](https://user-images.githubusercontent.com/92115431/185806269-da790b36-c955-417d-9e57-30046250a357.JPG)

![Secound Page 2](https://user-images.githubusercontent.com/92115431/185806267-c80d352c-3b4f-454b-9d97-f9f0741527f6.JPG)

![Secound Page 3](https://user-images.githubusercontent.com/92115431/185806268-85fd7838-abd0-4689-bdff-b6ef15892cda.JPG)



  getRegister() async {
    var map = Map<String, dynamic>();
    map["name"] = NameController.text.toString();
    map["email"] = emailController.text.toString();
    map["password"] = passwordController.text.toString();
    map["password_confi rmation"] = rePasswordController.text.toString();

    var responce = await http.post(
        Uri.parse(
            "https://apihomechef.antopolis.xyz/api/admin/create/new/admin"),
        body: map,
        headers: CustomeHttpRequest.defaultHeader);

    print("${responce.body}");
    showToast("Failed");

    final data = jsonDecode(responce.body);
    if (responce.statusCode == 201) {
      showToast("Registration is Succesfull");
    } else {
      showToast("Registration Failed");
    }
  }
  
  class CustomeHttpRequest {
  static const Map<String, String> defaultHeader = {
    "Accept": "application/json",
    "Authorization":
        "bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczpcL1wvYXBpaG9tZWNoZWYuYW50b3BvbGlzLnh5elwvYXBpXC9hZG1pblwvc2lnbi1pbiIsImlhdCI6MTY1NDAwNzYwNiwiZXhwIjoxNjY2OTY3NjA2LCJuYmYiOjE2NTQwMDc2MDYsImp0aSI6IjlLWGFGNmRFdlgwWVNZVzIiLCJzdWIiOjUwLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.Cbii274lgjkMIf2Ix9fZ7e8HPAT47B5MV0QP03Rd520",
  };
}




