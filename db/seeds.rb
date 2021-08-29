# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(
  name: 'admin',
  email: 'admin@mail',
  password: 'admindayo'
)

User.create(
  [
    {
      name: 'taro',
      email: 'taro@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'taroですよろしく！',
      image: open('app/assets/images/icon-you-1.png')
    },

    {
      name: 'hanako',
      email: 'hanako@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'hanakoですよろしく！',
      image: open('app/assets/images/icon-you-2.png')
    },

    {
      name: 'san',
      email: 'san@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'sanですよろしく！',
      image: open('app/assets/images/icon-you-3.png')
    },

    {
      name: 'yon',
      email: 'yon@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'yonですよろしく！',
      image: open('app/assets/images/icon-you-4.png')
    },

    {
      name: 'go',
      email: 'go@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'goですよろしく！',
      image: open('app/assets/images/icon-you-5.png')
    },

    {
      name: 'roku',
      email: 'roku@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'rokuですよろしく！',
      image: open('app/assets/images/icon-you-6.png')
    },

    {
      name: 'nana',
      email: 'nana@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'nanaですよろしく！',
      image: open('app/assets/images/icon-you-7.png')
    },

    {
      name: 'hachi',
      email: 'hachi@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'hachiですよろしく！',
      image: open('app/assets/images/icon-you-8.png')
    },

    {
      name: 'kyu',
      email: 'kyu@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'kyuですよろしく！',
      image: open('app/assets/images/icon-you-9.png')
    },

    {
      name: 'ju',
      email: 'ju@mail',
      password: 'monburan',
      password_confirmation: 'monburan',
      introduction: 'juですよろしく！',
      image: open('app/assets/images/icon-you-10.png')
    },

    {
      name: 'guest',
      email: 'guest@mail',
      password: 'guestdayo',
      password_confirmation: 'guestdayo',
      introduction: 'guestですよろしく!'
    }
  ]
)

