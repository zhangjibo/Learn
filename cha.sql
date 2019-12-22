DROP PROCEDURE
IF
	EXISTS cha;
CREATE PROCEDURE cha ( ) BEGIN
DECLARE
	i INT ( 200 );

SET i = 8000;
WHILE
	i <= ( 9999 ) DO
	INSERT INTO `coinoxen`.`user` (
		`id`,
		`phone`,
		`password`,
		`lock_status`,
		`check_status`,
		`need_transaction_password`,
		`code`,
		`type`,
		`level`,
		`source`,
		`email_status`,
		`phone_status`,
		`google_status`,
		`register_type`,
		`register_time`,
		`update_time`,
		`merchant`,
		`freezing` 
	)
VALUES
	(
		i,
		CONCAT( 170000, i ),
		'9db06bcff9248837f86d1a6bcf41c9e7',
		0,
		0,
		0,
		'QwRAtWFe',
		1,
		1,
		2,
		0,
		1,
		0,
		1,
		'2019-10-30 19:51:55',
		'2019-10-30 19:52:09',
		0,
		0 
	);
INSERT INTO `coinoxen`.`user_coin` ( `user_id`, `coin_id`, `balance` )
VALUES
	( i, 10, 1000000 );
INSERT INTO `coinoxen`.`user_coin` ( `user_id`, `coin_id`, `balance` )
VALUES
	( i, 1, 1000000 );

SET i = i + 1;

END WHILE;

END