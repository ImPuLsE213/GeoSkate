create table locations (
                           ID char(36) primary key not null,
                           Name varchar(255),
                           IDAuthor char(36),
                           Latitude float(10),
                           Longitude float(10),
                           Description text(1024),
                           LocationGrade smallint,
                           CreationTime datetime default now(),
                           Hidden bool default false
);

create table images (
                        ID char(36) primary key not null ,
                        IDUser char(36),
                        Source varchar(1024),
                        CreationTime datetime default now(),
                        Hidden bool default false
);

create table users (
                       ID char(36) primary key not null,
                       Name varchar(255),
                       Mail varchar(255),
                       ProfilePic char(36),
                       Username varchar(255),
                       Password varchar(255),
                       Bio text(1024),
                       CreationTime datetime default now(),
                       Hidden bool default false
);

create table visits (
                        ID char(36),
                        IDSite char(36),
                        IDUser char(36),
                        CreationTime datetime default now(),
                        Hidden bool default false
);

create table comments (
                          ID char(36),
                          IDSite char(36) not null,
                          IDAuthor char(36) not null,
                          Title varchar(255),
                          Text text(1024),
                          CommentGrade smallint,
                          GivenGrade smallint not null,
                          CreationTime datetime default now(),
                          Hidden bool default false
);
