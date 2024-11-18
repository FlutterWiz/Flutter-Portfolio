import 'package:alperefesahin_dev/core/constants/colors.dart';
import 'package:alperefesahin_dev/core/design_system/custom_divider.dart';
import 'package:alperefesahin_dev/core/design_system/custom_text.dart';
import 'package:alperefesahin_dev/features/about/widgets/open_source/featured_projects.dart';
import 'package:alperefesahin_dev/features/about/widgets/open_source/other_projects.dart';
import 'package:flutter/material.dart';

class OpenSourceSection extends StatelessWidget {
  const OpenSourceSection({super.key, required this.isMobile});

  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(
          text: "Open source",
          fontSize: 32,
          height: 1.2,
          fontWeight: FontWeight.w800,
        ),
        Container(
          width: isMobile ? null : 560,
          padding: const EdgeInsets.only(top: 16, bottom: 60),
          child: const CustomText(
            text:
                "Open source plays a tremendous part in my engineering journey. This is my primary way of learning and I'm truly humbled to have influenced so many people with my projects. Here are just a few of them.",
            color: blackWithOpacity87,
          ),
        ),
        FeaturedProjects(isMobile: isMobile),
        const OtherProjects(),
        Center(
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: black,
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
              ),
            ),
            child: const CustomText(
              text: 'View more on GitHub',
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const CustomDivider(),
      ],
    );
  }
}

class ProjectInfoCard extends StatefulWidget {
  final String title;
  final String description;
  final Widget icon;
  final List<Widget> actions;
  final bool isMobile;

  const ProjectInfoCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.actions,
    this.isMobile = false,
  });

  @override
  State<ProjectInfoCard> createState() => _ProjectInfoCardState();
}

class _ProjectInfoCardState extends State<ProjectInfoCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: widget.isMobile ? null : 360,
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.05),
              Colors.white.withOpacity(0.1),
            ],
          ),
          border: Border.all(
            color: Colors.white.withOpacity(0.1),
            width: 1,
          ),
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  )
                ]
              : [],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white.withOpacity(0.1),
              ),
              child: widget.icon,
            ),
            const SizedBox(height: 24),
            Text(
              widget.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              widget.description,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: widget.actions.map((action) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: action,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

// Example button widget for actions
class ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const ActionButton({
    Key? key,
    required this.label,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        backgroundColor: Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: Colors.white, size: 18),
          const SizedBox(width: 8),
          Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
