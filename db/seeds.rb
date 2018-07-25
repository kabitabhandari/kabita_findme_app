# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

societal_category  = Category.where(name: 'societal').first_or_create(name: 'societal')
onsale_category    = Category.where(name: 'onsale').first_or_create(name: 'onsale')
housing_category   = Category.where(name: 'housing').first_or_create(name: 'housing')
works_category     = Category.where(name: 'works').first_or_create(name: 'works')
services_category  = Category.where(name: 'services').first_or_create(name: 'services')
personal_category  = Category.where(name: 'personal').first_or_create(name: 'personal')

Subcategory.where(name:'local_news',category_id:societal_category.id).first_or_create(name:'local_news',category_id:societal_category.id)
Subcategory.where(name:'music',category_id:societal_category.id).first_or_create(name:'music',category_id:societal_category.id)
Subcategory.where(name:'pets',category_id:societal_category.id).first_or_create(name:'pets',category_id:societal_category.id)
Subcategory.where(name:'baby_care',category_id:societal_category.id).first_or_create(name:'baby_care',category_id:societal_category.id)
Subcategory.where(name:'clubs',category_id:societal_category.id).first_or_create(name:'clubs',category_id:societal_category.id)
Subcategory.where(name:'games',category_id:societal_category.id).first_or_create(name:'games',category_id:societal_category.id)
Subcategory.where(name:'environment_campaign',category_id:societal_category.id).first_or_create(name:'environment_campaign',category_id:societal_category.id)

Subcategory.where(name:'gadgets',category_id: onsale_category.id).first_or_create(name:'gadgets',category_id: onsale_category.id)
Subcategory.where(name:'books',category_id: onsale_category.id).first_or_create(name:'books',category_id: onsale_category.id)
Subcategory.where(name:'vehicles_and_parts',category_id: onsale_category.id).first_or_create(name:'vehicles_and_parts',category_id: onsale_category.id)
Subcategory.where(name:'kids wall',category_id: onsale_category.id).first_or_create(name:'kids wall',category_id: onsale_category.id)
Subcategory.where(name:'kitchen_appliances',category_id: onsale_category.id).first_or_create(name:'kitchen_appliances',category_id: onsale_category.id)
Subcategory.where(name:'movies',category_id: onsale_category.id).first_or_create(name:'movies',category_id: onsale_category.id)
Subcategory.where(name:'furnitures',category_id: onsale_category.id).first_or_create(name:'furnitures',category_id: onsale_category.id)

Subcategory.where(name:'rooms',category_id: housing_category.id).first_or_create(name:'rooms',category_id: housing_category.id)
Subcategory.where(name:'apartments',category_id: housing_category.id).first_or_create(name:'apartments',category_id: housing_category.id)
Subcategory.where(name:'sublets',category_id: housing_category.id).first_or_create(name:'sublets',category_id: housing_category.id)
Subcategory.where(name:'house_for_rent',category_id: housing_category.id).first_or_create(name:'house_for_rent',category_id: housing_category.id)

Subcategory.where(name:'office',category_id: works_category.id).first_or_create(name:'office',category_id: works_category.id)
Subcategory.where(name:'business',category_id: works_category.id).first_or_create(name:'business',category_id: works_category.id)
Subcategory.where(name:'restaurants',category_id: works_category.id).first_or_create(name:'restaurants',category_id: works_category.id)
Subcategory.where(name:'media',category_id: works_category.id).first_or_create(name:'media',category_id: works_category.id)
Subcategory.where(name:'software',category_id: works_category.id).first_or_create(name:'software',category_id: works_category.id)
Subcategory.where(name:'constructions',category_id: works_category.id).first_or_create(name:'constructions',category_id: works_category.id)
Subcategory.where(name:'hospitals',category_id: works_category.id).first_or_create(name:'hospitals',category_id: works_category.id)
Subcategory.where(name:'saloons',category_id: works_category.id).first_or_create(name:'saloons',category_id: works_category.id)

Subcategory.where(name:'vehicle_services',category_id: services_category.id).first_or_create(name:'vehicle_services',category_id: services_category.id)
Subcategory.where(name:'legal_services',category_id: services_category.id).first_or_create(name:'legal_services',category_id: services_category.id)
Subcategory.where(name:'cable_services',category_id: services_category.id).first_or_create(name:'cable_services',category_id: services_category.id)
Subcategory.where(name:'pet_services',category_id: services_category.id).first_or_create(name:'pet_services',category_id: services_category.id)
Subcategory.where(name:'gadget_services',category_id: services_category.id).first_or_create(name:'gadget_services',category_id: services_category.id)
Subcategory.where(name:'cosmetic_services',category_id: services_category.id).first_or_create(name:'cosmetic_services',category_id: services_category.id)

Subcategory.where(name:'clothings',category_id: personal_category.id).first_or_create(name:'clothings',category_id: personal_category.id)
Subcategory.where(name:'beauty',category_id: personal_category.id).first_or_create(name:'beauty',category_id: personal_category.id)
Subcategory.where(name:'datings',category_id: personal_category.id).first_or_create(name:'datings',category_id: personal_category.id)
Subcategory.where(name:'herbal',category_id: personal_category.id).first_or_create(name:'herbal',category_id: personal_category.id)
Subcategory.where(name:'accessories',category_id: personal_category.id).first_or_create(name:'accessories',category_id: personal_category.id)
