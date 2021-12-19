// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

class Carousel {
  // 初期化
  constructor(query) {
    this.$elm = document.querySelector(query);

    this.maxIndex = Math.round(this.$elm.scrollWidth / this.$elm.clientWidth);
  }

  // 今の index を取得
  get index() {
    var index = Math.round(this.$elm.scrollLeft / this.$elm.clientWidth);
    return index;
  }

  // 指定した場所に移動
  goto(index) {
    var i = (index + this.maxIndex) % this.maxIndex;
    this.$elm.children[i].scrollIntoView({ behavior: "smooth" });
  }

  // 次へ
  next() {
    this.goto(this.index + 1);
  }

  // 前へ
  prev() {
    this.goto(this.index - 1);
  }
}

window.onload = function () {
  // カルーセルを生成
  var carousel = new Carousel('.carousel');

  // ボタンのセットアップ
  var $btnPrev = document.querySelector('.btn-prev');
  var $btnNext = document.querySelector('.btn-next');

  $btnPrev.onclick = () => { carousel.prev(); };
  $btnNext.onclick = () => { carousel.next(); };
};