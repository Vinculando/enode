# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
City.destroy_all
Region.destroy_all
Company.destroy_all
User.destroy_all
University.destroy_all
Type.destroy_all
Area.destroy_all
Publication.destroy_all
Postulation.destroy_all
AdminUser.destroy_all
  
  z = Region.create(nombre: 'Metropolitana')

City.create!([
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
  	{nombre: "Talagante", region: z}
									])

  x = Region.create(nombre: 'Valparaíso')


 City.create!([
 	{nombre: "Casablanca", region: x},
 	{nombre: "Viña del Mar", region: x},
 	{nombre:"Puchuncaví", region: x},
 	{nombre: "Quintero", region: x},
 	{nombre: "Valparaíso", region: x},
 	{nombre: "Catemu", region: x},
 	{nombre: "Panquehue", region: x},
 	{nombre: "Putaendo", region: x},
 	{nombre: "San Felipe", region: x},
 	{nombre: "Santa María", region: x},
 	{nombre: "San Antonio", region: x}
                                    ])

y = City.create!(nombre: "Concón", region: x)

Company.create!(
	email:"asdf@asdf.cl",
	password: "123456",
	rut: "76.322.412-3",	
	city: y
	)

Company.create!(
	email:"matias@matias.cl",
	password: "123456",
	rut: "77.827.123-4",	
	city: y
	)

Company.create!(
	email:"antonio@antonio.cl",
	password: "123456",
	rut: "72.154.261-1",	
	city: y
	)

Company.create!(
	email:"enode@enode.cl",
	password: "123456",
	rut: "66.725.272-3",	
	city: y
	)

Company.create!(
	email:"lara@lara.cl",
	password: "123456",
	rut: "60.726.227-2",	
	city: y
	)

u = Company.create!(
	email:"gdp@gdp.cl",
	password: "123456",
	rut: "63.726.726-1",	
	city: y
	)


University.create!(nombre:"Duoc")
University.create!(nombre:"Usach")
University.create!(nombre:"Inacap")
University.create!(nombre:"Catolica de Valparaíso")
University.create!(nombre:"Universidad de Talca")
q = University.create!(nombre:"Universidad de la Serena")

User.create!(
	email:"javier@javier.cl",
	password:"123456",
	rut: "12.123.123-1",
	nombre:"Javier",
	paterno:"Javiero",
	materno:"Javierina",
	genero:"Masculino",
	city: y,
	university: q,
	)
User.create!(
	email:"alvaro@alvaro.cl",
	password:"123456",
	rut: "13.123.312-4",
	nombre:"Alvaro",
	paterno:"Alvaros",
	materno:"Alvarada",
	genero:"Masculino",
	city: y,
	university: q
	)
User.create!(
	email:"juan@juan.cl",
	password:"123456",
	rut: "14.312.123-2",
	nombre:"Juan",
	paterno:"Juano",
	materno:"Juana",
	genero:"Masculino",
	city: y,
	university: q
	)
User.create!(
	email:"luis@luis.cl",
	password:"123456",
	rut: "11.312.897-4",
	nombre:"Luis",
	paterno:"Luiso",
	materno:"Luisa",
	genero:"Masculino",
	city: y,
	university: q
	)
User.create!(
	email:"alejandro@alejandro.cl",
	password:"123456",
	rut: "10.324.976-2",
	nombre:"Alejandro",
	paterno:"Alejandros",
	materno:"Alejandra",
	genero:"Masculino",
	city: y,
	university: q
	)
uu = User.create!(
	email:"camilo@camilo.cl",
	password:"123456",
	rut: "9.412.123-3",
	nombre:"Camilo",
	paterno:"Camilos",
	materno:"Camila",
	genero:"Masculino",
	city: y,
	university: q
	)

r = Type.create!(nombre: "Práctica")
Type.create!(nombre: "Proyecto de titulo")

w = Area.create!(nombre: "Logistica")
Area.create!(nombre: "Control de calidad")
Area.create!(nombre: "Produccion")
Area.create!(nombre: "Control de operaciones")
Area.create!(nombre: "Control de inventarios")
Area.create!(nombre: "Metodologías lean")
Area.create!(nombre: "Administración de proyectos")
Area.create!(nombre: "Mercadotecnia")
Area.create!(nombre: "Ingeniería de procesos")
Area.create!(nombre: "Desarrollo de productos")
Area.create!(nombre: "Control de inventarios")
Area.create!(nombre: "Metodologías lean")
Area.create!(nombre: "Administración de sistemas")
Area.create!(nombre: "Diseño de aplicaciones web")
Area.create!(nombre: "Soporte TI")
Area.create!(nombre: "Sistemas de información")
Area.create!(nombre: "Inteligencia de negocios")
Area.create!(nombre: "Arquitectura de software")
Area.create!(nombre: "Metodologías Agile")


a = 1
20.times do
  Publication.create!(titulo: "algo #{a}",
    limite: Time.zone.now,
    type: r,
    problema: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    area: w,
    description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    premios: 'premios muchos',
    company: u
  )
  a += 1
end


a = 1
9.times do
  Publication.create!(titulo: "algo #{a}",
    limite: Time.zone.now,
    type: r,
    problema: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    area: w,
    description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    premios: 'premios muchos',
    company: u
  )
  a += 1
end


a = 1
12.times do
  Publication.create!(titulo: "algo #{a}",
    limite: Time.zone.now,
    type: r,
    problema: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    area: w,
    description: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
    premios: 'premios muchos',
    company: u
  )
  a += 1
end

a = 1
12.times do
  Postulation.create!(
    user: uu,
    publication: Publication.first,
    contenido: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  )
  a += 1
end

a = 1
12.times do
  Postulation.create!(
    user: uu,
    publication: Publication.last,
    contenido: 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
  )
  a += 1
end



AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
