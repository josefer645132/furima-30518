# DB 設計

## users table

| Column                 | Type                | Options                 |
|--------------------    |---------------------|-------------------------|
| email                  | string              | null: false             |
| encrypted_password     | string              | null: false             |
| family_name            | string              | null: false             |
| first_name             | string              | null: false             |
| family_name(frigana)   | string              | null: false             |
| first_name(frigana)    | string              | null: false             |
| birthday               | date                | null: false             |
| nickname               | string              | null: false             |

### Association

* has_many :items
* has_many :purchase_records

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| name                                | string     | null: false       |
| explanation                         | text       | null: false       |
| category_id                         | integer    | null: false       |
| status_id                           | integer    | null: false       |
| shipping_cost_id                    | integer    | null: false       |
| delivery_area_id                    | integer    | null: false       |
| days_to_delivery_id                 | integer    | null: false       |
| price_id                            | integer    | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user
- has_one :purchase_record

## purchase_records table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| item        | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :shipping_address


## shipping_address table

| Column                | Type       | Options           |
|-----------------------|------------|-------------------|
| postal_code           | string     | null: false       |
| prefectures_id        | integer    | null: false       |
| municipality          | string     | null: false       |
| address               | string     | null: false       |
| building_name         | string     |                   |
| phone_number          | string     | null: false       |
| purchase_record       | references | foreign_key: true |



### Association

- belongs_to :purchase_record


