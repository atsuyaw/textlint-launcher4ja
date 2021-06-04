# textlint-lancher4ja
textlint導入・実行ツール
## Features
- textlint環境（ルール・プリセット，config）の構築
- textlintのD&D実行
- 初期設定  
日本語の学会予稿集や卒論・修論などの`*.docx`ファイルを校正させるケースを想定
    - [textlint-rule-ja-official-documents](https://github.com/atsuyaw/textlint-rule-ja-official-documents?organization=atsuyaw&organization=atsuyaw)
    - [textlint-rule-preset-ja-engineering-paper](https://github.com/kn1cht/textlint-rule-preset-ja-engineering-paper)
    - [textlint-rule-preset-ja-technical-writing](https://github.com/textlint-ja/textlint-rule-preset-ja-technical-writing)
        - max-ten: 句読点を，。に設定
        - max-kanji-continuous-len: maxを6に設定

## Installation
### 指示されてtextlintを使う人
1. 予め[node.jsをインストールして](https://nodejs.org/ja/download/)おく。
1. `./install_textlint_plugins.bat`を実行する。  
*SmartScreenによってブロックされたら`[詳細情報] > [実行]`を選択する。
1. 校正したいファイルを`./run_textlint.bat`にD&Dすると校正結果がコンソールに表示される。  
*若干時間が掛かります。

### マネージャー
1. releaseから`.zip`をダウンロードする。
1. 通常のtextlintの環境を展開する。
1. `npm i -D textract`を実行する。
1. 初めにダウンロードしたファイルの`package.json`を作成された`package.json`に差し替える。
1. フォルダを配布する。

## Background of development
後輩のドキュメントを事前に校正しておいてほしい。  
私はtextlintを使うのですが，後輩は知らない。

それで後輩のPC上にtextlintの環境を構築してCUI操作なしで校正させるツールが必要になりました。  
同様の用途を想定したツールとして[GUIで動作する文書校正ツール GUI tool for textlinting.](https://github.com/gecko655/proofreading-tool)があります。  
GUIもきれいで便利なのですが，ruleの導入をやろうとすると自前でbuildすることになり，ちょっとハードルでした。  
現状においてはtextlintを使うというところに辿り着くのは，マネージャーがtextlintをCUIで使えるという状況が大半であり，後輩とか部下は詳しいことを知らないけど校正は掛けておいてほしい，という感じではないでしょうか。

その際に普段通りの設定作業をすれば配布も簡単で環境構築にはCUI操作が不要ということが求められる機能です。  
つまり，`package.json`をマネージャーが設定し，CUIなしでこれをインストールできればそれで十分というわけです。  
結局やっていることは前述のツールと全く同じで`textract`と`textlint`が走っているだけですが。

`npm desktop manager`とか`npm-gui`を使えばマネージャーの操作もCUIレスでできるようになるかも…  
まァ誰か詳しい人がいる環境で使うべき，という気はしますが。

軽率にプルリク・issue立ててください！