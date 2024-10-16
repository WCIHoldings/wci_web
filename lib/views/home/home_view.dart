import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:wci/utils/responsive.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  _getPadding() {
    if (Responsive.isDesktop(context)) {
      return const EdgeInsets.all(75);
    }
    return const EdgeInsets.all(20);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        foregroundColor: Colors.black,
        elevation: 0,
        surfaceTintColor: Colors.black,
        leadingWidth: 100,
        leading: Container(
          padding: EdgeInsets.only(left: 40),
          child: Image.asset("assets/images/logo.jpg"),
        ),
        title: Text(
          "Wrapped Carbon Initiative",
          style: GoogleFonts.dmSans(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: _getPadding(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "The Wrapped Carbon Manifesto: Pioneering the Future of Green Finance",
              style: _getTitleTextStyle(),
            ),
            const SizedBox(
              height: 30,
            ),
            Text("Our Vision for a Sustainable Tomorrow",
                style: _getSubTitleTextStyle()),
            const SizedBox(
              height: 10,
            ),
            Text(
              "At Wrapped Carbon Initiative (WCI), we are quietly laying the foundation for the next big shift in green finance. In stealth mode, we're building the infrastructure to redefine how sustainable assets like forests, solar farms, and other critical environmental projects are funded, tracked, and incentivized.",
              style: _getParagraphTextStyle(),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("Tokenization: The Catalyst for Change",
                style: _getSubTitleTextStyle()),
            const SizedBox(
              height: 10,
            ),
            RichText(
                textAlign: TextAlign.left,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text:
                        "We’re leveraging blockchain to tokenize real-world sustainable assets, but we’re thinking beyond the obvious benefits of traceability, liquidity, and security. Our focus is on ",
                    style: _getParagraphTextStyle(),
                  ),
                  TextSpan(
                    text: "creating a network ",
                    style: _getParagraphTextStyle(bold: true),
                  ),
                  TextSpan(
                    text: "where ",
                    style: _getParagraphTextStyle(),
                  ),
                  TextSpan(
                    text: "companies and investors ",
                    style: _getParagraphTextStyle(bold: true),
                  ),
                  TextSpan(
                    text: "are ",
                    style: _getParagraphTextStyle(),
                  ),
                  TextSpan(
                    text: "actively incentivized ",
                    style: _getParagraphTextStyle(bold: true),
                  ),
                  TextSpan(
                    text:
                        "to uphold sustainability commitments and contribute to lasting environmental impact. We are pushing the envelope of blockchain use cases to drive true innovation in green finance.",
                    style: _getParagraphTextStyle(),
                  ),
                ])),
            const SizedBox(
              height: 20,
            ),
            Text("Solving Key Challenges", style: _getSubTitleTextStyle()),
            const SizedBox(
              height: 10,
            ),
            _getBulletPoint("Real Transparency: ",
                "No more greenwashing. Every asset we tokenize is fully traceable across its lifecycle, ensuring transparency and accountability."),
            const SizedBox(
              height: 5,
            ),
            _getBulletPoint("New Financial Innovation: ",
                "We’re bridging traditional finance and sustainability by introducing new green financial products that unlock growth opportunities."),
            const SizedBox(
              height: 5,
            ),
            _getBulletPoint("Incentivizing Sustainable Supply Chains: ",
                "Our advanced tokenomics model motivates supply chain participants to share data and operate transparently, reducing risks and increasing sustainability."),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Redefining Green Finance",
              style: _getSubTitleTextStyle(),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
                textAlign: TextAlign.left,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text:
                        "As we quietly work behind the scenes, we carefully refine our strategy, explore how best to deploy our infrastructure, and expand our thinking on blockchain's role in sustainability. We believe in moving deliberately—ensuring that we will offer solutions that ",
                    style: _getParagraphTextStyle(),
                  ),
                  TextSpan(
                    text: "truly reshape the green finance landscape ",
                    style: _getParagraphTextStyle(bold: true),
                  ),
                  TextSpan(
                    text: "when we emerge.",
                    style: _getParagraphTextStyle(),
                  ),
                ]))
          ],
        ),
      ),
    );
  }

  _getBulletPoint(String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 30,
        ),
        Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 8,
              height: 8,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
            child: RichText(
                textAlign: TextAlign.left,
                text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: title,
                    style: _getParagraphTextStyle(bold: true),
                  ),
                  TextSpan(
                    text: text,
                    style: _getParagraphTextStyle(),
                  ),
                ])))
      ],
    );
  }

  _getTitleTextStyle() {
    return GoogleFonts.dmSans(
        color: Colors.white, fontSize: 34, fontWeight: FontWeight.bold);
  }

  _getSubTitleTextStyle() {
    return GoogleFonts.dmSans(
        color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold);
  }

  _getParagraphTextStyle({bool bold = false}) {
    return GoogleFonts.dmSans(
        color: Colors.white,
        fontSize: 24,
        fontWeight: bold ? FontWeight.bold : FontWeight.w300);
  }
}
