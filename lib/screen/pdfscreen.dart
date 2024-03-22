import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:printing/printing.dart';
import 'package:pdf/widgets.dart' as pw;

class pdfscreen extends StatefulWidget {
  const pdfscreen({super.key});

  @override
  State<pdfscreen> createState() => _pdfscreenState();
}

class _pdfscreenState extends State<pdfscreen> {
  late final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PdfPreview(
        build: (format) => generatePdf(),
      ),
    );
  }
}
Future<Uint8List> generatePdf() async {
  final pdf = pw.Document();


  pdf.addPage(
    pw.Page(
      build: (context) {
        return pw.Column(
          children: [
            pw.Table(
              border: pw.TableBorder.all(color: PdfColors.black,width: 1.0),
              children: [
                pw.TableRow(
                  children: [
                    pw.Text('PRODUCT NAME :'),
                    pw.Text('PRICE :'),
                    pw.Text('QUNTITY:'),
                  ],
                )
              ]
            )
            ],
        );
      },
    ),
  );

  return pdf.save();
}

