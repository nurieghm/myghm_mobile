import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:myghm_mobile/core/design_system/themes/pallet.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6FA),
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'MyGHM',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            letterSpacing: 0.4,
            color: Colors.white,
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF3730A3), Color(0xFF4F46E5), Color(0xFF2563EB)],
            ),
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: const [
            _MenuCard(
              icon: Icons.description_rounded,
              label: 'Report',
              color: Color(0xFF3B82F6),
            ),
            _MenuCard(
              icon: Icons.timer_rounded,
              label: 'Lembur',
              color: Color(0xFF8B5CF6),
            ),
            _MenuCard(
              icon: Icons.event_rounded,
              label: 'Cuti',
              color: Color(0xFF22C55E),
            ),
            _MenuCard(
              icon: Icons.assignment_ind_rounded,
              label: 'Izin',
              color: Color(0xFFF97316),
            ),
            _MenuCard(
              icon: Icons.sick_rounded,
              label: 'Sakit',
              color: Color(0xFFF43F5E),
            ),
            _MenuCard(
              icon: Icons.chat_rounded,
              label: 'Chat',
              color: Color(0xFF06B6D4),
            ),
          ],
        ),
      ),
    );
  }
}

/// ================= MENU CARD =================
class _MenuCard extends StatefulWidget {
  final IconData icon;
  final String label;
  final Color color;

  const _MenuCard({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  State<_MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<_MenuCard> {
  bool _pressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _pressed = true),
      onTapUp: (_) => setState(() => _pressed = false),
      onTapCancel: () => setState(() => _pressed = false),
      onTap: () {},
      child: AnimatedScale(
        scale: _pressed ? 0.97 : 1.0,
        duration: const Duration(milliseconds: 160),
        curve: Curves.easeOut,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 160),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22),
            boxShadow: [
              BoxShadow(
                color: widget.color.withValues(alpha: 0.18),
                blurRadius: _pressed ? 6 : 14,
                offset: Offset(0, _pressed ? 3 : 8),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: widget.color.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(widget.icon, size: 30, color: widget.color),
              ),
              const SizedBox(height: 14),
              Text(
                widget.label,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF111827),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
