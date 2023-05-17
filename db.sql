create table project( primary key projectId int,
projectname varchar(20) not null unique,
projectMGR varchar(20)) not null unique);

create table Emloyee( primary key empiId int,
empname varchar(20) not null unique,
projectId int not null unique,
projectMGRId int not null unique

foreign key fk_projectId(projectId) references project(projectId)
foreign key fk_projectMGRId(projectMGRId) references projectmanager(projectMGRId)
 )

create table deliveryManager ( primary key delivermgrInt int,
dlMgrNm varchar(20) not null unique,
porjectMGRId int not null unique,
projectId int not null unique

foreign key fk_porjectMGRId(porjectMGRId) references projectmanager(porjectMGRId)
foreign key fk_projectId(projectId) references project(projectId)

on delete set null
on update cascade
)



 