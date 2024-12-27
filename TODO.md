# TODO

- WSL2設定
- log repository を分離

- lazygit を dotfiles に入れる
- ステータスラインにプロジェクトルートからのパスを表示したい
- ファイラー上でパスをコピーしたい

- Telescope
  - quickfixとの連携
  - hit件数は知りたい
  - incremental selection だかなんだか(treesitter?)
  - entension の調査
    - telescope-file-browser
      - oil と比較（追加・削除、異動、コピーしやすいか、rename が lsp に対応しているか）

- toggle-term のトグルショートカット
  - 現状`<C-t>`に割り当てているため、insertモードでindentが効かない
  - `<Plug>(xxx)`, `<Nop>`で名前空間で解決できる？

- Git環境
  - vscode git graph のように複数ブランチの動きや進んでいるリモートブランチを把握したい
  - 数コミット前からの変更を左側に表示したい
    - Gitsigns の changebase が巨大リポジトリでうまくいかない
      - diffview も同様
  - プレビューを見やすくできないか、diffviewでなんとかするか、diffview少し遅いのが気になる

- プロジェクトごとに追加プラグインや追加設定ができると良い
  - dotfiles にセットを用意するか、プロジェクトルートに設定を配置

- 必要な debug 機能
  - break point
    - 条件付き break point もあると良い
    - テストコードにも break point を設定できると良い
  - callstack
  - 変数の値を確認
  - dap でうまくやれる？

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

- cssの色表現 norcalli/nvim-colorizer.lua
- 折り畳みを見やすく anuvyklack/pretty-fold.nvim
- 折り畳みを開かずプレビュー anuvyklack/fold-preview.nvim

