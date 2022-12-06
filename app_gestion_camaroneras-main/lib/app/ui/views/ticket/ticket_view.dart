import 'package:app_gestion_camaroneras/app/ui/components/templates/custom_scaffold_base.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/ticket_controller.dart';
import 'package:app_gestion_camaroneras/app/ui/views/ticket/widgets/tickets.dart';
import 'package:app_gestion_camaroneras/core/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TicketController>(
      builder: (controller) => CustomScaffoldBase(
        elevation: 4.0,
        titleAppBar: "Mis Tickets",
        action: Container(
          margin: EdgeInsets.only(right: 5.w),
          child: CircleAvatar(
            backgroundColor: Colors.transparent,
            child: SvgPicture.asset(
              Helpers.pathAssetIcons("ico_filtersearch.svg"),
            ),
          ),
        ),
        body: const Tickets(),
      ),
    );
  }
}
