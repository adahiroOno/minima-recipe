class Food < ApplicationRecord
  has_many :recipes_foods
  has_many :recipes, through: :recipes_foods
end

# class Food < ActiveHash::Base
#   self.data = [

#     { id: 101, name:'うどん', category:'麺類' },
#     { id: 102, name:'そうめん', category:'麺類' },
#     { id: 103, name:'そば', category:'麺類' },
#     { id: 104, name:'パスタ', category:'麺類' },
#     { id: 105, name:'ラーメン', category:'麺類' },
#     { id: 106, name:'冷麺', category:'麺類' },
#     { id: 107, name:'焼きそば', category:'麺類' },

#     { id: 201, name:'アスパラガス', category:'野菜' },
#     { id: 202, name:'かぼちゃ', category:'野菜' },
#     { id: 203, name:'キノコ', category:'野菜' },
#     { id: 204, name:'キャベツ', category:'野菜' },
#     { id: 205, name:'ごぼう', category:'野菜' },
#     { id: 206, name:'さつまいも', category:'野菜' },
#     { id: 207, name:'さといも', category:'野菜' },
#     { id: 208, name:'じゃがいも', category:'野菜' },
#     { id: 209, name:'しょうが', category:'野菜' },
#     { id: 210, name:'だいこん', category:'野菜' },
#     { id: 211, name:'たけのこ', category:'野菜' },
#     { id: 212, name:'たまねぎ', category:'野菜' },
#     { id: 213, name:'とうもろこし', category:'野菜' },
#     { id: 214, name:'トマト', category:'野菜' },
#     { id: 215, name:'なす', category:'野菜' },
#     { id: 216, name:'にんじん', category:'野菜' },
#     { id: 217, name:'にんにく', category:'野菜' },
#     { id: 218, name:'ねぎ', category:'野菜' },
#     { id: 219, name:'ピーマン', category:'野菜' },
#     { id: 220, name:'ブロッコリー', category:'野菜' },
#     { id: 221, name:'らっきょう', category:'野菜' },
#     { id: 222, name:'レタス', category:'野菜' },
#     { id: 223, name:'れんこん', category:'野菜' },
#     { id: 224, name:'山菜', category:'野菜' },
#     { id: 225, name:'豆類', category:'野菜' },
#     { id: 226, name:'白菜', category:'野菜' },

#     { id: 301, name:'アジ', category:'水産物' },
#     { id: 302, name:'アナゴ', category:'水産物' },
#     { id: 303, name:'イカ', category:'水産物' },
#     { id: 304, name:'イクラ・筋子', category:'水産物' },
#     { id: 305, name:'イワシ', category:'水産物' },
#     { id: 306, name:'ウナギ', category:'水産物' },
#     { id: 307, name:'ウニ', category:'水産物' },
#     { id: 308, name:'エビ', category:'水産物' },
#     { id: 309, name:'カツオ', category:'水産物' },
#     { id: 310, name:'カニ', category:'水産物' },
#     { id: 311, name:'サケ', category:'水産物' },
#     { id: 312, name:'サバ', category:'水産物' },
#     { id: 313, name:'サンマ', category:'水産物' },
#     { id: 314, name:'シシャモ', category:'水産物' },
#     { id: 315, name:'タイ', category:'水産物' },
#     { id: 316, name:'タコ', category:'水産物' },
#     { id: 317, name:'タラ', category:'水産物' },
#     { id: 318, name:'たらこ', category:'水産物' },
#     { id: 319, name:'ちりめん・しらす', category:'水産物' },
#     { id: 320, name:'フグ', category:'水産物' },
#     { id: 321, name:'ホッケ', category:'水産物' },
#     { id: 322, name:'マグロ', category:'水産物' },
#     { id: 323, name:'数の子', category:'水産物' },
#     { id: 324, name:'明太子', category:'水産物' },
#     { id: 325, name:'貝', category:'水産物' },
#     { id: 326, name:'海藻類', category:'水産物' },

