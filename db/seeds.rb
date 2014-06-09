# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Language.create(name: 'Inglés', description: 'Idioma Inglés')
Language.create(name: 'Francés', description: 'Idioma Francés')
Language.create(name: 'Portugués', description: 'Idioma Portugués')
Language.create(name: 'Italiano', description: 'Idioma Italiano')

MaritalStatus.create(name: 'Casado(a)', description: 'Está casado')
MaritalStatus.create(name: 'Soltero(a)', description: 'Está soltero')
MaritalStatus.create(name: 'Divorciado(a)', description: 'Está divorciado')
MaritalStatus.create(name: 'Separado(a)', description: 'Está separado')
MaritalStatus.create(name: 'Conviviente', description: 'Es conviviente')
MaritalStatus.create(name: 'Tijero', description: 'No tiene remedio')


User.create(name: 'admin2'. description: '123456', permission_id: 1 )
Person.create(user_id: 1, paternal_lastname: 'Apellidoadmin1' maternal_lastname: 'Apellidomadmin1',
	name: 'Julio', dni: '32165487', address: 'La Tinguiña', district: 'Ica'
	province: 'Ica', department: 'Ica', home_phone: '056321987', mobile_phone: '956183729',
	sex: 1, birthday: '2014-06-09', birthplace: 'Ica', marital_status_id: 1)
User.create(name: 'admin3'. description: '123456', permission_id: 1 )
User.create(name: 'docente1'. description: '123456', permission_id: 3 )
User.create(name: 'docente2'. description: '123456', permission_id: 3 )
User.create(name: 'docente3'. description: '123456', permission_id: 3 )
User.create(name: 'docente4'. description: '123456', permission_id: 3 )
User.create(name: 'docente5'. description: '123456', permission_id: 2 )
User.create(name: 'secretaria1'. description: '123456', permission_id: 2 )
User.create(name: 'contador'. description: '123456', permission_id: 2 )
User.create(name: 'secretaria2'. description: '123456', permission_id: 2 )
User.create(name: 'alumno4'. description: '123456', permission_id: 4 )
User.create(name: 'alumno3'. description: '123456', permission_id: 4 )
User.create(name: 'alumno1'. description: '123456', permission_id: 4 )
User.create(name: 'alumno2'. description: '123456', permission_id: 4 )

Permission.create(name: 'Administrador', description: 'Administrador del Centro de Idiomas')
Permission.create(name: 'Oficinista', description: 'Oficinista del Centro de Idiomas')
Permission.create(name: 'Profesor', description: 'Profesor del Centro de Idiomas')
Permission.create(name: 'Estudiante', description: 'Estudiante del Centro de Idiomas')

Level.create(name: 'Básico', description: 'Nivel de Idioma Básico')
Level.create(name: 'Intermedio', description: 'Nivel de Idioma Intermedio')
Level.create(name: 'Avanzado', description: 'Nivel de Idioma Avanzado')

CourseType.create(name: 'Técnico', description: 'Curso Técnico')
CourseType.create(name: 'Comunicativo', description: 'Curso Comunicativo')

Faculty.create(name: 'Administración', description: 'Facultad de Administración')
Faculty.create(name: 'Agronomía', description: 'Facultad de Agronomía')
Faculty.create(name: 'Ciencias Biológicas', description: 'Facultad de Ciencias Biológicas')
Faculty.create(name: 'Comunicación', description: 'Facultad de Comunicación')
Faculty.create(name: 'Derecho', description: 'Facultad de Derecho')
Faculty.create(name: 'Educación', description: 'Facultad de Educación')
Faculty.create(name: 'Economía', description: 'Facultad de Economía')
Faculty.create(name: 'Enfermería', description: 'Facultad de Enfermería')
Faculty.create(name: 'Farmacia', description: 'Facultad de Farmacia')
Faculty.create(name: 'Ing. Quimica', description: 'Facultad de Ing. Quimica')
Faculty.create(name: 'Ing. Ambiental', description: 'Facultad de Ing. Ambiental')
Faculty.create(name: 'Ing. Civil', description: 'Facultad de Ing. Civil')
Faculty.create(name: 'Ing. Mecánica', description: 'Facultad de Ing. Mecánica')
Faculty.create(name: 'Ing. de Sistemas', description: 'Facultad de Ing. de Sistemas')
Faculty.create(name: 'Ing. Pesquera', description: 'Facultad de Ing. Pesquera')
Faculty.create(name: 'Medicina Humana', description: 'Facultad de Medicina Humana')
Faculty.create(name: 'Med. Veterinaria', description: 'Facultad de Med. Veterinaria')
Faculty.create(name: 'Odontología', description: 'Facultad de Odontología')
Faculty.create(name: 'Psicología', description: 'Facultad de Psicología')
Faculty.create(name: 'Arquitectura', description: 'Facultad de Arquitectura')
Faculty.create(name: 'Obstetricia', description: 'Facultad de Obstetricia')

PostgradeType.create(name: 'Master', description: 'Grado de Magister')
PostgradeType.create(name: 'Doctor', description: 'Grado de Doctorado')