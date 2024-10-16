import 'package:flutter/material.dart';

class ThemeButton extends StatelessWidget {
  final String selectedTheme;
  final Function(String) onThemeChange;

  const ThemeButton({
    super.key,
    required this.selectedTheme,
    required this.onThemeChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16, right: 16),
      child: Center(
        child: DecoratedBox(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(12), // Set border radius here
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: DropdownButton<String>(
                value: selectedTheme,
                icon: Container(
                  margin: const EdgeInsets.only(right: 4.0),
                  padding: const EdgeInsets.all(2.0),
                  child: const Icon(
                    Icons.density_small_sharp,
                  ),
                ),
                onChanged: (String? newValue) {
                  onThemeChange(newValue!);
                },
                items: <String>['light', 'dark', 'mars', 'ocean']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      '${value[0].toUpperCase()}${value.substring(1)} Theme',
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                    ),
                  );
                }).toList(),
                dropdownColor: Theme.of(context).colorScheme.surface,
                underline: Container(),
                // Removes default underline
                borderRadius:
                    BorderRadius.circular(12), // Dropdown border radius
              ),
            )),
      ),
    );
  }
}
