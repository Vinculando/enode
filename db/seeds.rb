# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# a = 1
# 20.times do
#   Publication.create(titulo: "algo #{a}",
#     limite: Time.zone.now,
#     type_id: 1,
#     problema: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
#     area_id: 1,
#     description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
#     premios: 'premios muchos',
#     company_id: 1
#   )
#   a += 1
# end


Area.create(nombre: "logistica")
Type.create(nombre: "practica")



  x = Region.create(nombre: 'Valparaíso')

 City.create([
 	{nombre: "Casablanca", region: x},
 	{nombre: "Concón", region: x},
 	{nombre: "Viña del Mar", region: x},
 	{nombre:"Puchuncaví", region: x},
 	{nombre: "Quintero", region: x},
 	{nombre: "Valparaíso", region: x}])

z = Region.create(nombre: 'Metropolitana')
City.create([
	{nombre: "Quinta Normal", region: z},
	{nombre: "Recoleta", region: z},
	{nombre: "Renca", region: z},
	{nombre:"San Miguel", region: z},
	{nombre: "San Joaquín", region: z},
	{nombre: "San Ramón", region: z},
	{nombre: "Santiago", region: z},
	{nombre: "Vitacura", region: z},
  {nombre: "El Monte", region: z},
  {nombre: "Isla de Maipo", region: z},
  {nombre: "Padre Hurtado", region: z},
  {nombre: "Peñaflor", region:z},
  {nombre: "Talagante", region: z}])

AdminUser.create(email: 'admin@enode.cl', password: 'masterpassword', password_confirmation: 'masterpassword')
