@ 'C:\Users\logonrmlocal\Desktop\SCRIPT_MODELO_PEDIDO.SQL';

INSERT INTO pais (
    cod_pais,
    nom_pais
) VALUES (
    sk_aula02.nextval,
    'Bolivia'
);

select * from pais;
select * from estado;
select * from cidade;
select * from tipo_endereco;
select * from cliente;

insert into estado(
cod_estado,
nom_estado,
cod_pais
) values (
    sk_aula02.nextval,
    'Parana',2);

Insert Into Cidade(
Cod_Cidade,
Nom_Cidade,
Cod_Estado
) Values (
    Sk_Aula02.Nextval,    
    'OSACO',35)
    ;
insert into tipo_endereco(
cod_tipo_endereco,
des_tipo_endereco
) values (
    Sk_Aula02.Nextval,
        'Empresarial');
        
insert into cliente (
cod_cliente,
nom_cliente,
des_razao_social,
tip_pessoa,
num_cpf_cnpj,
dat_cadastro,
dat_cancelamento,
sta_ativo
) values (
    Sk_Aula02.Nextval,
        'Gabriel Feio',
        'não informado',
        'M',
        52660068850,
        SYSDATE + 20,
        '',
        'S'
        );    
    
    select a.nom_cidade,
        b.nom_estado
    from cidade a inner join estado b
    on (a.cod_estado=b.cod_estado)
    order by 1;
    
   select a.nom_estado,
        b.nom_pais
    from estado a inner join pais b
    on (a.cod_pais=b.cod_pais)
    order by 2;
    
    select count(1) QTD, 
        b.nom_estado estado
from cidade a inner join estado b
on (a.cod_estado=b.cod_estado)
inner join pais c
on (b.cod_pais=c.cod_pais)
group by b.nom_estado
order by 2 desc;
    
    
    delete from cidade where cod_cidade = 40
    
    
    
    commit;