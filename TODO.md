# TODO

- WSL2設定
- log repository を分離

- telescope の検索結果を再度見たい
  - resume を利用した関数を作成し、デフォルトでキャッシュを利用するように変更

- lazygit では`<Leader>to`に反応しないようにしたい
  - 通常のターミナルでのみにしたい
  - 現状`<C-t>`によるindentが効かない
- toggle-term のトグルショートカット
  - 現状`<C-t>`に割り当てているため、insertモードでindentが効かない
  - `<Plug>(xxx)`名前空間で解決できる？

- copilot のtab補完がうっとうしい？

- js環境
  - import をコードアクションで補完したい
  - jestのテストを個別に実行したい
    - neovim のテスト系プラグインでできそう
  - フロントエンド用の設定を on/off できるようにしたい
- プロジェクト全体での置換
- vscodeのようにコミット履歴を見やすくしたい
- 汎用的なdiffを見たい。.diffファイルを開けないか。

- Ghost text (like Rust)

- linterの検討, aleとの比較
  - mfussenegger/nvim-lint

- keymap に description を追加したい

- fold の活用
- quickfix の活用
- window separate の活用

- optionの調査
  - diffview
  - telescope
    - git 検索

- git workflow
  - DiffviewXxxx
  - GitSigns による hunk 操作
  - LazyGit による commit 操作
  - Telescope による Git 操作
  - gh コマンドなどによるレビュー

## plugin

- hop から移行 smoka7/hop.nvim
- cssの色表現 norcalli/nvim-colorizer.lua
- 折り畳みを見やすく anuvyklack/pretty-fold.nvim
- 折り畳みを開かずプレビュー anuvyklack/fold-preview.nvim

