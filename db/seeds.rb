# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all

dog = Pet.create(name: "Dogs")
cat = Pet.create(name: "Cats")

dog.breeds.create(name: "Australian Shepherd", description: "The Australian Shepherd is a breed of herding dog from the United States. Originally used solely as a herding dog, the Australian Shepherd has become one of the most popular companion dog breeds in North America.")
dog.breeds.create(name: "Border Collie", description: "The Border Collie is a working and herding dog breed. They come from the Anglo-Scottish border region and are used to herd livestock, specifically sheep.")
dog.breeds.create(name: "Siberian Husky", description: "The Siberian Husky is a medium-sized working sled dog breed. The breed belongs to the Spitz genetic family.")


cat.breeds.create(name: "Ragdoll", description: "The Ragdoll is a cat breed with a color point coat and striking blue eyes. Their form is large and muscular and their coat is silky soft and semi-longhair.")
cat.breeds.create(name: "Siamese", description: "The Siamese cat is one of the first distinctly recognized breeds of Asian cat. Derived from the Wichianmat landrace, one of several varieties of cat native to Thailand, the original Siamese became one of the most popular breeds in Europe and North America in the 19th century.")
cat.breeds.create(name: "American Shorthair", description: "The American Shorthair is a breed of domestic cat believed to be descended from European cats brought to North America by early settlers to protect valuable cargo from mice and rats.")

