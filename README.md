
# Шаблон репозиторію для виконання лабораторних робіт з дисципліни "Організація баз даних"

## Як використовувати

В цьому репозиторії знаходиться шаблон для виконання лабораторних робіт.

Для виконання лабораторних робіт необхідно зробити ```fork``` цього репозіторію, склонувати вже власний репозіторій та розміщувати документацію у відповідних діректоріях ```./docs```.

В цьому файлі необхідно вказати тему лабораторних робіт (назву проекту). Коротку загальну характеристику
проекту, контактні дані виконавця, посилання на репо співвиконавців (за необхідністю).


Шаблон публікування підготовлено з використанням [VuePress](https://vuepress.vuejs.org/), та стартера 
[FriendlyUser/vuepress-theme-cool-starter](https://github.com/FriendlyUser/vuepress-theme-cool-starter).

Щоб опублікувати проект у Github Pages, налаштовуємо Github Pages (гілка ```gh-pages```), змінюємо файл ```./publish.sh```

```sh

#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:boldak/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
git push -f https://github.com/<USERNAME>/dis-edu.git master:gh-pages

cd -

```

Потім запускаємо

```bash
    npm run publish
```

Для відлагодження документації в локальному режимі запускаємо

```bash
    npm run docs:dev
```

Доступ до локально опублікованої версії [Cайт проекту](https://pelmeshek1706.github.io/obd_2022_project/)


## Додаткова інформація

- [Теми проєктів](./guidelines/themes.md)
- [Методичні вказівки](./guidelines/guidelines.md)

***Happy learning! Happy coding!*** 



testing some new 
just test 