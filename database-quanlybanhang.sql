create table customer (
cId varchar(20) not null primary key,
cName varchar(20) ,
cAge int 
);

create table orderP(
oId int not null auto_increment primary key,
oDate datetime ,
oTotalPrice int ,
cId varchar(20) not null ,
foreign key (cId) references customer (cId)
);

create table product (
pId int not null auto_increment primary key,
pName varchar(20),
pPrice int 
);

create table orderdetail (
oId int not null auto_increment,
pId int,
primary key (oId,pId),
foreign key (oId) references orderP (oId),
foreign key (pId) references product (pId)
);
