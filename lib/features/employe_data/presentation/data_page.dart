import 'package:flutter/material.dart';
import '../../../core/design_system/themes/dimension.dart';

enum DataType { absensi, report, lembur, cuti, sakit, izin }

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  DataType _selected = DataType.absensi;

  static const titles = {
    DataType.absensi: 'Data Absensi',
    DataType.report: 'Data Report',
    DataType.lembur: 'Data Lembur',
    DataType.cuti: 'Data Cuti',
    DataType.sakit: 'Data Sakit',
    DataType.izin: 'Data Izin',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9),

      /// ================= APP BAR =================
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
              colors: [
                Color(0xFF0F766E), // teal dark
                Color(0xFF0D9488), // emerald
                Color(0xFF14B8A6), // tosca
              ],
            ),
          ),
        ),
      ),

      /// ================= BODY =================
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _SegmentedControl(
              selected: _selected,
              onChanged: (v) => setState(() => _selected = v),
            ),

            const SizedBox(height: 24),

            Text(
              titles[_selected]!,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0F172A),
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Data hanya tersedia 3 bulan terakhir',
              style: TextStyle(fontSize: 14, color: Color(0xFF64748B)),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: _buildContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (_selected == DataType.absensi || _selected == DataType.lembur) {
      return ListView(
        key: ValueKey(_selected),
        children: const [
          DataCard(title: 'Januari 2026'),
          SizedBox(height: 12),
          DataCard(title: 'Desember 2025'),
          SizedBox(height: 12),
          DataCard(title: 'November 2025'),
        ],
      );
    }

    return const Center(
      child: Text('Belum ada data', style: TextStyle(color: Color(0xFF64748B))),
    );
  }
}

/// ================= SEGMENTED =================
class _SegmentedControl extends StatelessWidget {
  final DataType selected;
  final ValueChanged<DataType> onChanged;

  const _SegmentedControl({required this.selected, required this.onChanged});

  static const labels = {
    DataType.absensi: 'Absensi',
    DataType.report: 'Report',
    DataType.lembur: 'Lembur',
    DataType.cuti: 'Cuti',
    DataType.sakit: 'Sakit',
    DataType.izin: 'Izin',
  };

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: DataType.values.length,
        separatorBuilder: (_, _) => const SizedBox(width: 8),
        itemBuilder: (context, index) {
          final type = DataType.values[index];
          final active = type == selected;

          return GestureDetector(
            onTap: () => onChanged(type),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              padding: const EdgeInsets.symmetric(horizontal: 18),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: active ? const Color(0xFF14B8A6) : Colors.white,
                borderRadius: BorderRadius.circular(22),
                border: Border.all(
                  color: active
                      ? const Color(0xFF0D9488)
                      : const Color(0xFFE2E8F0),
                ),
                boxShadow: active
                    ? [
                        BoxShadow(
                          color: const Color(0xFF14B8A6).withOpacity(0.35),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ]
                    : [],
              ),
              child: Text(
                labels[type]!,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: active ? Colors.white : const Color(0xFF64748B),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

/// ================= CARD =================
class DataCard extends StatelessWidget {
  final String title;

  const DataCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(Dimension.radius16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(Dimension.radius16),
        border: Border.all(color: const Color(0xFFE2E8F0)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 16,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: Dimension.width44,
            height: Dimension.height44,
            decoration: BoxDecoration(
              color: const Color(0xFF14B8A6).withOpacity(0.15),
              borderRadius: BorderRadius.circular(Dimension.radius12),
            ),
            child: const Icon(
              Icons.calendar_month_rounded,
              color: Color(0xFF0D9488),
            ),
          ),
          SizedBox(width: Dimension.width12),

          Expanded(
            child: Text(
              title,
              style: TextStyle(
                fontSize: Dimension.style16,
                fontWeight: FontWeight.w600,
                color: const Color(0xFF0F172A),
              ),
            ),
          ),

          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(Dimension.radius16),
            child: InkWell(
              borderRadius: BorderRadius.circular(Dimension.radius16),
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.download_rounded,
                  color: Colors.grey,
                  size: Dimension.radius28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
