import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class DisclaimerBanner extends StatelessWidget {
  const DisclaimerBanner({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final text = theme.textTheme;
    final appColors = theme.extension<AppColorsExtension>()!;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(AppTheme.spacingMd),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.info_outline_rounded, size: AppTheme.iconSm, color: appColors.warning),
                const SizedBox(width: AppTheme.spacingSm),
                Expanded(
                  child: Text(
                    'Independent app, not affiliated with Stellantis or Jeep',
                    style: text.titleMedium,
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppTheme.spacingSm),
            Text(
              '3D Part Print is not affiliated with, endorsed by, or sponsored by Stellantis or Jeep. '
              'Jeep and related names are trademarks of their owners and are used only to identify compatible vehicles.',
              style: text.bodySmall?.copyWith(color: appColors.subtleText),
            ),
            const SizedBox(height: AppTheme.spacingSm),
            Text(
              'Replacing a part with one that is not made by the manufacturer may void your vehicle\'s warranty. '
              'By downloading or using any file in this app, you agree that you assume any and all liability for '
              'the parts you print and fit, and for any resulting damage, injury, or loss.',
              style: text.bodySmall?.copyWith(color: appColors.subtleText),
            ),
          ],
        ),
      ),
    );
  }
}
