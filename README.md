# README docteur v1
1. Plateforme de réservations de docteurs
1.1. Le pitch

Tu veux concurrencer Doctolib, donc tu te dis : et si je créais un site qui fait la même chose ? C'est ce que nous allons voir 👩‍⚕️
1.2. Les models

Pour ce premier exercice, nous allons t'aider et te donner les models à créer :

    un model doctor, qui a comme attributs :
        un first_name, qui est un string
        un last_name, qui est un string
        un specialty, qui est un string
        un postal_code, qui est un integer
    un model patient, qui a comme attributs :
        un first_name, qui est un string
        un last_name, qui est un string
    un model appoitments, qui a comme attributs :
        un date, qui est un datetime

Un appointment ne peut avoir qu'un seul doctor, mais un doctor peut avoir plusieurs appointment. Un appointment ne peut avoir qu'un seul patient, mais un patient peut avoir plusieurs appointment. Enfin, un doctor peut avoir plusieurs patient, au travers des appointments, et vice versa.

Si tu as bien suivi, il se peut que ce soit un exemple utilisé par la doc. C'est une excellente introduction à ce chapitre. Je t'invite à créer les models, et de faire le migrations.
1.3. Tester

Pour tester, tu peux aller dans la console, créer des doctor, patient, et appointment à la volée, puis les lier avec la sémantique que tu as utilisée.

⚠️ Comme les doctor et les patient sont liés au format array, faire doctor.patients.last_name te renverra une erreur 😉. Une fois que c'est bon, n'oublie pas le seeds.rb qui va bien
