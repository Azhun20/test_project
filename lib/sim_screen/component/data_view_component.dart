import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:test_project/sim_screen/component/title_subtitle_field_component.dart';

class DataViewComponent extends StatelessWidget {
  const DataViewComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 12,
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(Get.width),
                child: Image.asset(
                  "asset/img_profile.png",
                  width: 74,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 6),
              Image.asset(
                "asset/img_sign.png",
                height: 30,
              )
            ],
          ),
        ),
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleSubtitleFieldComponent(
                title: "Nama/name",
                subTitle: "RIFTA DIMAS SULISTIYO",
              ),
              TitleSubtitleFieldComponent(
                title: "Tempat, Tgl Lahir/Place, Date of Birth",
                subTitle: "JAKARTA 23 OKTOBER 1996",
              ),
              Row(
                children: [
                  TitleSubtitleFieldComponent(
                    title: "Gol Darah/Blood Type",
                    subTitle: "0",
                  ),
                  SizedBox(width: 20),
                  TitleSubtitleFieldComponent(
                    title: "Jenis Kelamin/Gender",
                    subTitle: "PRIA",
                  ),
                ],
              ),
              TitleSubtitleFieldComponent(
                title: "Alamat/Address",
                subTitle:
                    "MT HARYONO ST, RT.4/RW.2, CIKOKO, PANCORAN, JAKARTA SELATAN",
              ),
              TitleSubtitleFieldComponent(
                title: "Pekerjaan/Occupation",
                subTitle: "POLRI",
              ),
              TitleSubtitleFieldComponent(
                title: "Diterbitkan Oleh/Issued By",
                subTitle: "METRO JAYA",
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 86,
              child: QrImageView(
                data:
                    '1234567890 assagdhjgs adfsfdjag sdfsfdfsjfdsadsadsdsdasdsdsds',
                version: QrVersions.auto,
                size: 86,
              ),
            ),
            const Text(
              "21-12-2028",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 10),
            )
          ],
        ),
      ],
    );
  }
}
