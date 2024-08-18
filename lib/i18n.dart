import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
/* ◆ MaterialApp
    マテリアルデザインに準拠したテーマの提供や
    画面遷移の機能を内包したWidget */
    const MaterialApp(
      // localizationsDelegates: [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],

      localizationsDelegates:L10n.localizationsDelegates,

      supportedLocales: L10n.supportedLocales,
      home: HomeScreen(),
    ),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    Intl.defaultLocale = Localizations.localeOf(context).toString();

    final l10n = L10n.of(context);
/* ◆ Scaffold
    マテリアルデザインの基本的なレイアウトを提供するWidget */
    return Scaffold(
      body: Center(
        child: Column(
// 子Widgetを中央へ寄せるためのパラメータ
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
/* ◆ TextField
            ユーザーがテキスト入力するウィジェット */
            const TextField(),
            Text(
              DateFormat.yMEd().format(DateTime.now()),
            ),
            Text(
              l10n.helloWorld,
            ),
            Text(
              l10n.numOfSearchResult(1),
            ),
            Text(
              l10n.numOfSearchResult(0),
            )
          ],
        ),
      ),
    );
  }
}
