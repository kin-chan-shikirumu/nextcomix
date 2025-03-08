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