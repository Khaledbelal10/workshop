import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:workshop/business_logic/notes/notes_cubit.dart';
import 'package:workshop/presentation/styles/app_colors.dart';
import 'package:workshop/presentation/widgets/default_text.dart';

import '../../widgets/default_text_form_field.dart';

//This Screen use for edit a note
class EditNotesScreen extends StatelessWidget {

  String title;
  int id;
  String description;

  TextEditingController editTitle = TextEditingController();
  TextEditingController editDescription = TextEditingController();

  EditNotesScreen({
    required this.description,
    required this.id,
    required this.title,
  });



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(

      builder: (context, state) {
        NotesCubit notesCubit = NotesCubit.get(context);
        return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primaryColor,
              elevation: 0,
              centerTitle: true,
              title: DefaultText(
                text: "Edit",
                fontSize: 28.sp,

                textColor: Colors.black,
              ),
              leading: IconButton(
                onPressed: () {
                  return Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_rounded,
                    color: Colors.black, size: 30),
              ),
            ),

            body: Form(
              key: notesCubit.editNoteKey,
              child: Column(
                children: [

                  //Title
                  SizedBox(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: DefaultTextFormField(
                        startValue: title,
                        controller: editTitle,
                        maxLines:1,
                        labelText: 'Title',
                        hintText: 'Enter Title',
                        validation: (val)
                        {
                          if (val.isEmpty)
                          {
                            return 'Please Enter Your Title';
                          }

                          else if(val.length > 50)
                          {
                            return "Title must be less than 50 characters";
                          }
                        },
                        onChanged: (value)
                        {
                          editTitle.text = value;
                        }),
                  ),

                  //Description
                  Padding(
                    padding: const EdgeInsets.all(18),
                    child: DefaultTextFormField(
                      maxLines: 5,
                      labelText: 'Description',
                      hintText: 'Enter Description',
                      validation: (val) {
                        if (val.isEmpty)
                        {
                          return 'Please Enter Your Description';
                        }

                      },
                      startValue: description,
                      onChanged: (value) {
                        editDescription.text = value;
                        print("description: $value");
                      },
                      controller: editDescription,),
                  ),

                  //Button Edit
                  Container(
                    width: 120,
                    margin: const EdgeInsets.only(top: 15.0),
                    child: ElevatedButton(

                        child:DefaultText(text:  "Edit"),
                        onPressed: () {

                          if (notesCubit.editNoteKey.currentState!.validate())
                          {
                            notesCubit.update(
                                context,
                                id,
                                DateFormat("hh:mm a      dd/MM/yyyy").format(DateTime.now()),

                                editTitle.text == ""
                                    ? title
                                    : editTitle.text,

                                editDescription.text == ""
                                    ? description
                                    : editDescription.text);

                          }
                        }),
                  ),
                ],
              ),
            ));
      },
    );
  }
}
