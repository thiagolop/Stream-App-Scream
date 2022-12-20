import 'package:flutter/material.dart';
import 'package:stream_app/Controller/filter_chips_controller.dart';

class FilterChipsWidget extends StatefulWidget {
  final List<String> filtros;
  final void Function(List<String> selectedValues) onChange;
  const FilterChipsWidget({
    Key? key,
    required this.filtros,
    required this.onChange,
  }) : super(key: key);

  @override
  State<FilterChipsWidget> createState() => _FilterChipsWidgetState();
}

class _FilterChipsWidgetState extends State<FilterChipsWidget> {
  late final List<String> _filter;
  final filterController = FilterChipsController();

  @override
  void initState() {
    super.initState();
    _filter = [FilterChipsController.all, ...widget.filtros];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ValueListenableBuilder<List<String>>(
        valueListenable: filterController,
        builder: (context, value, child) => ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: _filter.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 16),
            child: SelectableChip(
              selectedColor: Colors.green.shade400,
              backgroundColor: Colors.grey.shade700,
              selected: value.contains(_filter[index]),
              label: _filter[index],
              onSelected: (value) {
                filterController.add(value);
                widget.onChange(filterController.value);
              },
            ),
          ),
        ),
      ),
    );
  }
}

class SelectableChip extends StatelessWidget {
  final Color selectedColor;
  final Color backgroundColor;
  final String label;
  final bool selected;
  final void Function(String value) onSelected;
  const SelectableChip({
    Key? key,
    required this.selectedColor,
    required this.backgroundColor,
    required this.label,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: selected ? selectedColor : backgroundColor,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: () => onSelected(label),
          child: Container(
            padding: const EdgeInsets.only(left: 8, right: 12, bottom: 6, top: 6),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            child: Row(children: [
              if (selected) const Icon(Icons.check, size: 16),
              Text(
                label,
                style: TextStyle(color: selected ? backgroundColor : Colors.white, fontWeight: FontWeight.w500),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
