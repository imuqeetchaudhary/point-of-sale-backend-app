

insert into
ad_role(role_id, description, created_by, updated_by, created_at, updated_at)
values 
	(1, 'Accountant', 1, 1, now(), now()),
    (2, 'Manager', 1, 1, now(), now());

insert into
ad_menu(menu_id, description, link, parent_id,created_by, updated_by, created_at, updated_at)
values 
	(1, 'Programming', '/programming', DEFAULT,1, 1, now(), now()),
    (2, 'Python', '/python', 1, 1, 1, now(), now()),
    (3, 'Django', '/django', 2, 1, 1, now(), now()),
    (4, 'PHP', '/php', 1, 1, 1, now(), now());

insert into 
ad_menu_access_roles (role_id, menu_id, created_by, updated_by, created_at, updated_at)
values 
	(1, 1, 1, 1, now(), now()),
    (1, 3, 1, 1, now(), now()),
    
    (2, 1, 1, 1, now(), now()),
    (2, 2, 1, 1, now(), now());
     (2, 3, 1, 1, now(), now())

insert into 
brand(description, created_by, updated_by, created_at, updated_at)
values('Not Applicable (NA)', 1, 1, now(), now())