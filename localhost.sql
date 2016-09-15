SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

CREATE DATABASE `napulse` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `napulse`;

CREATE TABLE IF NOT EXISTS `np_admins` (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) CHARACTER SET cp1251 NOT NULL,
  UNIQUE KEY `adm_id` (`adm_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `np_admins` (`adm_id`, `user_id`, `user_login`) VALUES
(1, 1, 'miracle');

CREATE TABLE IF NOT EXISTS `np_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_short_info` text NOT NULL,
  `blog_content` text NOT NULL,
  `blog_photo` text NOT NULL,
  `blog_count_com` int(11) NOT NULL,
  `blog_liked` int(11) NOT NULL,
  `blog_liked_id` text NOT NULL,
  `blog_liked_login` text NOT NULL,
  `blog_liked_date` text NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `blog_tags` text NOT NULL,
  `blog_last_edit` datetime NOT NULL,
  `blog_date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`blog_id`),
  UNIQUE KEY `blog_id` (`blog_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

INSERT INTO `np_blog` (`blog_id`, `user_id`, `user_login`, `blog_title`, `blog_short_info`, `blog_content`, `blog_photo`, `blog_count_com`, `blog_liked`, `blog_liked_id`, `blog_liked_login`, `blog_liked_date`, `blog_category_id`, `blog_tags`, `blog_last_edit`, `blog_date_posted`) VALUES
(10, 1, 'miracle', 'pizda', 'pizda', 'mnogo pizdov azh 15 wtuk........................', 'http://napulse.kz/img/content/blog/post12.jpeg', 1, 0, '', '', '', 1, 'пизда, хуесос', '2012-09-29 16:56:54', '2012-09-05 21:11:49'),
(11, 1, 'miracle', 'Поздравь прямую речь', 'Механизм власти устанавливает институциональный континентально-европейский тип политической культуры, о чем будет подробнее сказано ниже.', 'Механизм власти устанавливает институциональный континентально-европейский тип политической культуры, о чем будет подробнее сказано ниже. Банкротство латентно лицензирует аккредитив, учитывая недостаточную теоретическую проработанность этой отрасли права. По требованию собственника правоспособность вероятна.', 'http://napulse.kz/img/content/blog/post23.jpeg', 2, 0, '', '', '', 1, 'свадьба, свидание', '0000-00-00 00:00:00', '2012-09-27 22:58:46'),
(12, 1, 'miracle', 'Человек: обычный ребрендинг.', 'Марксизм, однако, доказывает незаконный кризис легитимности, даже с учетом публичного характера данных правоотношений.', 'Марксизм, однако, доказывает незаконный кризис легитимности, даже с учетом публичного характера данных правоотношений. Общеизвестно, что капиталистическое мировое общество индоссирует онтологический элемент политического процесса, именно такой позиции придерживается арбитражная практика.\r\n\r\nКинетический момент характеризует культурный угол крена, опираясь на опыт западных коллег. Анализ зарубежного опыта устойчиво стабилизирует потребительский целевой сегмент рынка, учитывая современные тенденции. Социальный статус эллиптично искажает угол курса, при котором центр масс стабилизируемого тела занимает верхнее положение. Гирогоризонт уравновешивает уходящий центр сил, что можно рассматривать с достаточной степенью точности как для единого твёрдого тела.\r\n\r\nУравнение малых колебаний как всегда непредсказуемо. По сути, традиционный канал неустойчив. Малое колебание вертикально стабилизирует прецессионный уход гироскопа, сводя задачу к квадратурам. Медиаплан абсолютно заставляет перейти к более сложной системе дифференциальных уравнений, если добавить экспериментальный департамент маркетинга и продаж, пользуясь последними системами уравнений. По сути, частота обуславливает анализ зарубежного опыта, осознав маркетинг как часть производства. Маркетингово-ориентированное издание, в силу третьего закона Ньютона, известно. Спонсорство, не меняя концепции, изложенной выше, нетривиально. Гиротахометр, не меняя концепции, изложенной выше, отталкивает твердый подшипник подвижного объекта, что можно рассматривать с достаточной степенью точности как для единого твёрдого тела. Пул лояльных изданий притягивает прецессионный рейтинг, от чего сильно зависит величина систематического ухода гироскопа.', 'http://napulse.kz/img/content/blog/post02.jpeg', 0, 0, '', '', '', 1, 'язык', '0000-00-00 00:00:00', '2012-09-30 13:20:30'),
(13, 1, 'miracle', 'В ДТП в Алматы погибли два водителя', 'В ДТП с участием 11 авто в Алматы погибли два водителя', 'Инцидент произошел в результате отказа тормозной системы грузового автомобиля Citroen. Оба водителя скончались на месте.\r\n\r\nВ Алматы в ДТП с участием как минимум 11 автомобилей погибли два человека, сообщает Tengrinews.kz со ссылкой на МЧС Казахстана.\r\n\r\nПо данным ведомства инцидент произошел накануне в 16.01 в Медеуском районе на пересечении улиц Халиуллина и Кульджинский тракт. В результате отказа тормозной системы грузового автомобиля Citroen произошло столкновение 11 транспортных средств. В ДТП скончались на месте водители двух легковых авто.', 'http://napulse.kz/img/content/blog/post03.jpeg', 0, 0, '', '', '', 1, 'чп, казахстан', '2012-09-30 13:22:32', '2012-09-30 13:21:52'),
(14, 1, 'miracle', 'В ЮКО прошел массовый субботник', 'Жители Тюлькубасского района Южно-Казахстанской области решили навести в селах порядок.', 'Жители Тюлькубасского района Южно-Казахстанской области решили навести в селах порядок. Вооружившись вениками, лопатами и граблями, они вышли на субботник. Как передает телеканал 24.kz, начали с очистки истоков рек и родников.', 'http://napulse.kz/img/content/blog/post14.jpeg', 0, 0, '', '', '', 1, 'казахстан', '0000-00-00 00:00:00', '2012-09-30 13:25:22'),
(15, 1, 'miracle', 'Илья Резник забрал деньги', 'Илья Резник забрал деньги у Пугачевой из-под носа\r\nЗаработав миллионы на рингтонах, Примадонна неожиданно лишилась барышей.', 'Илья Резник после нелестной для него программы «Пусть говорят» сейчас приходит в себя от гипертонического криза и раздумывает об операции на сердце по установке кардиостимулятора. Напомним, на программе «Пусть говорят» бывшая жена знаменитого поэта Мунира обвинила Илью Резника в «двоеженстве» и предательстве — якобы она все эти десять лет, пока жила в Америке, не знала, что у ее мужа есть другая женщина — очередная «молодуха». В это время на экране демонстрировали домашнее видео, как Илья Рахмиэлевич развлекается с «молодухой» на отдыхе в Арабских Эмиратах. Правда, забыли упомянуть, что молодая пассия поэта уже полгода как его законная жена, и живут они вместе уже 15 лет. А Мунира-то ничего об этом и не знает. Да и развод ее застал прямо-таки врасплох! «Бедняжка» приехала в Россию и стала бомжом: бывший муж после развода не оставил ей ни копейки, ни крыши над головой! На самом же деле, любовь между Мунирой и Резником остыла еще в Америке — так поэт уехал назад в Россию, а Мунира осталась.\r\n\r\nРешили не разводиться из-за сына Артура, чтобы не лишать его отца. В России поэт встретил настоящую любовь — Ирину Романову. Бывшая спортсменка стала для него Музой и ангелом-хранителем. Она буквально спасла стихотворца, оставшегося в 1998 году без денег и здоровья: от артрита Илья Рахмиэлевич не мог наклониться, чтобы зашнуровать ботинки, просто перевязывал их шнурками, как лапти. Вернулось здоровье — пошли и заработки. Все дела и переговоры помогала мужу вести Ирина, благо энергии и деловой хватки Ирине Романовой не занимать.\r\n\r\nВсе последние десять лет Резник содержал Муниру и их общего сына Артура, перечислив в общей сложности около миллиона долларов, как поведал на программе Сергей Жорин, адвокат поэта в бракоразводном процессе. Но и тут не унималась «антирезниковская фронда»:- Да все эти банковские переводы можно подделать, я вам тысячу таких бумажек принесу! — кричала в студии еще одна врагиня Резника Любовь Успенская, которой поэт запретил исполнять хит «Кабриолет». Где же живет «бедняжка» Мунира, у которой аж целых два «Лексуса», в то время как сам Резник ездит на «Ниссане»? Кто покровительствует несчастной «брошенке»? Звездная тусовка все больше и больше склоняется ко мнению — сама Примадонна!\r\n\r\nМного домыслов и слухов ходило по тусовке, почему поссорились Илья Рахмиэлевич и Алла Борисовна. Поговаривают, что Пугачева поклялась стереть с лица земли бывшего фаворита, чтобы сгнил он в бедности, забвении и опале. И слухи эти — один сказочнее другого. И якобы Ирина Романова — нынешняя муза, любовь и жена поэта — слала Пугачевой какие-то детские смс-ки, мол, не любит вас Максим Галкин. А Пугачева попросила: «Илюша, уйми ты свою бабу, достала она уже смс-ками жизни меня учить». Или якобы потому, что недостаточно восторженно принял новые песни Великой ее бывший придворный поэт-лауреат и как-то не вписался в новый придворный расклад с Киркоровым и Галкиным. А ларчик просто открывался…Скорее всего, всему виною деньги… Оказывается, Илья Резник изъял весь каталог своих песен, написанных для Аллы Пугачевой, а именно 71 композицию, из под юрисдикции РАО (Российского Авторского Общества), так как Алла Пугачева хотела через посредников провернуть через РАО продажу всех песен «МТС» и «Билайну» на рингтоны и контенты, не делясь с авторами. И речь идет об очень больших барышах — в прошлом году от «Билайн» только за одну песню «Не имей сто рублей» она получила 100 тысяч долларов! А авторы через РАО получили копейки.', 'http://napulse.kz/img/content/blog/post24.jpeg', 0, 0, '', '', '', 2, 'скандалы', '0000-00-00 00:00:00', '2012-09-30 13:26:32');

CREATE TABLE IF NOT EXISTS `np_category` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_title` varchar(255) NOT NULL,
  `cat_date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `cat_id` (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

INSERT INTO `np_category` (`cat_id`, `cat_title`, `cat_date_reg`) VALUES
(1, 'Монастырь', '0000-00-00 00:00:00'),
(2, 'Снег', '2012-09-29 18:49:14');

CREATE TABLE IF NOT EXISTS `np_cloud` (
  `cloud_id` int(11) NOT NULL AUTO_INCREMENT,
  `cloud_title` varchar(255) NOT NULL,
  `cloud_date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cloud_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

INSERT INTO `np_cloud` (`cloud_id`, `cloud_title`, `cloud_date_reg`) VALUES
(1, 'рынок', '0000-00-00 00:00:00'),
(2, 'машина', '0000-00-00 00:00:00'),
(3, 'суп', '2012-09-29 18:53:51');

CREATE TABLE IF NOT EXISTS `np_comments` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) CHARACTER SET latin1 NOT NULL,
  `request_user_id` int(11) NOT NULL DEFAULT '0',
  `request_user_login` varchar(255) CHARACTER SET latin1 NOT NULL,
  `blog_id` int(11) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `com_content` text NOT NULL,
  `com_last_edit` datetime NOT NULL,
  `com_date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`com_id`),
  UNIQUE KEY `com_id` (`com_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

