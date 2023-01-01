"use strict"
const number = process.argv[2] || 0;
let sum = 0;
for (let i = 1; i <= number; i++) {
  sum = sum + i;
}
console.log(sum);

// process.argv は Node.js がデフォルトで提供してくれる、コマンドライン引数が入った配列です。

// なぜ添字に 2 番を使っているかというと、
// 0 番には node コマンドのファイルのパスが入り、
// 1 番には実行しているプログラムのファイルのパスが入る、という決まりがあるためです。
// そのため、コマンドの後ろに書いた最初の引数は process.argv[2] となるのです。
// process.argv[2] が 未入力の場合、number には 0 が代入されます。