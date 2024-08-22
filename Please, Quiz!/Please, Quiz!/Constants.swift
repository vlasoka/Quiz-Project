//
//  Constants.swift
//  Please, Quiz!
//
//  Created by София Кармаева on 16/8/2024.
//

import Foundation

let info = "You are going to pass an educational quiz with several questions from school disciplines. There are easy questions, but at the same time there can be some tricky ones.\nThere will be a question and 4 answers, only one of which is correct. If you choose the correct one, your points will increase by 1; if not, your points will stay as they are. After choosing the answer you will know if it is correct.\nYou will have only 30 seconds to complete each question.\nThink accurately before answering. Good luck!"

let questions = [
    Question(questionText: "What is the point of intersection of the altitudes of a triangle called?", ans1: "Center of the inscribed circle", ans2: "Circumcenter", ans3: "Orthocenter", ans4: "Center of mass", correctAnswer: "Orthocenter"),
    Question(questionText: "What is the name of the thermodynamic process in which a system does not exchange heat with the surrounding space?", ans1: "Adiabatic", ans2: "Isobaric", ans3: "Isochoric", ans4: "Isothermal", correctAnswer: "Adiabatic"),
    Question(questionText: "Which metal is the hardest?", ans1: "Aluminum", ans2: "Titanium", ans3: "Wolfram", ans4: "Chromium", correctAnswer: "Chromium"),
    Question(questionText: "Where is insulin produced?", ans1: "Adrenal glands", ans2: "Pancreas", ans3: "Pituitary gland", ans4: "Thyroid", correctAnswer: "Pancreas"),
    Question(questionText: "Specify the time frame of World War II:", ans1: "September 8, 1941 - January 27, 1944", ans2: "June 22, 1941 - May 9, 1945", ans3: "September 1, 1939 – September 2, 1945", ans4: "December 7, 1941 - December 8, 1945", correctAnswer: "September 1, 1939 – September 2, 1945"),
    Question(questionText: "What was the name of the ship on which the first settlers who founded the Plymouth Colony arrived in America?", ans1: "Pilgrim", ans2: "Mayflower", ans3: "Santa Maria", ans4: "Columbus", correctAnswer: "Mayflower"),
    Question(questionText: "George R.R. Martin wrote a series of books that formed the basis of the popular TV series. What is the name of this series?", ans1: "A Song of Ice and Fire", ans2: "Game of Thrones", ans3: "War of Kings", ans4: "Elder Blood", correctAnswer: "A Song of Ice and Fire"),
    Question(questionText: "Which animated film (or series of films) has won the most Academy Awards?", ans1: "Finding Nemo", ans2: "Brave", ans3: "Tom and Jerry", ans4: "WALL-E", correctAnswer: "Tom and Jerry"),
    Question(questionText: "The British Invasion is a term used to describe a musical phenomenon in which British rock music began to dominate both the national and international charts. When did it happen?", ans1: "1950s", ans2: "1960s", ans3: "1970s", ans4: "1980s", correctAnswer: "1960s"),
    Question(questionText: "What is the name of the galaxy closest to the Milky Way?", ans1: "Andromeda Galaxy", ans2: "Ursa Major", ans3: "Large Magellanic Cloud", ans4: "NGC 2419", correctAnswer: "Andromeda Galaxy")
]
