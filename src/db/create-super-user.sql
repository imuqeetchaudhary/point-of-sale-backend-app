INSERT INTO user (username, password, display_name, email, is_superuser, created_at, updated_at)
VALUES(
	'admin@gmail.com', 
	'$2b$10$iaFIrUQ8f58vqECytvFe0uyu8AxSRIy6qyswi7DAizRWG1I7gKmLS', 
	'Super User', 
	'admin@gmail.com', 
	true,
    NOW(),
    NOW()
)