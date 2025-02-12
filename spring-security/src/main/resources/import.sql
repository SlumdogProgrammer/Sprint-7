INSERT INTO USER (`username`, `password`, `groups`, `cred_expired`, `enabled`, `expired`, `locked`)
VALUES ('admin', '{bcrypt}$2a$10$VwaQShR/jvjdzfLFAzosl.Ld0zH6VXMhDegCIcZt714LgXGy/BYKa', 'ROLE_ADMIN', false, true,
        false, false),
       ('user1', '{bcrypt}$2a$10$1zzanLtjMRYgq7ztMrArfeXUknxG5cOudbeTYFGdIMn9SMvroPDje', 'ROLE_USER', false, true,
        false, false),
       ('user2', '{bcrypt}$2a$10$6uahsGU53J5o4DAYYlY8we7ddH.ag73/FDm9Z4fLF7pyIEwEphlda', 'ROLE_USER', false, true,
        false, false);

INSERT INTO ACL_CLASS (`id`, `class`)
VALUES (1, 'ru.sber.dto.Address');

INSERT INTO ACL_SID(`id`, `sid`, `principal`)
VALUES (1, 'admin', 1),
       (2, 'user1', 1),
       (3, 'user2', 1),
       (4, 'ROLE_ADMIN', 0),
       (5, 'ROLE_USER', 0);

INSERT INTO ACL_OBJECT_IDENTITY(`id`, `object_id_class`, `object_id_identity`, `owner_sid`, `entries_inheriting`)
VALUES (1, 1, 1, 5, 0),
       (2, 1, 2, 5, 0),
       (3, 1, 3, 5, 0),
       (4, 1, 4, 1, 0),
       (5, 1, 5, 1, 0),
       (6, 1, 6, 1, 0),
       (7, 1, 7, 2, 0),
       (8, 1, 8, 2, 0),
       (9, 1, 9, 2, 0),
       (10, 1, 10, 3, 0),
       (11, 1, 11, 3, 0),
       (12, 1, 12, 3, 0);

INSERT INTO ACL_ENTRY(`acl_object_identity`, `ace_order`, `sid`, `mask`, `granting`, `audit_success`, `audit_failure`)
VALUES (1, 1, 5, 1, 1, 1, 1),
       (2, 1, 5, 1, 1, 1, 1),
       (3, 1, 1, 8, 1, 1, 1),
       (4, 1, 1, 8, 1, 1, 1),
       (5, 1, 1, 8, 1, 1, 1),
       (6, 1, 1, 8, 1, 1, 1),
       (7, 1, 2, 8, 1, 1, 1),
       (8, 1, 2, 8, 1, 1, 1),
       (9, 1, 2, 8, 1, 1, 1),
       (10, 1, 3, 8, 1, 1, 1),
       (11, 1, 3, 8, 1, 1, 1),
       (12, 1, 3, 8, 1, 1, 1);