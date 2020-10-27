# DB 設計

## users table

| Column                 | Type                | Options                 |
|--------------------    |---------------------|-------------------------|
| email                  | string              | null: false             |
| password               | string              | null: false             |
| family_name            | string              | null: false             |
| first_name             | string              | null: false             |
| family_name(フリガナ)   | string              | null: false             |
| first_name(フリガナ)    | string              | null: false             |
| date                   | string              | null: false             |
| nickname               | text                | null: false             |

### Association

* has_many :items
* has_many :Purchase_record

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| name                                | text       | null: false       |
| explanation                         | text       | null: false       |
| category                            | string     | null: false       |
| status                              | string     | null: false       |
| price                               | text       | null: false       |
| seller                              | text       | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :user
- has_one :Purchase_record

## Purchase_record table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| item        | references | foreign_key: true |
| user        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item
- has_one :Shipping_address


## Shipping_address table

| Column                | Type       | Options           |
|-----------------------|------------|-------------------|
| address               | text       | null: false       |
| purchase_record       | references | foreign_key: true |


### Association

- belongs_to :Purchase_record


