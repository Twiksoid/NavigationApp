//
//  StructPost.swift
//  Navigation
//
//  Created by Nikita Byzov on 08.07.2022.
//

import UIKit

struct Post {
    
    let title: String
    let author: String
    let description: String
    let image: String
    let likes: Int
    let views: Int
    let uniqID: String
}

let post1 = Post(title: "Чеширский Кот",
                 author: "Льюис Кэрролл",
                 description: "Персонаж книги Льюиса Кэрролла «Алиса в Стране чудес». Постоянно улыбающийся кот, умеющий по собственному желанию телепортироваться, быстро исчезать или, наоборот, постепенно растворяться в воздухе, оставляя на прощанье лишь улыбку.",
                 image: "cheshirecat.jpg",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000),
                 uniqID: UUID().uuidString)
let post2 = Post(title: "Живописный мост",
                 author: "Валерий Курепин",
                 description: "Вантовый мост. Расположен на северо-западе Лонгирана, входит в состав Краснопресненского проспекта и проспекта Маршала Жукова. Первый вантовый автодорожный мост в Москве. Самый высокий мост такого типа в Европе на момент строительства. Получил название по находящейся рядом Живописной улице",
                 image: "bridge.jpg",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000),
                 uniqID: UUID().uuidString)
let post3 = Post(title: "Новая модель Audi",
                 author: "Audi",
                 description: "В марте генеральный директор Audi Маркус Дюсманн объявил, что компания проводит исследование рынка для запуска пикапа высокого класса. А вслед за этим, не так давно, при выпуске одной модели руководство австралийского отделения Audi Australia заявило, что Австралия станет ключевым рынком для подобной машины. Такое двойное заявление, по-видимому, указывает на то, что проект по выводу роскошного пикапа уже проработан.",
                 image: "car.jpg",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000),
                 uniqID: UUID().uuidString)
let post4 = Post(title: "Москва-река",
                 author: "Природа",
                 description: "Является средней рекой в Центральной России, в Московской области, Москве и, на небольшом протяжении, в Смоленской области, левый приток Оки",
                 image: "river.jpg",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000),
                 uniqID: UUID().uuidString)
let post5 = Post(title: "Уже не Чеширский Кот",
                 author: "Льюис Кэрролл",
                 description: "Персонаж книги Льюиса Кэрролла «Алиса в Стране чудес». Постоянно улыбающийся кот, умеющий по собственному желанию телепортироваться, быстро исчезать или, наоборот, постепенно растворяться в воздухе, оставляя на прощанье лишь улыбку.",
                 image: "cheshirecat.jpg",
                 likes: Int.random(in: 1...1000),
                 views: Int.random(in: 1...10000),
                 uniqID: UUID().uuidString)