#     { id: 401, name:'牛ヒレ肉', category:'肉' },
#     { id: 402, name:'牛ロース肉', category:'肉' },
#     { id: 403, name:'牛かた肉', category:'肉' },
#     { id: 404, name:'牛ばら肉', category:'肉' },
#     { id: 405, name:'牛もも肉', category:'肉' },
#     { id: 406, name:'牛ひき肉', category:'肉' },
#     { id: 407, name:'豚ヒレ肉', category:'肉' },
#     { id: 408, name:'豚ロース肉', category:'肉' },
#     { id: 409, name:'豚かた肉', category:'肉' },
#     { id: 410, name:'豚ばら肉', category:'肉' },
#     { id: 411, name:'豚もも肉', category:'肉' },
#     { id: 412, name:'豚ひき肉', category:'肉' },
#     { id: 413, name:'とり手羽肉', category:'肉' },
#     { id: 414, name:'とりむね肉', category:'肉' },
#     { id: 415, name:'とりもも肉', category:'肉' },
#     { id: 416, name:'とりささみ', category:'肉' },
#     { id: 417, name:'とりかわ', category:'肉' },
#     { id: 418, name:'とりひき肉', category:'肉' },
#     { id: 419, name:'合いびき肉', category:'肉' },
#     { id: 420, name:'ベーコン', category:'肉' },
#     { id: 421, name:'ハム', category:'肉' },
#     { id: 422, name:'ソーセージ', category:'肉' },

#     { id: 501, name:'卵', category:'卵・チーズ・乳製品' },
#     { id: 502, name:'チーズ', category:'卵・チーズ・乳製品' },
#     { id: 503, name:'牛乳', category:'卵・チーズ・乳製品' },
#     { id: 504, name:'ヨーグルト', category:'卵・チーズ・乳製品' },
#     { id: 505, name:'生クリーム', category:'卵・チーズ・乳製品' },

#     { id: 601, name:'豆腐', category:'豆腐・納豆・漬物' },
#     { id: 602, name:'油揚げ・厚揚げ', category:'豆腐・納豆・漬物' },
#     { id: 603, name:'納豆', category:'豆腐・納豆・漬物' },
#     { id: 604, name:'キムチ', category:'豆腐・納豆・漬物' },
#     { id: 605, name:'梅干し', category:'豆腐・納豆・漬物' },
#     { id: 606, name:'沢庵', category:'豆腐・納豆・漬物' },
#     { id: 607, name:'漬物', category:'豆腐・納豆・漬物' },
#     { id: 608, name:'こんにゃく・白滝', category:'豆腐・納豆・漬物' },
#     { id: 609, name:'佃煮', category:'豆腐・納豆・漬物' },
#     { id: 610, name:'メンマ・ザーサイ', category:'豆腐・納豆・漬物' },

#     { id: 701, name:'みかん・オレンジ・柑橘類', category:'果物' },
#     { id: 702, name:'メロン', category:'果物' },
#     { id: 703, name:'マンゴー', category:'果物' },
#     { id: 704, name:'さくらんぼ', category:'果物' },
#     { id: 705, name:'りんご', category:'果物' },
#     { id: 706, name:'いちご', category:'果物' },
#     { id: 707, name:'パイナップル', category:'果物' },
#     { id: 708, name:'レモン', category:'果物' },
#     { id: 709, name:'グレープフルーツ', category:'果物' },
#     { id: 710, name:'キウイフルーツ', category:'果物' },
#     { id: 711, name:'ベリー類', category:'果物' },
#     { id: 712, name:'すいか', category:'果物' },
#     { id: 713, name:'梅・プラム', category:'果物' },
#     { id: 714, name:'柿', category:'果物' },
#     { id: 715, name:'栗', category:'果物' },
#     { id: 716, name:'ぶどう', category:'果物' },
#     { id: 717, name:'バナナ', category:'果物' },
#     { id: 718, name:'もも', category:'果物' },
#     { id: 719, name:'梨', category:'果物' }

#   ]

#   include ActiveHash::Associations
#   has_many :recipes_foods
#   has_many :recipes, through: :recipes_foods

# end