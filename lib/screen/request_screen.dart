import 'package:attendance/components/dropdown/dropdown.dart';
import 'package:attendance/components/gap.dart';
import 'package:attendance/components/input/input.dart';
import 'package:attendance/core/util/constants.dart';
import 'package:attendance/core/util/regex.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum RequestType {
  loan,
  vacation,
  leaving,
  other,
}

class RequestScreen extends StatefulWidget {
  const RequestScreen({Key? key}) : super(key: key);

  @override
  State<RequestScreen> createState() => _RequestScreenState();
}

class _RequestScreenState extends State<RequestScreen> {
  RequestType? requestType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Paddings.screen),
      child: Gap(
        children: [
          Dropdown<RequestType>(
            label: "نوع الطلب",
            onChanged: (RequestType? newRequestType) {
              setState(() {
                requestType = newRequestType!;
              });
            },
            items: RequestType.values
                .map<DropdownMenuItem<RequestType>>((RequestType requestType) {
              return DropdownMenuItem<RequestType>(
                value: requestType,
                child: Text(_requestTypeString[requestType]!),
              );
            }).toList(),
            value: requestType,
          ),
          if (requestType == RequestType.other) Input(label: "اكتب النوع"),
          if (requestType != null) _requestInputString[requestType]!,
        ],
      ),
    );
  }

  final Map<RequestType, String> _requestTypeString = {
    RequestType.loan: "سلفة",
    RequestType.vacation: "إجازة",
    RequestType.leaving: "مغادرة",
    RequestType.other: "آخر",
  };

  final Map<RequestType, Input> _requestInputString = {
    RequestType.loan: Input(
      label: "قيمة السلفة",
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.allow(digitsAndPointRegExp),
        CurrencyTextInputFormatter(symbol: ""),
      ],
    ),
    RequestType.vacation: Input(
      label: "مدة الإجازة (عدد الأيام)",
      inputFormatters: [
        FilteringTextInputFormatter.allow(digitsRegExp),
      ],
    ),
    RequestType.leaving: Input(
      label: "السبب",
      maxLines: null,
    ),
    RequestType.other: Input(
      label: "السبب",
      maxLines: null,
    ),
  };
}