Game.create(
  [
    {
      user_id: '1',
      game_title: 'テストプレイしているよ！',
      game_introduction: 'このゲームはまるでテストプレイの如く何度も同じことを繰り返し改善していくゲームです',
      recommended: "何度も何度も繰り返してくうちに達成値という数値が上がっていき実績を増やしていくゲームなのですが、
                      かなりサクサク進んでいき大体一回4０分ほどで終わるので時間がない時でもできるのが魅力です",
      price: '1200',
      game_image: open('app/assets/images/game-1.png'),
      created_at: '2020-07-11 02:13:55'
    },

    {
      user_id: '2',
      game_title: 'リバーシ',
      game_introduction: "2人のプレイヤーが交互に盤面へ石を打ちながら、
                            相手の石を自分の石で挟むことによって自分の石へと換えていき、
                            最終的な盤上の石の個数を競うゲームです",
      recommended: "抽象戦略ゲームの一つで、運の要素がなく、
                      2人のプレイヤーが互いに知恵を絞って実力だけを頼りに勝敗を決する。
                      ゲームのルールは単純明快だが、多数の戦術が生み出され、
                      日々戦略的な進歩を続けており「覚えるのに一分、極めるのに一生」という言葉があるほど奥深いゲームです。",
      price: '1000',
      game_image: open('app/assets/images/game-2.png'),
      created_at: '2020-08-10 12:17:44'
    },

    {
      user_id: '3',
      game_title: 'マンカラ',
      game_introduction: 'これひとつで様々なゲームを楽しめます',
      recommended: 'カラハやオワリ、オムウェソ、コンカク、バオなど様々なゲームがこれひとつで遊べる',
      price: '1500',
      game_image: open('app/assets/images/game-3.png'),
      created_at: '2020-08-24 18:01:32'
    },

    {
      user_id: '4',
      game_title: 'バックギャモン',
      game_introduction: "基本的に2人で遊ぶボードゲームの一種で、
                            盤上に配置された双方15個の駒をどちらが
                            先に全てゴールさせることができるかを競うゲームです",
      recommended: "世界最古のボードゲームとされており、
                      サイコロを振るたびに着手可能な選択肢の中から、
                      相手の次の可能性のある手を予測しながら自手を選択し
                      ゴールを目指す戦略性の高い双六のようなゲームです",
      price: '1500',
      game_image: open('app/assets/images/game-4.png'),
      created_at: '2020-09-04 10:00:12'
    },

    {
      user_id: '5',
      game_title: '人生的ゲーム',
      game_introduction: '生まれてから年老いるまでの人生をボードゲームで作ったゲーム',
      recommended: "ゲーム序盤のルーレット目によって「人生の筋道」が決まり、
                      その後の人生が左右されていく。プレイヤーはサイコロではなく「ルーレット」を回し、
                      人の一生になぞらえたイベントをこなしていく、そんな人生の体験ができるゲームです",
      price: '3000',
      game_image: open('app/assets/images/game-3.png'),
      created_at: '2020-09-14 07:20:50'
    },

    {
      user_id: '1',
      game_title: 'モ◯ポリー',
      game_introduction: '双六の要領で盤上を周回しながら他プレイヤーと盤上の不動産を取引することにより自らの資産を増していくゲームです',
      recommended: "同一グループを揃え、家やホテルを建設することで他のプレイヤーから高額なレンタル料を徴収して自らの資産を増し、
                      最終的に他のプレイヤーを全て破産させることを目的とするそんなゲームです",
      price: '2000',
      game_image: open('app/assets/images/game-5.png'),
      created_at: '2020-09-15 14:13:11'
    },

    {
      user_id: '2',
      game_title: '花札',
      game_introduction: '二人でできる「こいこい」、３人でできる「花合わせ」があるゲームです',
      recommended: '2人でプレイする「こいこい」は、勝負勘・度胸・かけひき・冷静さを必要とする知的ゲームです。',
      price: '1000',
      game_image: open('app/assets/images/game-7.png'),
      created_at: '2020-010-15 16:08:15'
    },

    {
      user_id: '3',
      game_title: 'Bookto',
      game_introduction: 'このゲームは山札からイベントカードやアイテムカードを引いていきイベントを繋げながら進んでいくゲームです。',
      recommended: '自分たちでストーリーを作りながらみんなで協力してボスであるドラゴンを倒す小さい子供とも一緒に遊べるそんなゲームです。',
      price: '500',
      game_image: open('app/assets/images/game-8.png'),
      created_at: '2020-010-15 16:08:15'
    }
  ]
)

