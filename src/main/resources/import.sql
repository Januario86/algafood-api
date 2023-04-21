--Insert Cozinha

	insert into cozinha (nome) values ('Tailandesa');
	insert into cozinha (nome) values ('Indiana');

--Insert FormaPagamento
	insert into forma_pagamento (descricao) values ('Cartão de Crédito');
	insert into forma_pagamento (descricao) values ('Pix');

--Insert Restaurante

	insert into restaurante(nome,taxa_frete,cozinha_id,forma_pagamento_id)values('Dominos',10.90,1,2);
	insert into restaurante(nome,taxa_frete,cozinha_id,forma_pagamento_id)values('Outback',5.00,2,1);
	insert into restaurante(nome,taxa_frete,cozinha_id,forma_pagamento_id)values('Paris6',4.90,2,1);
	insert into restaurante(nome,taxa_frete,cozinha_id,forma_pagamento_id)values('Bunker',8.00,1,2);

--Insert Estado 
    
    insert into estado (id, nome) values (1, 'Minas Gerais');
    insert into estado (id, nome) values (2, 'São Paulo');
    insert into estado (id, nome) values (3, 'Ceará');
    insert into estado (id, nome) values (4, 'Rio de Janeiro');
    
--Insert Cidade

    insert into cidade (id, nome, estado_id) values (1, 'Uberlândia', 1);
    insert into cidade (id, nome, estado_id) values (2, 'Belo Horizonte', 1);
    insert into cidade (id, nome, estado_id) values (3, 'São Paulo', 2);
    insert into cidade (id, nome, estado_id) values (4, 'Copacabana', 4);
    insert into cidade (id, nome, estado_id) values (5, 'Fortaleza', 3);