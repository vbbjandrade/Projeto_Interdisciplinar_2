-- Insert usuario
insert into usuario (login_usuario, email_usuario, senha_usuario, deleted_usario, local_usuario, bio_usuario)
values ('admin', 'admin@gmail.com', '1234', 0, 'São Paulo', 'sei lá');
insert into usuario (login_usuario, email_usuario, senha_usuario, deleted_usario, local_usuario, bio_usuario)
values ('Sergio123', 'sergio@gmail.com', '123sergio', 0, 'São Paulo', 'eu sou sergio');

-- Insert pergunta
INSERT INTO pergunta (titulo_pergunta,dt_pergunta,nick_pergunta,desc_pergunta,id_usuario) 
values ("Como fazer get e post em Node?",curdate(),"get/post Node", "Estou com dúvida sobre como fazer get e post em Node", 1),
("Como fazer tabela com HTML",curdate(),"Tabela HTML","Gostaria de saber como fazer uma tabela em HTML",1),
("Stackoverflow no Java",curdate(),"Stackoverflow", "O que é stackoverflow?", 1),
("Como fazer circulo no CSS",curdate(),"Circulo CSS", "Queria saber como fazer um circulo com Css", 2),
("Problemas com EJS",curdate(),"Problema EJS", "Não sei como implementar o EJS em meu projeto :(", 2);

select * from pergunta;

select titulo_pergunta as title, dt_pergunta as date, nick_pergunta as nick, desc_pergunta as description, usuario.login_usuario as user , pergunta.id_pergunta as id 
from pergunta 
inner join usuario on ( usuario.id_usuario = pergunta.id_usuario);

INSERT INTO pergunta (titulo_pergunta,dt_pergunta,nick_pergunta,desc_pergunta,id_usuario) 
values ("Não consigo fazer logout em meu site feito com node.js e mysql",curdate(),"node/mySql", "Não consigo fazer logout em meu site feito com node.js e mysql", 2);

select titulo_pergunta as title, DATE_FORMAT(dt_pergunta, '%d/%m/%Y') as date, nick_pergunta as nick, desc_pergunta as description, usuario.login_usuario as user, pergunta.id_pergunta as id 
from pergunta 
inner join usuario on ( usuario.id_usuario = pergunta.id_usuario)
order by date ASC;

select titulo_pergunta, DATE_FORMAT(dt_pergunta, '%d/%m/%Y') as date, desc_pergunta, tag, id_pergunta, favorited, u.email_usuario from pergunta inner join usuario u on ( usuario.id_usuario = pergunta.id_usuario) WHERE login_usuario = 'Sergio123';

alter table pergunta drop column nick_pergunta;

select * from pergunta;
select * from usuario;
desc pergunta;
select id_usuario from usuario where login_usuario = 'Sergio123';

delete from usuario where id_usuario > 2;

select p.*, u.login_usuario from pergunta p inner join usuario u on ( usuario.id_usuario = pergunta.id_usuario);


select login_usuario, token from usuario where id_usuario = 2;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';

select titulo_pergunta as title, DATE_FORMAT(dt_pergunta, '%d/%m/%Y') as date, nick_pergunta as nick, desc_pergunta as description, tag, usuario.login_usuario as user, pergunta.id_pergunta as id from pergunta inner join usuario on ( usuario.id_usuario = pergunta.id_usuario);

select titulo_pergunta as title, DATE_FORMAT(dt_pergunta, '%d/%m/%Y') as date, nick_pergunta as nick, desc_pergunta as description, tag, usuario.login_usuario as user, pergunta.id_pergunta as id from pergunta inner join usuario on ( usuario.id_usuario = pergunta.id_usuario) where tag = 'javascript';

alter table pergunta add column favorited boolean;

SELECT favorited FROM pergunta WHERE id_pergunta = 1;

update pergunta set favorited = false where id_pergunta = 1;
