(window.webpackJsonp=window.webpackJsonp||[]).push([[17],{685:function(n,e,t){"use strict";t.r(e);var s=t(47),r=Object(s.a)({},(function(){var n=this,e=n.$createElement,t=n._self._c||e;return t("ContentSlotsDistributor",{attrs:{"slot-key":n.$parent.slotKey}},[t("h1",{attrs:{id:"проєктування-бази-даних"}},[t("a",{staticClass:"header-anchor",attrs:{href:"#проєктування-бази-даних"}},[n._v("#")]),n._v(" Проєктування бази даних")]),n._v(" "),t("p",[n._v("В рамках проекту розробляється:")]),n._v(" "),t("ul",[t("li",[n._v("модель бізнес-об'єктів")])]),n._v(" "),t("div",{staticClass:"language- extra-class"},[t("pre",{pre:!0,attrs:{class:"language-text"}},[t("code",[n._v('@startuml\n\n\nentity MassMedia #2ef0a9\nentity MassMedia.ID\nentity MassMedia.name_media\n\nMassMedia.ID --* MassMedia\nMassMedia.name_media -l-* MassMedia\n\n\nentity offCountrySources #2ef0a9\nentity offCountrySources.ID\nentity offCountrySources.source_URL\nentity offCountrySources.mass_media_ID\nentity offCountrySources.country_ID\n\noffCountrySources.ID --* offCountrySources\noffCountrySources.source_URL --* offCountrySources\noffCountrySources.mass_media_ID -r-* offCountrySources\noffCountrySources.country_ID --* offCountrySources\n\n\nentity yellowPress #2ef0a9\nentity yellowPress.ID\nentity yellowPress.country_ID\nentity yellowPress.yellow_press_URL\n\nyellowPress.ID -l-* yellowPress\nyellowPress.country_ID -u-* yellowPress\nyellowPress.yellow_press_URL --* yellowPress\n\n\nentity currency #2ef0a9\nentity currency.ID\nentity currency.currency_name\n\ncurrency.ID --* currency\ncurrency.currency_name -u-* currency\n\n\nentity neighbours #2ef0a9\nentity neighbours.ID\nentity neighbours.neighbour_name\nentity neighbours.neighbour_id\n\nneighbours.ID -r-* neighbours\nneighbours.neighbour_name -u-* neighbours\nneighbours.neighbour_id -u-* neighbours\n\n\nentity countries #2ef0a9\nentity countries.ID\nentity countries.country_name\nentity countries.country_pres\nentity countries.country_description\nentity countries.last_update\nentity countries.population\nentity countries.currency_ID\n\ncountries.ID -u-* countries\ncountries.country_name -u-* countries\ncountries.country_pres -r-* countries\ncountries.country_description -r-* countries\ncountries.last_update -l-* countries\ncountries.population -l-* countries\ncountries.currency_ID --* countries\n\nentity userSex #2ef0a9\nentity userSex.ID\nentity userSex.user_sex\n\nuserSex.ID --* userSex \nuserSex.user_sex -u-* userSex \n\n\nentity userRole #2ef0a9\nentity userRole.ID\nentity userRole.user_role\n\nuserRole.ID -u-* userRole\nuserRole.user_role -u-* userRole\n\n\nentity statistic #2ef0a9\nentity statistic.ID\nentity statistic.user_id\nentity statistic.queries_count\nentity statistic.filter_ID\nentity statistic.country_ID\nentity statistic.user_count\n\nstatistic.ID -r-* statistic\nstatistic.user_id -r-* statistic\nstatistic.queries_count -r-* statistic\nstatistic.filter_ID -l-* statistic\nstatistic.country_ID --* statistic\nstatistic.user_count --* statistic\n\n\nentity comment #2ef0a9\nentity comment.ID\nentity comment.comment_author\nentity comment.comment_text\n\ncomment.ID -l-* comment\ncomment.comment_author --* comment\ncomment.comment_text --* comment\n\n\nentity filters #2ef0a9\nentity filters.ID\nentity filters.filter_name\nentity filters.filter_count\n\nfilters.ID --* filters\nfilters.filter_name -u-* filters\nfilters.filter_count -u-* filters\n\n\nentity user #2ef0a9\nentity user.ID\nentity user.user_login\nentity user.user_password\nentity user.user_first_name\nentity user.user_last_name\nentity user.user_age\nentity user.user_role_id\nentity user.user_sex_id\nentity user.user_email\nentity user.user_last_update\n\nuser.ID --* user\nuser.user_login --* user\nuser.user_password -u-* user\nuser.user_first_name -u-* user\nuser.user_last_name -r-* user\nuser.user_age -r-* user\nuser.user_role_id -r-* user\nuser.user_sex_id -l-* user\nuser.user_email -l-* user\nuser.user_last_update -l-* user\n\n\n\noffCountrySources "n" -r- "1" MassMedia\ncountries "1" -u- "n" offCountrySources\ncountries "n" -- "1" yellowPress\ncountries "n" -l- "1" neighbours\ncountries "1" -r- "n*" currency\ncountries "n*" -- "1" statistic\n\n\nuser "1" -l- "n*" userSex\nuser "1" -- "n*" userRole\nstatistic "1" -- "n*" user \nuser "n" -l- "1" comment\n\nstatistic "1" -r- "n*" filters\n\n\n@enduml\n')])])]),t("ul",[t("li",[n._v("ER-модель")])]),n._v(" "),t("div",{staticClass:"language- extra-class"},[t("pre",{pre:!0,attrs:{class:"language-text"}},[t("code",[n._v('@startuml\n\n\nentity MassMedia #2ef0a9\n{\nID: INT\nname_media: VARCHAR\n}\n\n\nentity offCountrySources #2ef0a9\n{\nID:INT\nsource_URL: VARCHAR\nmass_media_ID: INT\ncountry_ID: INT\n}\n\n\nentity yellowPress #2ef0a9\n{\nID:INT\ncountry_ID: INT\nyellow_press_URL: VARCHAR\n}\n\nentity currency #2ef0a9\n{\nID:INT\ncurrency_name VARCHAR\n}\n\n\nentity neighbours #2ef0a9\n{\nID:INT\nneighbour_name: VARCHAR\nneighbour_ID: INT\n}\n\n\nentity countries #2ef0a9\n{\nID:INT\ncountry_name : VARCHAR\ncountry_pres: VARCHAR\ncountry_description: TEXT\nlast_update: DATE\npopulation: INT\ncurrency_ID: INT\n}\n\nentity userSex #2ef0a9\n{\nID:INT\nuser_sex: VARCHAR\n}\n\n\nentity userRole #2ef0a9\n{\nID:INT\nuser_role: VARCHAR\n}\n\n\nentity statistic #2ef0a9\n{\nID:INT\nuser_id: INT\nqueries_count: INT\nfilter_ID: INT\ncountry_ID: INT\nuser_count: INT\n}\n\n\nentity comment #2ef0a9\n{\nID:INT\ncomment_author: INT\ncomment_text: VARCHAR\n}\n\n\nentity filters #2ef0a9\n{\nID:INT\nfilter_name: VARCHAR\nfilter_count: INT\n}\n\n\nentity user #2ef0a9\n{\nID:INT\nuser_login: VARCHAR\nuser_password: VARCHAR\nuser_first_name: VARCHAR\nuser_last_name: VARCHAR\nuser_age: INT\nuser_role_id: INT\nuser_sex_id: INT\nuser_email: VARCHAR\nuser_last_update: DATE\n}\n\n\n\noffCountrySources "n" -r- "1" MassMedia\ncountries "1" -u- "n" offCountrySources\ncountries "n" -- "1" yellowPress\ncountries "n" -l- "1" neighbours\ncountries "1" -r- "n*" currency\ncountries "n*" -- "1" statistic\n\n\nuser "1" -l- "n*" userSex\nuser "1" -- "n*" userRole\nstatistic "1" -- "n*" user \nuser "n" -r- "1" comment\n\nstatistic "1" -r- "n*" filters\n\n\n@enduml\n')])])]),t("ul",[t("li",[n._v("реляційна схема")])]),n._v(" "),t("p",[n._v("https://imgur.com/HqUt7yN")])])}),[],!1,null,null,null);e.default=r.exports}}]);