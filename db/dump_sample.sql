INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (11,'田中瑶介','tanachu_78@yahoo.co.jp','090-1079-6830','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2020-11-25 02:50:42','2020-11-25 02:51:06','三井住友銀行','浅草',0,'5248753');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (370,'西山裕子','080-3917-2277','3939harmony.music@gmail.com','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-04 05:28:51','2022-02-04 05:28:51','三井住友銀行','守谷','普通','0112585');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (371,'吉山澪','080-3837-6115','chosman.115@gmail.com','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-09 14:29:16','2022-02-09 14:29:16','三井住友銀行','堂島','普通','0650099');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (380,'きまぐれ','090-5464-5013','ifuifu84@gmail.com','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-12 08:34:58','2022-02-12 08:34:58','三菱UFJ','尼崎','普通','0253441');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (373,'長谷川頼史','090-6502-9415','norinori412hc2829@icloud.com','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-16 23:01:43','2022-02-16 23:01:43','楽天銀行','オペラ支店','普通','4805783');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (374,'内田敦','090-6305-3899','neitiandun@gmail.com','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-17 12:40:08','2022-02-17 12:40:08','三井住友銀行','灘','普通','4320551');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (375,'岩田悠輔','080-4038-1392','yilovesoccer12@yahoo.co.jp','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-17 12:53:23','2022-02-17 12:53:23','三井住友銀行','大阪本店','普通','8641381');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (376,'門脇駿','080-1478-6978','adkado777@gmail.com','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-18 03:27:51','2022-02-18 03:27:51','みずほ','京都','普通','1276066');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (377,'松永龍星','080-2777-7965','rinn75149@gmail.com','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-21 06:32:27','2022-02-21 06:32:27','ゆうちょ銀行','七四八','普通','7689342');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (378,'渋川照実','090-6001-6431','	shibukawa@jeicnet.co.jp','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-23 06:31:41','2022-02-23 06:31:41','みずほ銀行','府中支店','普通','1040002');

INSERT INTO users (id, name,tel, email, encrypted_password, created_at, updated_at,bank, branch, account_type, account_no) VALUES (379,'新山雄大','080-5842-0920','ty.10-06@au.com','$2y$10$9VmsSGwH/jzpG6eA6Qp4keqnKsCdW55SPYN8qTZL7u3fJZ8zL82yG','2022-02-21 13:05:53','2022-02-21 13:05:53','福島信用金庫','吉井田支店','普通','0322619');

UPDATE users SET invitername = '内田好治', inviteremail = 'chris.com.0607@gmail.com', invitertel = '090-8982-5814' WHERE id = 370;
UPDATE users SET invitername = '中村浩紀', inviteremail = 'hidgia.hiro@gmail.com', invitertel = '080-4360-6664' WHERE id = 371;
UPDATE users SET invitername = 'きまぐれ', inviteremail = 'ifuifu84@gmail.com', invitertel = '090-5464-5013' WHERE id = 373;
UPDATE users SET invitername = '中村浩紀', inviteremail = 'hidgia.hiro@gmail.com', invitertel = '080-4360-6664' WHERE id = 374;
UPDATE users SET invitername = '内田敦', inviteremail = 'neitiandun@gmail.com', invitertel = '090-6305-3899' WHERE id = 375;
UPDATE users SET invitername = '内田敦', inviteremail = 'neitiandun@gmail.com', invitertel = '090-6305-3899' WHERE id = 376;
UPDATE users SET invitername = 'きまぐれ', inviteremail = 'ifuifu84@gmail.com', invitertel = '090-5464-5013' WHERE id = 377;
UPDATE users SET invitername = 'きまぐれ', inviteremail = 'ifuifu84@gmail.com', invitertel = '090-5464-5013' WHERE id = 379;

2022-02-04 05:28:51	西山裕子	3939harmony.music@gmail.com	080-3917-2277	三井住友銀行 守谷 普通 0112585	内田　好治	chris.com.0607@gmail.com
2022-02-09 14:29:16	吉山澪	chosman.115@gmail.com	080-3837-6115	三井住友銀行 堂島 普通 0650099	中村浩紀	hidgia.hiro@gmail.com
2022-02-12 08:34:58	きまぐれ	ifuifu84@gmail.com	090-5464-5013	三菱UFJ 尼崎 普通 0253441		
2022-02-16 23:01:43	長谷川頼史	norinori412hc2829@icloud.com	090-6502-9415	楽天銀行 オペラ支店 普通 4805783	きまぐれ	ifuifu84@gmail.com
2022-02-17 12:40:08	内田　敦	neitiandun@gmail.com	090-6305-3899	三井住友銀行 灘 普通 4320551	中村浩紀	hidgia.hiro@gmail.com
2022-02-17 12:53:23	岩田悠輔	yilovesoccer12@yahoo.co.jp	080-4038-1392	三井住友銀行 大阪本店 普通 8641381	内田　敦	neitiandun@gmail.com
2022-02-18 03:27:51	門脇駿	adkado777@gmail.com	080-1478-6978	みずほ 京都 普通 1276066	内田　敦	neitiandun@gmail.com
2022-02-21 06:32:27	松永龍星	rinn75149@gmail.com	080-2777-7965	ゆうちょ銀行 七四八 普通 7689342	きまぐれ	ifuifu84@gmail.com
2022-02-21 13:05:53	新山雄大	ty.10-06@au.com	080-5842-0920	福島信用金庫 吉井田支店 普通 0322619	きまぐれ	ifuifu84@gmail.com
2022-02-22 00:38:04	河野新吾	himuka_sk@yahoo.co.jp	090-1513-4085	宮崎銀行 大淀 普通 0035372	中村浩紀	hidgia.hiro@gmail.com
2022-02-23 06:31:41	渋川　照実	shibukawa@jeicnet.co.jp	090-6001-6431	みずほ銀行 府中支店 普通 1040002		




UPDATE works SET provider_id =  WHERE id = 40

1【完全無料】分譲マンションにお住まいの方をご紹介ください！（アンケートに答えてくれるだけで５０００円）
【全車種ご案内可】新車・中古車をご購入予定のお客様を御紹介ください！
国保加入者から社会保険適用者への切り替えサポート
【無料】転職先紹介・転職サポート
【関西圏】住宅リフォームや店舗改修改装・工事などを検討されている方をご紹介ください！
風評被害対策にお困りの方をご紹介ください！
通信費をコスト削減したい法人をご紹介ください！
補助金・助成金の無料適正診断サービス
1 動画制作・動画編集・LP（サイト）制作
国保加入者から社会保険適用者への切り替えサポート
賃貸物件を探している方をご紹介ください！
【スタイリー不動産】不動産購入・売却・不動産投資をお考えのお客様を御紹介ください！