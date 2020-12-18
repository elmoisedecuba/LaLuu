import 'package:LaLu/app/modules/appliance/appliance_controller.dart';
import 'package:LaLu/app/modules/appliance_search/appliance_search_delegate.dart';
import 'package:LaLu/app/modules/appliance_search/local_widgets/appliance_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import "package:velocity_x/velocity_x.dart";

class AppliancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final applianceController = Get.find<ApplianceController>();
    return Scaffold(
        appBar: AppBar(
          title: Text('Seleccion de Equipo'),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () => showSearch(
                    context: context, delegate: ApplianceSearchDelegate()))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            applianceController.saveUserAppliance();
          },
          child: Icon(Icons.save),
        ),
        body: Obx(() => ListView(children: [
              TextFormField(
                enabled: applianceController.isEditing.value,
                decoration: InputDecoration(labelText: 'Nombre'),
                initialValue: applianceController.applianceName.value,
                onChanged: (value) {
                  //applianceController.applianceTag.value = value;
                },
              ),
              TextFormField(
                enabled: true,
                decoration: InputDecoration(
                    labelText: 'Etiqueta', hintText: 'Ejemplo: TV de la sala'),
                initialValue: applianceController.applianceTag.value,
                onChanged: (value) {
                  //applianceController.applianceTag.value = value;
                },
              ),
              TextFormField(
                enabled: applianceController.isEditing.value,
                decoration: InputDecoration(
                  labelText: 'Consumo',
                ),
                initialValue:
                    applianceController.applianceConsumption.value.toString(),
                onChanged: (value) {
                  //applianceController.applianceTag.value = value;
                },
              )
            ])));
  }
}
