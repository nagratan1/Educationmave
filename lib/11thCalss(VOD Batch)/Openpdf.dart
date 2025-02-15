import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

class OpenPdf extends StatefulWidget {
  const OpenPdf({super.key});

  @override
  State<OpenPdf> createState() => _OpenPdfState();
}

class _OpenPdfState extends State<OpenPdf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:  PdfViewer.asset('assets/hello.pdf'),
    );
  }
}