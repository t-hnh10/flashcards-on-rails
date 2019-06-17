# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flashcard.destroy_all

Flashcard.create(front: 'あの', back: 'umm', romanisation: 'ano')
Flashcard.create(front: '今', back: 'now',romanisation: 'ima')
Flashcard.create(front: 'ええ', back: 'yes', romanisation: 'ee')
Flashcard.create(front: '学生', back: 'student', romanisation: 'gakusei')
