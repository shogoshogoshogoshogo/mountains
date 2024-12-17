Moutains ER
[![Image from Gyazo](https://i.gyazo.com/48b15c6a2f123b00add39d537cce2bee.png)](https://gyazo.com/48b15c6a2f123b00add39d537cce2bee)
[![Image from Gyazo](https://i.gyazo.com/4d7375191e349482e0f769af31c6186f.png)](https://gyazo.com/4d7375191e349482e0f769af31c6186f)
## users テーブル

|Column               |Type  |Options                  |
|---------------------|------|-------------------------|
|nickname             |string|null:false               |  
|email                |string|null:false, unique: true |
|encrypted_password   |string|null:false               |
|family_name          |string|null:false               |
|first_name           |string|null:false               |  
|family_name_kana     |string|null:false               |
|first_name_kana      |string|null:false               |
|birthdate            |date  |null:false               |

## Association

has_many :mountains
has_many :comments

## mountains テーブル

|Column               |Type  |Options                          |
|---------------------|------|---------------------------------|
|name                 |string|null:false                       |
|height               |string|                                 |
|location             |string|                                 |
|date_climbed         |date|                                   |  
|difficulty           |integer|                                |
|description          |text|                                   |
|user                 |references|null: false,foreign_key: true|


## Association

belongs_to :user
has_many :comments

## comments テーブル

|Column               |Type  |Options                           |
|---------------------|------|----------------------------------|
|user                 |references|null:false,foreign_key: true  |  
|mountain             |references|null:false,foreign_key: true  |


## ## Association

belongs_to :user
belongs_to :mountain


