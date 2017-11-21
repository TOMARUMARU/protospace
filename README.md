# Model

## *User*

### association

` has_many :prototypes,dependent: :destroy `
` has_many :likes, dependent: :destroy `
` has_many :comments, dependent: :destroy `


### table
- name :string, null: false
- avatar :string
- email :text, null: false, unique: true
- member :string
- profile :text
- works :string



## *Prototype*

### association
` belongs_to :user `
` has_many :images,dependent: :destroy `
` has_many :likes, dependent: :destroy `
` has_many :comments, dependent: :destroy `


### table
- title :string, null: false
- catch_copy :string, null: false
- concept :string, null: false
- user :references, foreign_key: true
- likes_count :integer, default: 0


## *Proto_image*

### association
` belongs_to :prototype `

### table
- image :text, null: false
- prototype :references, foreign_key: true
- status :integer, default: 0, limit: 1, null :false

## *Like*

### association
` belongs_to :user `
` belngs_to :prototype `
` counter_cache: likes_count `

### table
- user :references, foreign_key: true
- prototype :references, foreign_key: true


## *Comment*

### association
` belongs_to :user `
` belongs_to :prototype `


### table
- content :string, null: false
- user :references, foreign_key: true
- protype :references, foreign_key: true
