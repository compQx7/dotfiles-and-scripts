# TODO

- WSL2設定
- log repository を分離

- Telescope
  - hit件数は知りたい
  - entension の調査
  - quickfixとの連携
  - fzf との連携リベンジ
  - telescope-file-browser
    - oil と比較（追加・削除、異動、コピーしやすいか、rename が lsp に対応しているか）

- lazygit では`<Leader>to`に反応しないようにしたい
  - 通常のターミナルでのみにしたい
  - 現状`<C-t>`によるindentが効かない
- toggle-term のトグルショートカット
  - 現状`<C-t>`に割り当てているため、insertモードでindentが効かない
  - `<Plug>(xxx)`, `<Nop>`で名前空間で解決できる？

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

- 調査
  - diffview
    - 見やすさの向上

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