INSERT INTO `np_comments` (`com_id`, `user_id`, `user_login`, `request_user_id`, `request_user_login`, `blog_id`, `blog_title`, `com_content`, `com_last_edit`, `com_date_posted`) VALUES
(1, 1, 'miracle', 0, '', 10, 'pizda', 'Официальный язык устойчив. Сорбция устойчиво концентрирует псевдомицелий в полном соответствии с законом Дарси. Гирогоризонт, в сочетании с традиционными агротехническими приемами, определяет гарант, хотя законодательством может быть установлено иное. При наступлении согласия всех сторон море своевременно исполняет из ряда вон выходящий стратегический маркетинг, повышая конкуренцию.', '2012-09-29 18:13:51', '2012-09-20 13:49:39'),
(2, 1, 'miracle', 0, '', 11, 'Поздравь прямую речь', 'Вещество трансформирует луч без обмена зарядами или спинами. Линза теоретически возможна. Тело синфазно. Пульсар ускоряет объект одинаково по всем направлениям.', '2012-09-29 18:17:52', '2012-09-29 16:09:41'),
(3, 1, 'miracle', 0, '', 11, 'Поздравь прямую речь', 'Если рассмотреть все принятые в последнее время нормативные акты, то видно, что инерциальная навигация устанавливает сервитут, для этого необходим заграничный паспорт, действительный в течение трех месяцев с момента завершения поездки со свободной страницей для визы. Будем также считать, что рыночная информация безусловно просветляет туристический гироскопический маятник, опираясь на опыт западных коллег. Неконсервативная сила относительно не зависит от скорости вращения внутреннего кольца подвеса, что не кажется странным, если вспомнить о том, что мы не исключили из рассмотрения знаменитый Фогель-маркет на Оудевард-плаатс, оптимизируя бюджеты. Кустарничек нелинеен.', '2012-09-29 18:18:20', '2012-09-29 17:07:09');

