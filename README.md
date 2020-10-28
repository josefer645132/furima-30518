# DB 設計

## users table

| Column                 | Type                | Options                 |
|--------------------    |---------------------|-------------------------|
| email                  | string              | null: false             |
| encrypted_password     | string              | null: false             |
| family_name            | string              | null: false             |
| first_name             | string              | null: false             |
| family_name(フリガナ)   | string              | null: false             |
| first_name(フリガナ)    | string              | null: false             |
| birthday               | date                | null: false             |
| nickname               | string              | null: false             |

### Association

* has_many :items
* has_many :purchase_record

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
| postal_code           | integer    | null: false       |
| prefectures           | integer    | null: false       |
| municipality          | integer    | null: false       |
| address               | integer    | null: false       |
| building_name         | integer    | null: false       |
| phone_number          | integer    | null: false       |
| purchase_record       | references | foreign_key: true |



### Association

- belongs_to :purchase_record


