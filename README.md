# テーブル設計

## user テーブル

| Column           | Type    | Options                 |
| --------         | ------  | -----------             |
| nickname         | string  | null: false             |
| email            | string  | null: false             |
| password         | string  | null: false             |
| family_name      | string  | null: false             |
| first_name       | string  | null: false             |
| family_name_kana | string  | null: false             |
| first_name_kana  | string  | null: false             |
| birthday         | date    | null: false             |

### Association

- has_many :comments
- has_many :items
- has_many :buyers



## items テーブル

| Column          | Type     | Options                      |
| ----------------| -------- | ---------------------------- |
| prace           | interger | null: false                  |
| name            | string   | null: false                  |
| condition       | interger | null: false                  |
| image           | string   | null: false                  |
| discription     | text     | null: false                  |
| status          | interger | null: false                  |
| user            | reference| null: false, foreign_key:true|
| postage         | interger | null: false                  |
| prefecture      | interger | null: false                  |

## Association
- has_many :comments
- belongs_to :user
- has_one :buyer

## comments テーブル

| Column  | Type        | Options                        |
| ------- | ----------- | ------------------------------ |
| user    | references  | null: false, foreign_key: true |
| item    | references  | null: false, foreign_key: true |
| comment | text        | null: false                    |

## Association
- belongs_to :user
- belongs_to :item

## buyers テーブル

| Column  | Type        | Options                        |
| ------- | ----------- | ------------------------------ |
| item    | references  | null: false, foreign_key: true |
| user    | references  | null: false                    |

## Association
- belongs_to :item
- belongs_to :user
- has_one :shippingaddress

## shippingaddress テーブル

| Column          | Type     | Options                      |
| ----------------| -------- | ---------------------------- |
| post_code       | string   | null: false                  |
| prefececture    | interger | null: false                  |
| city            | string   | null: false                  |
| address         | string   | null: false                  |
| buildingname    | string   |                              |
| tel             | string   | null: false                  |
| buyer           | reference| null: false, foreign_key:true|

## Association

- belongs_to :buyer