import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController controller = TextEditingController();

  List<String> listNome = <String>['Nome 1'];

  void addList(String value) {
    setState(() {
      listNome.add(value);
      controller.clear();
    });
  }

  void editList(int index) {
    setState(() {
      controller.text = listNome.elementAt(index);
      listNome.removeAt(index);
    });
  }

  void removeList(int index) {
    setState(() {
      listNome.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // SizedBox(
                  //   width: 200,
                  //   child: TextField(),
                  // ),
                  // Flexible(child: Flex: 2, TextField()),
                  Expanded(
                    child: TextFormField(
                      onChanged: (value) => _formKey.currentState!.validate(),
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                      validator: (value) {
                        // return 'Error';
                        if (value == null ||
                            value.isEmpty ||
                            value.length <= 3) {
                          return 'Preencha o texto';
                        }
                        return null;
                      },
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        addList(controller.text);
                      }
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: listNome.length,
                  itemBuilder: (context, index) {
                    var item = listNome.elementAt(index);
                    return ListTile(
                      leading: const Icon(Icons.abc_sharp),
                      title: Text(item),
                      // subtitle: Text(item),
                      trailing: SizedBox(
                        width: 100,
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () => editList(index),
                              icon: const Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () => removeList(index),
                              icon: const Icon(Icons.remove),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
