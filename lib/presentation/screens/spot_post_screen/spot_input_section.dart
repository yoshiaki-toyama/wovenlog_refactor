import 'package:flutter/material.dart';
import 'package:wovenlog_layered/presentation/constants/colors.dart';
import 'package:wovenlog_layered/presentation/screens/spot_post_screen/spot_input_form.dart';
import 'package:wovenlog_layered/application/post_spot_app_service.dart';
import 'package:wovenlog_layered/repository/spot_list_repository.dart';
import 'package:wovenlog_layered/domain/model/spot/spot_form_model.dart';

class SpotInputSection extends StatelessWidget {
  SpotInputSection({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String _spotName = '';
  String _spotAddress = '';
  String _spotURL = '';
  String _spotCategoryName = '';
  String _spotDescription = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Form(
            key: _formKey,
            child: Column(
              children: [
                InputForm(
                  labelText: "Name",
                  onSaved: (value) => _spotName = value!,
                ),
                InputForm(
                  labelText: "Address",
                  onSaved: (value) => _spotAddress = value!,
                ),
                InputForm(
                  labelText: "URL",
                  onSaved: (value) => _spotURL = value!,
                ),
                InputForm(
                  labelText: "Category Name",
                  onSaved: (value) => _spotCategoryName = value!,
                ),
                InputForm(
                  labelText: "Description",
                  onSaved: (value) => _spotDescription = value!,
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {
              _formKey.currentState!.save();
              // InputFormの内容で、SpotFormModel（全てString）をインスタンス化
              SpotFormModel _spotFormModel = SpotFormModel(
                name: _spotName,
                address: _spotAddress,
                url: _spotURL,
                categoryName: _spotCategoryName,
                description: _spotDescription,
              );
              // TODO: addNewSpotに渡す
              // PostSpotAppService.addNewSpot(
              //   _spotFormModel.getSpotToDomain(),
              //   SpotListDummyRepository(),
              // );
            },
            child: const Text('Submit'),
            style: TextButton.styleFrom(
              primary: Colors.black,
              backgroundColor: kSecondaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
