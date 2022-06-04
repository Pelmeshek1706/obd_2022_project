# Проєктування бази даних

В рамках проекту розробляється: 
- модель бізнес-об'єктів 
```
@startuml


entity MassMedia #2ef0a9
entity MassMedia.ID
entity MassMedia.name_media

MassMedia.ID --* MassMedia
MassMedia.name_media -l-* MassMedia


entity offCountrySources #2ef0a9
entity offCountrySources.ID
entity offCountrySources.source_URL
entity offCountrySources.mass_media_ID
entity offCountrySources.country_ID

offCountrySources.ID --* offCountrySources
offCountrySources.source_URL --* offCountrySources
offCountrySources.mass_media_ID -r-* offCountrySources
offCountrySources.country_ID --* offCountrySources


entity yellowPress #2ef0a9
entity yellowPress.ID
entity yellowPress.country_ID
entity yellowPress.yellow_press_URL

yellowPress.ID -l-* yellowPress
yellowPress.country_ID -u-* yellowPress
yellowPress.yellow_press_URL --* yellowPress


entity currency #2ef0a9
entity currency.ID
entity currency.currency_name

currency.ID --* currency
currency.currency_name -u-* currency


entity neighbours #2ef0a9
entity neighbours.ID
entity neighbours.neighbour_name
entity neighbours.neighbour_id

neighbours.ID -r-* neighbours
neighbours.neighbour_name -u-* neighbours
neighbours.neighbour_id -u-* neighbours


entity countries #2ef0a9
entity countries.ID
entity countries.country_name
entity countries.country_pres
entity countries.country_description
entity countries.last_update
entity countries.population
entity countries.currency_ID

countries.ID -u-* countries
countries.country_name -u-* countries
countries.country_pres -r-* countries
countries.country_description -r-* countries
countries.last_update -l-* countries
countries.population -l-* countries
countries.currency_ID --* countries

entity userSex #2ef0a9
entity userSex.ID
entity userSex.user_sex

userSex.ID --* userSex 
userSex.user_sex -u-* userSex 


entity userRole #2ef0a9
entity userRole.ID
entity userRole.user_role

userRole.ID -u-* userRole
userRole.user_role -u-* userRole


entity statistic #2ef0a9
entity statistic.ID
entity statistic.user_id
entity statistic.queries_count
entity statistic.filter_ID
entity statistic.country_ID
entity statistic.user_count

statistic.ID -r-* statistic
statistic.user_id -r-* statistic
statistic.queries_count -r-* statistic
statistic.filter_ID -l-* statistic
statistic.country_ID --* statistic
statistic.user_count --* statistic


entity comment #2ef0a9
entity comment.ID
entity comment.comment_author
entity comment.comment_text

comment.ID -l-* comment
comment.comment_author --* comment
comment.comment_text --* comment


entity filters #2ef0a9
entity filters.ID
entity filters.filter_name
entity filters.filter_count

filters.ID --* filters
filters.filter_name -u-* filters
filters.filter_count -u-* filters


entity user #2ef0a9
entity user.ID
entity user.user_login
entity user.user_password
entity user.user_first_name
entity user.user_last_name
entity user.user_age
entity user.user_role_id
entity user.user_sex_id
entity user.user_email
entity user.user_last_update

user.ID --* user
user.user_login --* user
user.user_password -u-* user
user.user_first_name -u-* user
user.user_last_name -r-* user
user.user_age -r-* user
user.user_role_id -r-* user
user.user_sex_id -l-* user
user.user_email -l-* user
user.user_last_update -l-* user



offCountrySources "n" -r- "1" MassMedia
countries "1" -u- "n" offCountrySources
countries "n" -- "1" yellowPress
countries "n" -l- "1" neighbours
countries "1" -r- "n*" currency
countries "n*" -- "1" statistic


user "1" -l- "n*" userSex
user "1" -- "n*" userRole
statistic "1" -- "n*" user 
user "n" -l- "1" comment

statistic "1" -r- "n*" filters


@enduml
```

- ER-модель
```
@startuml


entity MassMedia #2ef0a9
{
ID: INT
name_media: VARCHAR
}


entity offCountrySources #2ef0a9
{
ID:INT
source_URL: VARCHAR
mass_media_ID: INT
country_ID: INT
}


entity yellowPress #2ef0a9
{
ID:INT
country_ID: INT
yellow_press_URL: VARCHAR
}

entity currency #2ef0a9
{
ID:INT
currency_name VARCHAR
}


entity neighbours #2ef0a9
{
ID:INT
neighbour_name: VARCHAR
neighbour_ID: INT
}


entity countries #2ef0a9
{
ID:INT
country_name : VARCHAR
country_pres: VARCHAR
country_description: TEXT
last_update: DATE
population: INT
currency_ID: INT
}

entity userSex #2ef0a9
{
ID:INT
user_sex: VARCHAR
}


entity userRole #2ef0a9
{
ID:INT
user_role: VARCHAR
}


entity statistic #2ef0a9
{
ID:INT
user_id: INT
queries_count: INT
filter_ID: INT
country_ID: INT
user_count: INT
}


entity comment #2ef0a9
{
ID:INT
comment_author: INT
comment_text: VARCHAR
}


entity filters #2ef0a9
{
ID:INT
filter_name: VARCHAR
filter_count: INT
}


entity user #2ef0a9
{
ID:INT
user_login: VARCHAR
user_password: VARCHAR
user_first_name: VARCHAR
user_last_name: VARCHAR
user_age: INT
user_role_id: INT
user_sex_id: INT
user_email: VARCHAR
user_last_update: DATE
}



offCountrySources "n" -r- "1" MassMedia
countries "1" -u- "n" offCountrySources
countries "n" -- "1" yellowPress
countries "n" -l- "1" neighbours
countries "1" -r- "n*" currency
countries "n*" -- "1" statistic


user "1" -l- "n*" userSex
user "1" -- "n*" userRole
statistic "1" -- "n*" user 
user "n" -r- "1" comment

statistic "1" -r- "n*" filters


@enduml
```

- реляційна схема

https://imgur.com/HqUt7yN