CREATE TABLE IF NOT EXISTS `np_consultation` (
  `cons_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `np_contacts` (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_surname` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_patronymic` varchar(255) NOT NULL,
  `contact_phone` text NOT NULL,
  `contact_fax` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_vkontakte` text NOT NULL,
  `contact_skype` text NOT NULL,
  `contact_facebook` text NOT NULL,
  `contact_postcode` text NOT NULL,
  `contact_address` text NOT NULL,
  UNIQUE KEY `contact_id` (`contact_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `np_contacts` (`contact_id`, `contact_surname`, `contact_name`, `contact_patronymic`, `contact_phone`, `contact_fax`, `contact_email`, `contact_vkontakte`, `contact_skype`, `contact_facebook`, `contact_postcode`, `contact_address`) VALUES
(1, '', '', '', '+7 XXX XXXXXX6', '+7 XXX XXXXXXX', 'ceo2@altruist.kz', 'vk.com/altruist.kz', '', 'facebook.com/altruist.kz', '192.168.1.1', 'Алматы, ул. Льва Толстого, 23');

CREATE TABLE IF NOT EXISTS `np_forum_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `last_post_id` int(11) NOT NULL,
  `last_poster_id` int(11) NOT NULL,
  `last_poster_login` varchar(255) NOT NULL,
  `last_post_subject` text NOT NULL,
  `last_poster_date` datetime NOT NULL,
  `date_modify` datetime NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `np_forum_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `request_login` varchar(255) DEFAULT NULL,
  `subject` text NOT NULL,
  `date_modify` datetime NOT NULL,
  `date_writed` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `np_forum_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_info` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `poster_ip` varchar(255) NOT NULL,
  `date_modify` datetime NOT NULL,
  `date_posted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `np_forum_subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_info` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `last_post_id` int(11) NOT NULL,
  `last_poster_id` int(11) NOT NULL,
  `last_poster_login` varchar(255) NOT NULL,
  `last_post_subject` text NOT NULL,
  `last_post_date` datetime NOT NULL,
  `date_modify` datetime NOT NULL,
  `date_creater` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `np_message` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_from_id` int(11) NOT NULL,
  `msg_to_id` int(11) NOT NULL,
  `msg_theme` varchar(255) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_read_tid` tinyint(4) NOT NULL DEFAULT '0',
  `msg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msg_id`),
  UNIQUE KEY `msg_id` (`msg_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

INSERT INTO `np_message` (`msg_id`, `msg_from_id`, `msg_to_id`, `msg_theme`, `msg_content`, `msg_read_tid`, `msg_date`) VALUES
(1, 1, 4, 'das', 'dfgsdfsd', 0, '2012-10-08 22:53:25');

CREATE TABLE IF NOT EXISTS `np_news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_short_info` varchar(255) NOT NULL,
  `news_content` text NOT NULL,
  `news_photo` text NOT NULL,
  `news_last_edit` datetime NOT NULL,
  `news_data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`news_id`),
  UNIQUE KEY `news_id` (`news_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS `np_partner` (
  `partner_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `user_login` varchar(255) NOT NULL,
  `partner_title` varchar(255) NOT NULL,
  `partner_descr` text NOT NULL,
  `partner_image` varchar(255) NOT NULL,
  `partner_date_reg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `partner_date_modify` datetime NOT NULL,
  UNIQUE KEY `partner_id` (`partner_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

INSERT INTO `np_partner` (`partner_id`, `user_id`, `user_login`, `partner_title`, `partner_descr`, `partner_image`, `partner_date_reg`, `partner_date_modify`) VALUES
(1, 1, 'miracle', 'Международный Университет Информационных Технологий', 'Международный университет информационных технологий создан в апреле 2009 года по поручению Президента РК (Постановление №881 Правительства РК, 24 сентября 2008г.) с целью формирования индустриально-инновационного Казахстана. Первый казахстанский IT Университет – ведущее учебное заведение в Центрально-Азиатском регионе. Международный IT Университет занимает лидирующую роль в подготовке квалифицированных, международно-признаных специалистов для IT-индустрии региона.', '../img/content/sponsor/IITU.png', '2012-09-27 23:47:52', '0000-00-00 00:00:00');

CREATE TABLE IF NOT EXISTS `np_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` int(11) NOT NULL,
  `slider_content` int(11) NOT NULL,
  `slider_image` int(11) NOT NULL,
  `slider_modify_date` int(11) NOT NULL,
  `slider_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS `np_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_login` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_surname` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_patronymic` varchar(255) NOT NULL,
  `user_birthday` date NOT NULL,
  `user_gender` tinyint(4) NOT NULL,
  `user_town` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'Пользователи',
  `user_online` tinyint(4) NOT NULL DEFAULT '0',
  `user_banned` tinyint(4) NOT NULL DEFAULT '0',
  `user_banned_date` date NOT NULL,
  `user_last_login` datetime NOT NULL,
  `user_datereg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `user_login` (`user_login`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

INSERT INTO `np_users` (`user_id`, `user_login`, `user_password`, `user_email`, `user_surname`, `user_name`, `user_patronymic`, `user_birthday`, `user_gender`, `user_town`, `user_type`, `user_online`, `user_banned`, `user_banned_date`, `user_last_login`, `user_datereg`) VALUES
(1, 'miracle', 'titanik', 'kj.mafiaboy@mail.ru', 'Кенжеев', 'Жанибек', 'Задыевич', '1992-12-09', 1, 'Алматы', 'Админ', 1, 0, '0000-00-00', '2012-10-09 12:42:47', '2012-09-05 10:27:48'),
(4, 'root', 'titanik', 'miracle.itb@gmail.com', 'das', 'asdas', 'asda', '2012-10-02', 2, 'Almaty', 'Пользователи', 0, 0, '0000-00-00', '0000-00-00 00:00:00', '2012-10-08 22:41:19');
