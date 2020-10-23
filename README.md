# DB 設計

## users table

| Column             | Type                | Options                 |
|--------------------|---------------------|-------------------------|
| email              | string              | null: false             |
| password           | string              | null: false             |
| name               | string              | null: false             |
| birth              | string              | null: false             |
| nickname           | text                | null: false             |

### Association

* has_many :items
* has_many :Purchase_record

## items table

| Column                              | Type       | Options           |
|-------------------------------------|------------|-------------------|
| item_name                           | text       | null: false       |
| category                            | text       | null: false       |
| price                               | text       | null: false       |
| seller                              | text       | null: false       |
| user                                | references | foreign_key: true |

### Association

- belongs_to :users
- has_one :Purchase_record

## Purchase_record table

| Column      | Type       | Options           |
|-------------|------------|-------------------|
| buyer       | text       | null: false       |
| item        | text       | null: false       |
| time        | text       | null: false       |
| items       | references | foreign_key: true |
| users       | references | foreign_key: true |

### Association

- belongs_to :users
- belongs_to :items
- has_one :Shipping_address


## Shipping_address table

| Column                | Type       | Options           |
|-----------------------|------------|-------------------|
| address               | text       | null: false       |
| purchase_record       | references | foreign_key: true |


### Association

- belongs_to :Purchase_record


