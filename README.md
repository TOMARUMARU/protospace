# Model

## *User*

### association

` has_many :prototypes, has_many :Likes, has_many :Comments `

### table
- username :string, null: false
- avatar :text
- email :text, null: false, unique: true
- member :string
- profile :text
- works :string



## *Prototype*

### association
` belongs_to :user, has_many :images, has_many :likes, has_many :comments `

### table
- title :string
- catch_copy :text
- concept :string
- user_id :references, foreign_key: true


## *Image*

### association
` belongs_to :prototype `

### tabl
- url :text
- prototype_id :references, foreign_key: true


## *Like*

### association
` belongs_to :user, belngs_to :prototype `

### table
- user_id :references, foreign_key: true
- prototype_id :references, foreign_key: true


## *Comment*

### association
 ` belongs_to :user, belongs_to :prototype `


### table
- content :text
- user_id :references, foreign_key: true
- protype_id :references, foreign_key: true
