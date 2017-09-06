# Model

## *User*

### association

` has_many :prototypes, has_many :Likes, has_many :Comments `

### table
- name :string, null: false
- avatar :string
- email :text, null: false, unique: true
- member :string
- profile :text
- works :string



## *Prototype*

### association
` belongs_to :user, has_many :images, :likes, :comments, dependent: :destroy `

### table
- title :string, null: false
- catch_copy :string
- concept :string
- user :references, foreign_key: true
- likes_count :integer


## *Image*

### association
` belongs_to :prototype `

### table
- url :text, null: false
- prototype :references, foreign_key: true


## *Like*

### association
` belongs_to :user, belngs_to :prototype, counter_cache: true `

### table
- user :references, foreign_key: true
- prototype :references, foreign_key: true


## *Comment*

### association
 ` belongs_to :user, belongs_to :prototype `


### table
- content :text, null: false
- user :references, foreign_key: true
- protype :references, foreign_key: true
