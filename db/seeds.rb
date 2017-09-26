# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

z = 4

City.create!([
	{nombre: "Quinta Normal", region_id: z}, 
	{nombre: "Recoleta", region_id: z},
	{nombre: "Renca", region_id: z},
	{nombre:"San Miguel", region_id: z},
	{nombre: "San Joaquín", region_id: z}, 
	{nombre: "San Ramón", region_id: z},
	{nombre: "Santiago", region_id: z}, 
	{nombre: "Vitacura", region_id: z}, 
    {nombre: "El Monte", region_id: z}, 
    {nombre: "Isla de Maipo", region_id: z},
    {nombre: "Padre Hurtado", region_id: z}, 
    {nombre: "Peñaflor", region_id:z}, 
    {nombre: "Talagante", region_id: z}])
