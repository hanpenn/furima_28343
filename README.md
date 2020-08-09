# テーブル設計

## user テーブル

| Column           | Type    | Options                 |
| --------         | ------  | -----------             |
| nickname         | string  | null: false             |
| email            | string  | null: false             |
| password         | string  | null: false             |
| tel              | interger| null: false, unique:true|
| family_name      | string  | null: false             |
| first_name       | string  | null: false             |
| family_name_kana | string  | null: false             |
| first_name_kana  | string  | null: false             |
| birthday         | string  | null: false             |

### Association

- has_many :comments
- has_many :items
- has_one  :cards

## items テーブル

| Column          | Type     | Options                      |
| ----------------| -------- | ---------------------------- |
| prace           | interger | null: false                  |
| name            | string   | null: false                  |
| condition       | string   | null: false                  |
| image_id        | reference| null: false                  |
| item_discription| text     | null: false                  |
| status          | interger | null: false                  |
| user_id         | reference| null: false, foreign_key:true|
| postage         | string   | null: false                  |
| prefecture      | interger | null: false                  |
| buyer_id        |references| null: false, foreign_key:true|
| seller_id       |references| null: false, foreign_key:true|

## Association
- has_many :comments
- belongs_to :users
- has_many :images
- has_one :buyers

## cards テーブル

| Column      | Type       | Options                        |
| ------------| ---------- | ------------------------------ |
| user_id     | references | null: false, foreign_key: true |
| card_number | interger   | null: false                    |
| card_year   | interger   | null: false                    |
| card_month  | interger   | null: false                    |
|security_code| interger   | null: false                    |

## Association
- belongs_to :users

## comments テーブル

| Column  | Type        | Options                        |
| ------- | ----------- | ------------------------------ |
| user_id | references  | null: false, foreign_key: true |
| item_id | references  | null: false, foreign_key: true |
| comment | text        | null: false                    |

## Association
- belongs_to :users
- belongs_to :items

## images テーブル

| Column  | Type        | Options                        |
| ------- | ----------- | ------------------------------ |
| url     | string      | null: false                    |
| item_id | references  | null: false, foreign_key: true |

## Association
- belongs_to :items

## buyers テーブル

| Column  | Type        | Options                        |
| ------- | ----------- | ------------------------------ |
| postasge| string      | null: false                    |
| item_id | references  | null: false, foreign_key: true |
| address | text        | null: false                    |

## Association
- belongs_to :items