Comment.create(
  [
    {
      user_id: '1',
      game_id: '1',
      comment: 'あまり時間がかからないのは良いよね',
      rate: '5',
      created_at: '2020-07-11 04:10:55'
    },

    {
      user_id: '2',
      game_id: '1',
      comment: 'いいね',
      rate: '5',
      created_at: '2020-07-14 06:13:55'
    },

    {
      user_id: '3',
      game_id: '1',
      comment: 'いいね',
      rate: '5',
      created_at: '2020-07-16 10:13:55'
    },

    {
      user_id: '2',
      game_id: '2',
      comment: 'いいね',
      rate: '5',
      created_at: '2020-08-20 06:13:55'
    },

    {
      user_id: '9',
      game_id: '2',
      comment: 'いいね',
      rate: '5',
      created_at: '2020-08-23 06:13:55'
    },

    {
      user_id: '10',
      game_id: '2',
      comment: 'いいね',
      rate: '4',
      created_at: '2020-08-25 06:13:55'
    },

    {
      user_id: '3',
      game_id: '3',
      comment: 'いいね',
      rate: '3',
      created_at: '2020-08-24 20:13:55'
    },

    {
      user_id: '8',
      game_id: '3',
      comment: 'いいね',
      rate: '3',
      created_at: '2020-09-10 06:13:55'
    },

    {
      user_id: '7',
      game_id: '3',
      comment: 'いいね',
      rate: '3',
      created_at: '2020-09-11 06:13:55'
    },

    {
      user_id: '4',
      game_id: '4',
      comment: 'いいね',
      rate: '5',
      created_at: '2020-09-04 20:13:55'
    },

    {
      user_id: '5',
      game_id: '4',
      comment: 'うーん',
      rate: '1',
      created_at: '2020-09-15 06:13:55'
    },

    {
      user_id: '3',
      game_id: '4',
      comment: 'いいね',
      rate: '4',
      created_at: '2020-09-20 06:13:55'
    },

    {
      user_id: '5',
      game_id: '5',
      comment: 'いいね',
      rate: '5',
      created_at: '2020-09-14 22:13:55'
    },

    {
      user_id: '6',
      game_id: '5',
      comment: 'うーん',
      rate: '2',
      created_at: '2020-09-20 10:13:55'
    },

    {
      user_id: '8',
      game_id: '5',
      comment: 'いいね',
      rate: '3',
      created_at: '2020-09-28 14:13:55'
    },

    {
      user_id: '1',
      game_id: '6',
      comment: 'いいね',
      rate: '5',
      created_at: '2020-09-15 20:13:55'
    },

    {
      user_id: '9',
      game_id: '6',
      comment: 'いいね',
      rate: '4',
      created_at: '2020-09-22 06:13:55'
    },

    {
      user_id: '10',
      game_id: '5',
      comment: 'いいね',
      rate: '4',
      created_at: '2020-08-20 06:13:55'
    },

    {
      user_id: '2',
      game_id: '7',
      comment: 'いいね',
      rate: '5',
      created_at: '2020-10-15 16:13:55'
    },

    {
      user_id: '7',
      game_id: '7',
      comment: 'うーん',
      rate: '3',
      created_at: '2020-10-16 06:13:55'
    },

    {
      user_id: '1',
      game_id: '7',
      comment: 'いいね',
      rate: '4',
      created_at: '2020-10-24 08:13:55'
    },

    {
      user_id: '4',
      game_id: '8',
      comment: 'うーん',
      rate: '1',
      created_at: '2020-10-16 06:13:55'
    },

    {
      user_id: '7',
      game_id: '8',
      comment: 'うーん',
      rate: '2',
      created_at: '2020-10-19 06:13:55'
    },

    {
      user_id: '9',
      game_id: '8',
      comment: 'うーん',
      rate: '1',
      created_at: '2020-10-24 06:13:55'
    }
  ]
)

# Favorite.create(
#   user_id: "1"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "1"
#   game_id: "3"
#   )

# Favorite.create(
#   user_id: "1"
#   game_id: "7"
#   )

# Favorite.create(
#   user_id: "1"
#   game_id: "6"
#   )

# Favorite.create(
#   user_id: "2"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "2"
#   game_id: "2"
#   )

# Favorite.create(
#   user_id: "2"
#   game_id: "7"
#   )

# Favorite.create(
#   user_id: "3"
#   game_id: "3"
#   )

# Favorite.create(
#   user_id: "3"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "3"
#   game_id: "8"
#   )

# Favorite.create(
#   user_id: "4"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "4"
#   game_id: "4"
#   )

# Favorite.create(
#   user_id: "4"
#   game_id: "7"
#   )

# Favorite.create(
#   user_id: "5"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "5"
#   game_id: "5"
#   )

# Favorite.create(
#   user_id: "5"
#   game_id: "6"
#   )

# Favorite.create(
#   user_id: "6"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "6"
#   game_id: "2"
#   )

# Favorite.create(
#   user_id: "6"
#   game_id: "3"
#   )

# Favorite.create(
#   user_id: "7"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "7"
#   game_id: "4"
#   )

# Favorite.create(
#   user_id: "7"
#   game_id: "5"
#   )

# Favorite.create(
#   user_id: "8"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "8"
#   game_id: "6"
#   )

# Favorite.create(
#   user_id: "8"
#   game_id: "7"
#   )

# Favorite.create(
#   user_id: "9"
#   game_id: "1"
#   )

# Favorite.create(
#   user_id: "9"
#   game_id: "4"
#   )

# Favorite.create(
#   user_id: "9"
#   game_id: "6"
#   )

# Favorite.create(
#   user_id: "10"
#   game_id: "5"
#   )

# Favorite.create(
#   user_id: "10"
#   game_id: "7"
#   )
