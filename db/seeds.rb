# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Tag.create([
{ name: 'バトル・アクション' },
{ name: 'ギャグ・コメディ' },
{ name: 'スポーツ・競技' },
{ name: '青春・恋愛' },
{ name: 'SF・ファンタジー' },
{ name: '歴史・時代物' },
{ name: '日常' },
{ name: '異世界・勇者・転生' },
{ name: '謎解き・サスペンス' },
{ name: 'ヤンキー・アングラ' },
{ name: 'グルメ' },
{ name: 'ヒューマンドラマ' },
{ name: '少年' },
{ name: '少女' },
{ name: '女性' },
{ name: '青年' }
])

Tweet.create([
{ tag_ids: '', title: 'ONE PIECE（ワンピース）', image: 'ONE-PIECE.jpg', about: '時は大海賊時代。東の海(イーストブルー)の小さな港町フーシャ村にて、海賊シャンクスに憧れていた少年モンキー・D・ルフィは、誤ってゴムゴムの実を食べてしまいカナヅチに。山賊に誘拐され海に落ちたところをシャンクスに命懸けで救われ、彼の麦わらの帽子を預かる約束をした。そこから10年の修行を経て、「麦わらのルフィ」はついにワンピース(ひとつなぎの大秘宝)を求めグランドライン(偉大なる航路)を目指す…！', body: '王道中の王道。訪れた様々な島で繰り広げられる冒険・戦いに読者はいつもわくわくしながらページをめくり、戦いの終末には感動の展開が。長期の連載により多くの章があり、どの編が好きかは読者によってかなり分かれる模様。', author: '尾田栄一郎', serialization: '集英社『週刊少年ジャンプ』1997年34号より連載。単行本111巻まで発売(2025年3月現在)。', volume: '111', circulationtotal: '全世界5億1650万部(2022年5月現在)', circulation: '516500000', circulationtotwothousand: '22750000', circulationtotwentyten: '147500000', circulationtotwentyfifteen: '150000000', circulationtotwentytwenty: '140000000', circulationtotwentytwentyfive: '51650000', award: '', app: '' },

{ tag_ids: '', title: 'キングダム', image: 'キングダム.jpg', about: '', body: '', author: '原泰久', serialization: '', volume: '75', circulationtotal: '', circulation: '110000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '鬼滅の刃', image: '鬼滅の刃.jpg', about: '', body: '', author: '吾峠呼世晴', serialization: '', volume: '23', circulationtotal: '', circulation: '150000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '三国志', image: '三国志.jpg', about: '', body: '', author: '横山光輝', serialization: '', volume: '60', circulationtotal: '', circulation: '80000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'チ。-地球の運動について-', image: 'チ。-地球の運動について-.jpg', about: '', body: '', author: '魚豊', serialization: '', volume: '8', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '火の鳥', image: '火の鳥.jpg', about: '', body: '', author: '手塚治虫', serialization: '', volume: '13', circulationtotal: '', circulation: '0', circulationtotwothousand: '0', circulationtotwentyten: '0', circulationtotwentyfifteen: '0', circulationtotwentytwenty: '0', circulationtotwentytwentyfive: '0', award: '', app: '' },
{ tag_ids: '', title: '逃げ上手の若君', image: '逃げ上手の若君.jpg', about: '', body: '', author: '松井優征', serialization: '', volume: '19', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'るろうに剣心シリーズ', image: '.jpg', about: '', body: '', author: '和月伸宏', serialization: '', volume: '', circulationtotal: '', circulation: '72000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'ゴールデンカムイ', image: 'ゴールデンカムイ.jpg', about: '', body: '', author: '野田サトル', serialization: '', volume: '31', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },

{ tag_ids: '', title: '呪術廻戦', image: '呪術廻戦.jpg', about: '', body: '', author: '芥見下々', serialization: '', volume: '', circulationtotal: '', circulation: '100000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '僕のヒーローアカデミア', image: '僕のヒーローアカデミア.jpg', about: '', body: '', author: '堀越耕平', serialization: '', volume: '42', circulationtotal: '', circulation: '100000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'ハイキュー!!', image: 'ハイキュー!!.jpg', about: '', body: '', author: '古舘春一', serialization: '', volume: '45', circulationtotal: '', circulation: '70000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'SPY×FAMILY', image: 'SPY×FAMILY.jpg', about: '', body: '', author: '遠藤達哉', serialization: '', volume: '15', circulationtotal: '', circulation: '38000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '【推しの子】', image: '推しの子.jpg', about: '', body: '', author: '赤坂アカ（原作）・横槍メンゴ（作画）', serialization: '', volume: '16', circulationtotal: '', circulation: '20000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'ブルーロック', image: '.jpg', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '40000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'アオアシ', image: 'アオアシ.jpg', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '葬送のフリーレン', image: '葬送のフリーレン.jpg', about: '', body: '', author: '', serialization: '', volume: '13', circulationtotal: '', circulation: '22000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '薬屋のひとりごと', image: '薬屋のひとりごと.jpg', about: '', body: '', author: '日向夏（小説）・しのとうこ（イラスト）・ねこクラゲ/倉田三ノ路（作画）', serialization: '', volume: '19', circulationtotal: '', circulation: '20000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '東京卍リベンジャーズ', image: '.jpg', about: '', body: '', author: '和久井健', serialization: '', volume: '', circulationtotal: '', circulation: '70000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '', image: '', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },

{ tag_ids: '', title: '東京喰種', image: '.jpg', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '47000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '約束のネバーランド', image: '約束のネバーランド.jpg', about: '', body: '', author: '白井カイウ（原作）・出水ぽすか（作画）', serialization: '', volume: '20', circulationtotal: '', circulation: '42000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'ワンパンマン', image: '.jpg', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '32000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '黒子のバスケ', image: '黒子のバスケ.jpg', about: '', body: '', author: '藤巻忠俊', serialization: '', volume: '30', circulationtotal: '', circulation: '31000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '暗殺教室', image: '暗殺教室.jpg', about: '', body: '', author: '松井優征', serialization: '', volume: '21', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '', image: '', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },

{ tag_ids: '', title: '今日から俺は!!', image: '', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '40000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '遊☆戯☆王', image: '', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '40000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '宇宙兄弟', image: '', about: '', body: '', author: '小山宙哉', serialization: '', volume: '', circulationtotal: '', circulation: '31000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '七つの大罪', image: '', about: '', body: '', author: '鈴木央', serialization: '', volume: '', circulationtotal: '', circulation: '55000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '銀魂', image: '', about: '銀魂.jpg', body: '', author: '空知英秋', serialization: '', volume: '77', circulationtotal: '', circulation: '58000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'テニスの王子様', image: '', about: '', body: '', author: '許斐剛', serialization: '', volume: '', circulationtotal: '', circulation: '60000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'HUNTER×HUNTER', image: '', about: '', body: '', author: '冨樫義博', serialization: '', volume: '', circulationtotal: '', circulation: '84000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '', image: '', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '', image: '', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },

{ tag_ids: '', title: 'ゴルゴ13', image: '.jpg', about: '', body: '', author: 'さいとう・たかを', serialization: '', volume: '210', circulationtotal: '', circulation: '300000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '名探偵コナン', image: '名探偵コナン.jpg', about: '', body: '', author: '青山剛昌', serialization: '', volume: '106', circulationtotal: '', circulation: '270000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'ドラゴンボール', image: '.jpg', about: '', body: '', author: '鳥山明', serialization: '', volume: '42', circulationtotal: '', circulation: '260000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'NARUTO -ナルト-', image: '.jpg', about: '', body: '', author: '岸本斉史', serialization: '', volume: '', circulationtotal: '', circulation: '250000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'SLAM DUNK（スラムダンク）', image: 'SLAM-DUNK.jpg', about: '', body: '井上雄彦', author: '', serialization: '', volume: '31', circulationtotal: '', circulation: '185000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'ブラックジャック', image: '.jpg', about: '', body: '', author: '手塚治虫', serialization: '', volume: '', circulationtotal: '', circulation: '176000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'こちら葛飾区亀有公園前派出所', image: '.jpg', about: '', body: '', author: '秋本治', serialization: '', volume: '200', circulationtotal: '', circulation: '157200000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'クレヨンしんちゃん', image: '.jpg', about: '', body: '', author: '臼井儀人', serialization: '', volume: '', circulationtotal: '', circulation: '148000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '進撃の巨人', image: '進撃の巨人.jpg', about: '', body: '', author: '諫山創', serialization: '', volume: '34', circulationtotal: '', circulation: '140000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '美味しんぼ', image: '.jpg', about: '', body: '', author: '雁屋哲（原作）・花咲アキラ（作画）', serialization: '', volume: '', circulationtotal: '', circulation: '135000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'BLEACH（ブリーチ）', image: '.jpg', about: '', body: '', author: '久保帯人', serialization: '', volume: '', circulationtotal: '', circulation: '130000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: 'ジョジョの奇妙な冒険', image: '.jpg', about: '', body: '', author: '荒木飛呂彦', serialization: '', volume: '', circulationtotal: '', circulation: '120000000', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '', image: '', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
{ tag_ids: '', title: '', image: '', about: '', body: '', author: '', serialization: '', volume: '', circulationtotal: '', circulation: '', circulationtotwothousand: '', circulationtotwentyten: '', circulationtotwentyfifteen: '', circulationtotwentytwenty: '', circulationtotwentytwentyfive: '', award: '', app: '' },
])