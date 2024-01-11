# 課題1
---
## 課題内容
 * 1.　Rubyを使ってFizzBuzz問題の実装
 * 2.　Rspecで単体テストの実装
<br>

## 前提
 * FizzBuzz問題とは
   * 3で割り切れる場合は"Fizz"を出力する。
   * 5で割り切れる場合は"Buzz"を出力する。
   * 3と5の両方で割り切れる場合は"FizzBuzz"を出力する。
   * 上記のいずれでもない場合は、その数字をそのまま出力する。  
<br>

## 課題実行方法
 ### 環境構築
  1.Homebrewのインストール(以下参照)
  > https://aiacademy.jp/media/?p=2817

 2.rbenvのインストール
 ターミナルで以下のコマンドを入力
 > brew install rbenv

 3.rubyのインストール
 * ターミナルで以下のコマンドを入力
 > rbenv install --list

 * Rubyのダウンロード可能なバージョンが書かれているので最新バージョンを選びダウンロードする
> rbenv install 3.3.0(←例)

 * ダウンロードしたrubyを利用するために以下のコマンドを入力
> rbenv global 3.3.0(←例)

---

### 課題1-1

1-1. フォルダを作成し任意のテキストエディタで開く

1-2. エディタでファイル(FizzBuzz.rb)を作成し以下のコードを入力する

```
def fizz_buzz(number)
    if number % 15 == 0
        "fizz buzz"
    elsif number % 3 == 0
        "fizz"
    elsif number % 5 == 0
        "buzz"
    else
         number
    end
end

(1..100).each{ |i| p fizz_buzz(i)}
```

 1-3. ターミナルで上記のコードが保存されているディレクトリに移動し、以下のコマンドを実施するとFizzBuzz問題が出力される。
 > ruby FizzBuzz.rb

---

### 課題1-2

 2-1. 以下のコマンドでRspecのgemをダウンロードする。  
 > gem install rspec

 2-2. 以下のコマンドでGemfileを作成する
 > bundle init

*　作成されたGemfileに以下を追記しbundle installを実行する
> gem 'rspec'

> bundle install

* 以下のコマンドを入力し作成されたspecディレクトリで設定を行う
> bundle exec rspec --init

 2-3. specディレクトリ内にテストファイル(fizz_buzz_spec.rb)を作成する
  * ファイルに以下のコードを入力する

```
require_relative '../FizzBuzz'

RSpec.describe "FizzBuzz" do
    it 'returns "fizz buzz" when the number is divisible by 15' do
        expect(fizz_buzz(15)).to eq('fizz buzz')
        expect(fizz_buzz(30)).to eq('fizz buzz')
    end

    it 'returns "fizz" when the number is divisible by 3' do
        expect(fizz_buzz(3)).to eq('fizz')
        expect(fizz_buzz(6)).to eq('fizz')
        expect(fizz_buzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when the number is divisible by 5' do
        expect(fizz_buzz(5)).to eq('buzz')
        expect(fizz_buzz(10)).to eq('buzz')
        expect(fizz_buzz(20)).to eq('buzz')
    end
end

```

 2-4. 以下のコマンドを入力すると「fizz_Buzz_spec.rb」で定義した3つの単体テストの結果が出力される
 > bundle exec rspec
