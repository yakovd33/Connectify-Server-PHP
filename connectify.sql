-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2021 at 12:32 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connectify`
--

-- --------------------------------------------------------

--
-- Table structure for table `copies`
--

CREATE TABLE `copies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `device_hash` varchar(32) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_deleted` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `copies`
--

INSERT INTO `copies` (`id`, `user_id`, `device_hash`, `date`, `text`, `is_archived`, `is_private`, `is_deleted`) VALUES
(1, 1, NULL, '2018-03-30 09:37:27', 'Yakov Hameleh', 0, 0, 1),
(2, 1, NULL, '2018-03-30 09:37:48', 'http://connectify.rf.gd/api/copy.php', 0, 0, 1),
(3, 1, NULL, '2018-03-30 09:40:23', 'infi.systray', 0, 0, 1),
(4, 1, NULL, '2018-03-30 09:40:49', 'pip install infi.systray', 0, 0, 1),
(5, 1, NULL, '2018-03-30 09:41:08', 'from infi.systray import SysTrayIcon\r\ndef say_hello(systray):\r\n    print &quot;Hello, World!&quot;\r\nmenu_options = ((&quot;Say Hello&quot;, None, say_hello),)\r\nsystray = SysTrayIcon(&quot;icon.ico&quot;, &quot;Example tray icon&quot;, menu_options)\r\nsystray.start()', 0, 0, 1),
(6, 1, NULL, '2018-04-01 06:25:16', 'listView.setAdapter(null);', 0, 0, 1),
(7, 1, NULL, '2018-04-01 06:29:44', 'lalala', 0, 0, 1),
(8, 1, NULL, '2018-04-01 06:35:42', 'CustomAdapter customAdapter = new CustomAdapter();\r\n                    copiesList.setAdapter(customAdapter);', 0, 0, 1),
(9, 1, NULL, '2018-04-01 14:23:43', 'Hot Air Balloon', 0, 0, 1),
(10, 1, NULL, '2018-04-01 14:46:27', 'python password protected database', 0, 0, 1),
(11, 1, NULL, '2018-04-01 14:46:29', '×× ××˜×™×“××•×¤×•×‘×™×”', 0, 0, 1),
(12, 1, NULL, '2018-04-01 14:46:34', '×¨×•×‘ ×”×‘×©×ž×™× ×ž×›×™×œ×™× ×¦×•××ª ×œ×•×•×™×™×ª× ×™×.', 0, 0, 1),
(13, 1, NULL, '2018-04-01 14:46:58', '×ž×’×“×ª ×¢×ª×™×“×•×ª ××•×ž×¨×ª ×œ×¦×¤×¨×“×¢: &quot;×¢×•×“ ×ž×¢×˜ ×ª×¤×’×•×© × ×¢×¨×” ×ž×”×ž×ž×ª ×©×ª×¨×¦×” ×œ×“×¢×ª ×”×›×œ ×¢×œ×™×™×š!&quot;\r\n×”×¦×¤×¨×“×¢ ×”× ×¨×’×© ×©×•××œ: &quot;××™×¤×”? ××™×¤×”? ×‘×©×œ×•×œ×™×ª? ×‘×‘×™×¦×”? ×‘×ž×¡×™×‘×”?&quot;\r\n×ž×ž×©×™×›×” ×”×ž×’×“×ª ×¢×ª×™×“×•×ª: &quot;×‘×©×™×¢×•×¨ ×‘×™×•×œ×•×’×™×”â€¦&quot;', 0, 0, 1),
(14, 1, NULL, '2018-04-01 15:30:22', 'vanessa cage', 0, 0, 1),
(15, 1, NULL, '2018-04-01 16:05:30', 'the most widely used application on the planet', 0, 0, 1),
(16, 1, NULL, '2018-04-01 16:05:38', 'exaggerate', 0, 0, 1),
(17, 1, NULL, '2018-04-01 16:05:41', 'exaggeration', 0, 0, 1),
(18, 1, NULL, '2018-04-01 16:18:27', 'python -m &#039;wsgiref.simple_server&#039;', 0, 0, 1),
(19, 1, NULL, '2018-04-01 16:24:14', 'wsgiref.simple_server', 0, 0, 1),
(20, 1, NULL, '2018-02-01 07:29:44', 'import SimpleHTTPServer\r\nimport SocketServer\r\n\r\nPORT = 8000\r\n\r\nHandler = SimpleHTTPServer.SimpleHTTPRequestHandler\r\n\r\nhttpd = SocketServer.TCPServer((&quot;&quot;, PORT), Handler)\r\n\r\nprint &quot;serving at port&quot;, PORT\r\nhttpd.serve_forever()', 0, 0, 1),
(21, 1, NULL, '2018-04-01 16:33:53', 'import sys\r\nimport BaseHTTPServer\r\nfrom SimpleHTTPServer import SimpleHTTPRequestHandler\r\n\r\n\r\nHandlerClass = SimpleHTTPRequestHandler\r\nServerClass  = BaseHTTPServer.HTTPServer\r\nProtocol     = &quot;HTTP/1.0&quot;\r\n\r\nif sys.argv[1:]:\r\n    port = int(sys.argv[1])\r\nelse:\r\n    port = 8000\r\nserver_address = (&#039;127.0.0.1&#039;, port)\r\n\r\nHandlerClass.protocol_version = Protocol\r\nhttpd = ServerClass(server_address, HandlerClass)\r\n\r\nsa = httpd.socket.getsockname()\r\nprint &quot;Serving HTTP on&quot;, sa[0], &quot;port&quot;, sa[1], &quot;...&quot;\r\nhttpd.serve_forever()', 0, 0, 1),
(22, 1, NULL, '2018-04-01 16:35:55', 'python -m http.server 8080', 0, 0, 1),
(23, 1, NULL, '2018-04-01 16:36:23', '80085', 0, 0, 1),
(24, 1, NULL, '2018-04-01 16:36:47', 's', 0, 0, 1),
(25, 1, NULL, '2018-04-01 16:36:56', 'y', 0, 0, 1),
(26, 1, NULL, '2018-04-01 16:44:31', 'pyinstaller --onefile --windowed --icon=icon.ico detector.py', 0, 0, 1),
(27, 1, NULL, '2018-04-01 16:49:05', 'from subprocess import call\r\ncall([&quot;ls&quot;, &quot;-l&quot;])', 0, 0, 1),
(28, 1, NULL, '2018-04-01 16:52:55', 'runserver localhost:8000', 0, 0, 1),
(29, 1, NULL, '2018-04-01 16:53:10', '$ pyinstaller --name=mysite mysite/manage.py', 0, 0, 1),
(30, 1, NULL, '2018-04-01 16:53:13', 'pyinstaller --name=mysite mysite/manage.py', 0, 0, 1),
(31, 1, NULL, '2018-04-01 16:55:03', 'mysite.exe runserver localhost:8000', 0, 0, 1),
(32, 1, NULL, '2018-04-01 16:58:26', 'Unhandled exception in thread started by', 0, 0, 1),
(33, 1, NULL, '2018-04-01 17:10:35', 'import cgi\r\nimport cgitb\r\ncgitb.enable()\r\n\r\n# HEADERS\r\nprint &quot;Content-Type:text/html; charset=UTF-8&quot;\r\nprint  # blank line required at end of headers\r\n\r\n# CONTENT\r\nprint &quot;&lt;html&gt;&lt;body&gt;&quot;\r\nprint &quot;Content&quot;\r\nprint &quot;&lt;/body&gt;&lt;/html&gt;&quot;', 0, 0, 1),
(34, 1, NULL, '2018-04-01 17:12:30', 'pip install Flask', 0, 0, 1),
(35, 1, NULL, '2018-04-01 17:12:54', 'FLASK_APP=hello.py flask run', 0, 0, 1),
(36, 1, NULL, '2018-04-01 17:13:34', 'from flask import Flask\r\napp = Flask(__name__)\r\n\r\n@app.route(&quot;/&quot;)\r\ndef hello():\r\n    return &quot;Hello World!&quot;', 0, 0, 1),
(37, 1, NULL, '2018-04-01 17:13:52', '&#039;FLASK_APP&#039; is not recognized as an internal', 0, 0, 1),
(38, 1, NULL, '2018-04-01 17:14:09', 'set FLASK_APP = run.py', 0, 0, 1),
(39, 1, NULL, '2018-04-01 17:14:37', 'set FLASK_APP = run.py \r\nflask run', 0, 0, 1),
(40, 1, NULL, '2018-04-01 17:14:51', 'flask run', 0, 0, 1),
(41, 1, NULL, '2018-04-01 17:14:59', 'FLASK_APP environment variable', 0, 0, 1),
(42, 1, NULL, '2018-04-01 17:15:49', 'export FLASK_APP=hello', 0, 0, 1),
(43, 1, NULL, '2018-04-01 17:16:16', 'flask run', 0, 0, 1),
(44, 1, NULL, '2018-04-01 17:16:29', 'export FLASK_APP=hello', 0, 0, 1),
(45, 1, NULL, '2018-04-01 17:17:58', 'return render_template(&#039;hello.html&#039;, name=name)', 0, 0, 1),
(46, 1, NULL, '2018-04-01 17:18:11', 'from flask import render_template', 0, 0, 1),
(47, 1, NULL, '2018-04-01 17:19:22', '(', 0, 0, 1),
(48, 1, NULL, '2018-04-01 17:19:27', '8', 0, 0, 1),
(49, 1, NULL, '2018-04-01 17:19:29', '0', 0, 0, 1),
(50, 1, NULL, '2018-04-01 17:20:11', 'FLASK_APP=hello.py', 0, 0, 1),
(51, 1, NULL, '2018-04-01 17:20:50', '8', 0, 0, 1),
(52, 1, NULL, '2018-04-01 17:23:29', 'index.html', 0, 0, 1),
(53, 1, NULL, '2018-04-01 17:26:58', ',', 0, 0, 1),
(54, 1, NULL, '2018-04-01 17:30:01', 'def run(self):\r\n    #self.init_routes()\r\n    self.socketio.run(self.app, host=&#039;0.0.0.0&#039;, port=4444)', 0, 0, 1),
(55, 1, NULL, '2018-04-01 17:32:56', 'http://localhost:4444/', 0, 0, 1),
(56, 1, NULL, '2018-04-01 17:34:04', 'if __name__ == &quot;__main__&quot;:\r\n   app.run()', 0, 0, 1),
(57, 1, NULL, '2018-04-01 17:45:56', 'url_for(&#039;static&#039;, filename=&#039;style.css&#039;)', 0, 0, 1),
(58, 1, NULL, '2018-04-01 17:47:06', '&lt;!doctype html&gt;\r\n&lt;html&gt;\r\n  &lt;head&gt;\r\n    {% block head %}\r\n    &lt;link rel=&quot;stylesheet&quot; href=&quot;{{ url_for(&#039;static&#039;, filename=&#039;style.css&#039;) }}&quot;&gt;\r\n    &lt;title&gt;{% block title %}{% endblock %} - My Webpage&lt;/title&gt;\r\n    {% endblock %}\r\n  &lt;/head&gt;\r\n  &lt;body&gt;\r\n    &lt;div id=&quot;content&quot;&gt;{% block content %}{% endblock %}&lt;/div&gt;\r\n    &lt;div id=&quot;footer&quot;&gt;\r\n      {% block footer %}\r\n      &amp;copy; Copyright 2010 by &lt;a href=&quot;http://domain.invalid/&quot;&gt;you&lt;/a&gt;.\r\n      {% endblock %}\r\n    &lt;/div&gt;\r\n  &lt;/body&gt;\r\n&lt;/html&gt;', 0, 0, 1),
(59, 1, NULL, '2018-04-01 17:48:02', 'export FLASK_APP=', 0, 0, 1),
(60, 1, NULL, '2018-04-01 17:48:58', 'set FLASK_APP=webapp.py', 0, 0, 1),
(61, 1, NULL, '2018-04-01 17:49:27', '{% extends &quot;layout.html&quot; %}', 0, 0, 1),
(62, 1, NULL, '2018-04-01 17:49:31', '{% extends &quot;layout.html&quot; %}\r\n{% block title %}Index{% endblock %}\r\n{% block head %}\r\n  {{ super() }}\r\n  &lt;style type=&quot;text/css&quot;&gt;\r\n    .important { color: #336699; }\r\n  &lt;/style&gt;\r\n{% endblock %}\r\n{% block content %}\r\n  &lt;h1&gt;Index&lt;/h1&gt;\r\n  &lt;p class=&quot;important&quot;&gt;\r\n    Welcome on my awesome homepage.\r\n{% endblock %}', 0, 0, 1),
(63, 1, NULL, '2018-04-01 17:50:57', 'set FLASK_APP=webapp.py', 0, 0, 1),
(64, 1, NULL, '2018-04-01 18:02:33', 'klorofil', 0, 0, 1),
(65, 1, NULL, '2018-04-01 18:05:40', '&lt;title&gt;Dashboard | Klorofil - Free Bootstrap Dashboard Template&lt;/title&gt;\r\n	&lt;meta charset=&quot;utf-8&quot;&gt;\r\n	&lt;meta http-equiv=&quot;X-UA-Compatible&quot; content=&quot;IE=edge,chrome=1&quot;&gt;\r\n	&lt;meta name=&quot;viewport&quot; content=&quot;width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0&quot;&gt;\r\n	&lt;!-- VENDOR CSS --&gt;\r\n	&lt;link rel=&quot;stylesheet&quot; href=&quot;assets/vendor/bootstrap/css/bootstrap.min.css&quot;&gt;\r\n	&lt;link rel=&quot;stylesheet&quot; href=&quot;assets/vendor/font-awesome/css/font-awesome.min.css&quot;&gt;\r\n	&lt;link rel=&quot;stylesheet&quot; href=&quot;assets/vendor/linearicons/style.css&quot;&gt;\r\n	&lt;link rel=&quot;stylesheet&quot; href=&quot;assets/vendor/chartist/css/chartist-custom.css&quot;&gt;\r\n	&lt;!-- MAIN CSS --&gt;\r\n	&lt;link rel=&quot;stylesheet&quot; href=&quot;assets/css/main.css&quot;&gt;\r\n	&lt;!-- FOR DEMO PURPOSES ONLY. You should remove this in your project --&gt;\r\n	&lt;link rel=&quot;stylesheet&quot; href=&quot;assets/css/demo.css&quot;&gt;\r\n	&lt;!-- GOOGLE FONTS --&gt;\r\n	&lt;link href=&quot;https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&quot; rel=&quot;stylesheet&quot;&gt;\r\n	&lt;!-- ICONS --&gt;\r\n	&lt;link rel=&quot;apple-touch-icon&quot; sizes=&quot;76x76&quot; href=&quot;assets/img/apple-icon.png&quot;&gt;\r\n	&lt;link rel=&quot;icon&quot; type=&quot;image/png&quot; sizes=&quot;96x96&quot; href=&quot;assets/img/favicon.png&quot;&gt;', 0, 0, 1),
(66, 1, NULL, '2018-04-01 18:06:15', '{% extends &quot;layout.html&quot; %}\r\n{% block title %}Index{% endblock %}\r\n{% block head %}\r\n  {{ super() }}\r\n  &lt;style type=&quot;text/css&quot;&gt;\r\n    .important { color: #336699; }\r\n  &lt;/style&gt;\r\n{% endblock %}\r\n{% block content %}\r\n  &lt;h1&gt;Index&lt;/h1&gt;\r\n  &lt;p class=&quot;important&quot;&gt;\r\n    Welcome on my awesome homepage.\r\n{% endblock %}', 0, 0, 1),
(67, 1, NULL, '2018-04-01 18:06:22', '{% endblock %}', 0, 0, 1),
(68, 1, NULL, '2018-04-01 18:09:19', 'set FLASK_APP=webapp.py', 0, 0, 1),
(69, 1, NULL, '2018-04-01 18:11:41', '{{ url_for(&#039;static&#039;, filename=&#039;style.css&#039;) }}', 0, 0, 1),
(70, 1, NULL, '2018-04-01 18:12:04', 'vendor/bootstrap/css/bootstrap.min.css', 0, 0, 1),
(71, 1, NULL, '2018-04-01 18:14:01', '{{ url_for(&#039;static&#039;, filename=&#039;', 0, 0, 1),
(72, 1, NULL, '2018-04-01 18:14:49', '&#039;) }}', 0, 0, 1),
(73, 1, NULL, '2018-04-01 18:15:12', '/assets/vendor/bootstrap/js/bootstrap.min.js', 0, 0, 1),
(74, 1, NULL, '2018-04-01 18:15:25', 'set FLASK_APP=webapp.py', 0, 0, 1),
(75, 1, NULL, '2018-04-01 18:17:41', '{{ url_for(&#039;static&#039;, filename=&#039;', 0, 0, 1),
(76, 1, NULL, '2018-04-01 18:17:50', '&#039;) }}', 0, 0, 1),
(77, 1, NULL, '2018-04-01 18:18:10', '{{ url_for(&#039;static&#039;, filename=&#039;', 0, 0, 1),
(78, 1, NULL, '2018-04-01 18:18:20', '/', 0, 0, 1),
(79, 1, NULL, '2018-04-01 18:19:36', '{{ url_for(&#039;static&#039;, filename=&#039;', 0, 0, 1),
(80, 1, NULL, '2018-04-01 18:20:04', '&#039;) }}', 0, 0, 1),
(81, 1, NULL, '2018-04-01 18:20:15', '&lt;script src=&quot;{{ url_for(&#039;static&#039;, filename=&#039;vendor/jquery/jquery.min.js&#039;) }}&quot;&gt;&lt;/script&gt;\r\n	&lt;script src=&quot;{{ url_for(&#039;static&#039;, filename=&#039;vendor/bootstrap/js/bootstrap.min.js&#039;) }}&quot;&gt;&lt;/script&gt;\r\n	&lt;script src=&quot;{{ url_for(&#039;static&#039;, filename=&#039;vendor/jquery-slimscroll/jquery.slimscroll.min.js&#039;) }}&quot;&gt;&lt;/script&gt;\r\n	&lt;script src=&quot;{{ url_for(&#039;static&#039;, filename=&#039;vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js&#039;) }}&quot;&gt;&lt;/script&gt;\r\n	&lt;script src=&quot;{{ url_for(&#039;static&#039;, filename=&#039;vendor/chartist/js/chartist.min.js&#039;) }}&quot;&gt;&lt;/script&gt;\r\n	&lt;script src=&quot;{{ url_for(&#039;static&#039;, filename=&#039;scripts/klorofil-common.js&#039;) }}&quot;&gt;&lt;/script&gt;', 0, 0, 1),
(82, 1, NULL, '2018-04-01 18:20:44', 's', 0, 0, 1),
(83, 1, NULL, '2018-04-01 18:21:04', '{{ url_for(&#039;static&#039;, filename=&#039;', 0, 0, 1),
(84, 1, NULL, '2018-04-01 18:21:20', 's', 0, 0, 1),
(85, 1, NULL, '2018-04-01 18:22:37', 't', 0, 0, 1),
(86, 1, NULL, '2018-04-01 18:23:07', '&lt;script\r\n  src=&quot;https://code.jquery.com/jquery-3.3.1.min.js&quot;\r\n  integrity=&quot;sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=&quot;\r\n  crossorigin=&quot;anonymous&quot;&gt;&lt;/script&gt;', 0, 0, 1),
(87, 1, NULL, '2018-04-01 18:23:09', '&lt;script src=&quot;https://code.jquery.com/jquery-3.3.1.min.js&quot; integrity=&quot;sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=&quot; crossorigin=&quot;anonymous&quot;&gt;&lt;/script&gt;', 0, 0, 1),
(88, 1, NULL, '2018-04-01 18:23:30', 'v', 0, 0, 1),
(89, 1, NULL, '2018-04-01 18:23:47', 'E', 0, 0, 1),
(90, 1, NULL, '2018-04-01 18:24:54', 'v', 0, 0, 1),
(91, 1, NULL, '2018-04-01 18:27:21', '&lt;nav class=&quot;navbar navbar-default navbar-fixed-top&quot;&gt;\r\n			&lt;div class=&quot;brand&quot;&gt;\r\n				&lt;a href=&quot;index.html&quot;&gt;&lt;img src=&quot;assets/img/logo-dark.png&quot; alt=&quot;Klorofil Logo&quot; class=&quot;img-responsive logo&quot;&gt;&lt;/a&gt;\r\n			&lt;/div&gt;\r\n			&lt;div class=&quot;container-fluid&quot;&gt;\r\n				&lt;div class=&quot;navbar-btn&quot;&gt;\r\n					&lt;button type=&quot;button&quot; class=&quot;btn-toggle-fullwidth&quot;&gt;&lt;i class=&quot;lnr lnr-arrow-left-circle&quot;&gt;&lt;/i&gt;&lt;/button&gt;\r\n				&lt;/div&gt;\r\n				&lt;form class=&quot;navbar-form navbar-left&quot;&gt;\r\n					&lt;div class=&quot;input-group&quot;&gt;\r\n						&lt;input type=&quot;text&quot; value=&quot;&quot; class=&quot;form-control&quot; placeholder=&quot;Search dashboard...&quot;&gt;\r\n						&lt;span class=&quot;input-group-btn&quot;&gt;&lt;button type=&quot;button&quot; class=&quot;btn btn-primary&quot;&gt;Go&lt;/button&gt;&lt;/span&gt;\r\n					&lt;/div&gt;\r\n				&lt;/form&gt;\r\n				&lt;div class=&quot;navbar-btn navbar-btn-right&quot;&gt;\r\n					&lt;a class=&quot;btn btn-success update-pro&quot; href=&quot;https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&amp;utm_medium=template&amp;utm_campaign=KlorofilPro&quot; title=&quot;Upgrade to Pro&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-rocket&quot;&gt;&lt;/i&gt; &lt;span&gt;UPGRADE TO PRO&lt;/span&gt;&lt;/a&gt;\r\n				&lt;/div&gt;\r\n				&lt;div id=&quot;navbar-menu&quot;&gt;\r\n					&lt;ul class=&quot;nav navbar-nav navbar-right&quot;&gt;\r\n						&lt;li class=&quot;dropdown&quot;&gt;\r\n							&lt;a href=&quot;#&quot; class=&quot;dropdown-toggle icon-menu&quot; data-toggle=&quot;dropdown&quot;&gt;\r\n								&lt;i class=&quot;lnr lnr-alarm&quot;&gt;&lt;/i&gt;\r\n								&lt;span class=&quot;badge bg-danger&quot;&gt;5&lt;/span&gt;\r\n							&lt;/a&gt;\r\n							&lt;ul class=&quot;dropdown-menu notifications&quot;&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;notification-item&quot;&gt;&lt;span class=&quot;dot bg-warning&quot;&gt;&lt;/span&gt;System space is almost full&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;notification-item&quot;&gt;&lt;span class=&quot;dot bg-danger&quot;&gt;&lt;/span&gt;You have 9 unfinished tasks&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;notification-item&quot;&gt;&lt;span class=&quot;dot bg-success&quot;&gt;&lt;/span&gt;Monthly report is available&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;notification-item&quot;&gt;&lt;span class=&quot;dot bg-warning&quot;&gt;&lt;/span&gt;Weekly meeting in 1 hour&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;notification-item&quot;&gt;&lt;span class=&quot;dot bg-success&quot;&gt;&lt;/span&gt;Your request has been approved&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot; class=&quot;more&quot;&gt;See all notifications&lt;/a&gt;&lt;/li&gt;\r\n							&lt;/ul&gt;\r\n						&lt;/li&gt;\r\n						&lt;li class=&quot;dropdown&quot;&gt;\r\n							&lt;a href=&quot;#&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&lt;i class=&quot;lnr lnr-question-circle&quot;&gt;&lt;/i&gt; &lt;span&gt;Help&lt;/span&gt; &lt;i class=&quot;icon-submenu lnr lnr-chevron-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n							&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Basic Use&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Working With Data&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Security&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot;&gt;Troubleshooting&lt;/a&gt;&lt;/li&gt;\r\n							&lt;/ul&gt;\r\n						&lt;/li&gt;\r\n						&lt;li class=&quot;dropdown&quot;&gt;\r\n							&lt;a href=&quot;#&quot; class=&quot;dropdown-toggle&quot; data-toggle=&quot;dropdown&quot;&gt;&lt;img src=&quot;assets/img/user.png&quot; class=&quot;img-circle&quot; alt=&quot;Avatar&quot;&gt; &lt;span&gt;Samuel&lt;/span&gt; &lt;i class=&quot;icon-submenu lnr lnr-chevron-down&quot;&gt;&lt;/i&gt;&lt;/a&gt;\r\n							&lt;ul class=&quot;dropdown-menu&quot;&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;lnr lnr-user&quot;&gt;&lt;/i&gt; &lt;span&gt;My Profile&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;lnr lnr-envelope&quot;&gt;&lt;/i&gt; &lt;span&gt;Message&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;lnr lnr-cog&quot;&gt;&lt;/i&gt; &lt;span&gt;Settings&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n								&lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;lnr lnr-exit&quot;&gt;&lt;/i&gt; &lt;span&gt;Logout&lt;/span&gt;&lt;/a&gt;&lt;/li&gt;\r\n							&lt;/ul&gt;\r\n						&lt;/li&gt;\r\n						&lt;!-- &lt;li&gt;\r\n							&lt;a class=&quot;update-pro&quot; href=&quot;https://www.themeineed.com/downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&amp;utm_medium=template&amp;utm_campaign=KlorofilPro&quot; title=&quot;Upgrade to Pro&quot; target=&quot;_blank&quot;&gt;&lt;i class=&quot;fa fa-rocket&quot;&gt;&lt;/i&gt; &lt;span&gt;UPGRADE TO PRO&lt;/span&gt;&lt;/a&gt;\r\n						&lt;/li&gt; --&gt;\r\n					&lt;/ul&gt;\r\n				&lt;/div&gt;\r\n			&lt;/div&gt;\r\n		&lt;/nav&gt;', 0, 0, 1),
(92, 1, NULL, '2018-04-01 18:27:47', 'k', 0, 0, 1),
(93, 1, NULL, '2018-04-01 18:28:59', 'include', 0, 0, 1),
(94, 1, NULL, '2018-04-01 18:31:37', '{{ url_for(&#039;static&#039;, filename=&#039;', 0, 0, 1),
(95, 1, NULL, '2018-04-01 18:33:14', '&#039;) }}', 0, 0, 1),
(96, 1, NULL, '2018-04-01 18:36:28', '{% block footer %}\r\n		&lt;script&gt;\r\n		$(function() {\r\n			var data, options;\r\n\r\n			// headline charts\r\n			data = {\r\n				labels: [&#039;Mon&#039;, &#039;Tue&#039;, &#039;Wed&#039;, &#039;Thu&#039;, &#039;Fri&#039;, &#039;Sat&#039;, &#039;Sun&#039;],\r\n				series: [\r\n					[23, 29, 24, 40, 25, 24, 35],\r\n					[14, 25, 18, 34, 29, 38, 44],\r\n				]\r\n			};\r\n\r\n			options = {\r\n				height: 300,\r\n				showArea: true,\r\n				showLine: false,\r\n				showPoint: false,\r\n				fullWidth: true,\r\n				axisX: {\r\n					showGrid: false\r\n				},\r\n				lineSmooth: false,\r\n			};\r\n\r\n			new Chartist.Line(&#039;#headline-chart&#039;, data, options);\r\n\r\n\r\n			// visits trend charts\r\n			data = {\r\n				labels: [&#039;Jan&#039;, &#039;Feb&#039;, &#039;Mar&#039;, &#039;Apr&#039;, &#039;May&#039;, &#039;Jun&#039;, &#039;Jul&#039;, &#039;Aug&#039;, &#039;Sep&#039;, &#039;Oct&#039;, &#039;Nov&#039;, &#039;Dec&#039;],\r\n				series: [{\r\n					name: &#039;series-real&#039;,\r\n					data: [200, 380, 350, 320, 410, 450, 570, 400, 555, 620, 750, 900],\r\n				}, {\r\n					name: &#039;series-projection&#039;,\r\n					data: [240, 350, 360, 380, 400, 450, 480, 523, 555, 600, 700, 800],\r\n				}]\r\n			};\r\n\r\n			options = {\r\n				fullWidth: true,\r\n				lineSmooth: false,\r\n				height: &quot;270px&quot;,\r\n				low: 0,\r\n				high: &#039;auto&#039;,\r\n				series: {\r\n					&#039;series-projection&#039;: {\r\n						showArea: true,\r\n						showPoint: false,\r\n						showLine: false\r\n					},\r\n				},\r\n				axisX: {\r\n					showGrid: false,\r\n\r\n				},\r\n				axisY: {\r\n					showGrid: false,\r\n					onlyInteger: true,\r\n					offset: 0,\r\n				},\r\n				chartPadding: {\r\n					left: 20,\r\n					right: 20\r\n				}\r\n			};\r\n\r\n			new Chartist.Line(&#039;#visits-trends-chart&#039;, data, options);\r\n\r\n\r\n			// visits chart\r\n			data = {\r\n				labels: [&#039;Mon&#039;, &#039;Tue&#039;, &#039;Wed&#039;, &#039;Thu&#039;, &#039;Fri&#039;, &#039;Sat&#039;, &#039;Sun&#039;],\r\n				series: [\r\n					[6384, 6342, 5437, 2764, 3958, 5068, 7654]\r\n				]\r\n			};\r\n\r\n			options = {\r\n				height: 300,\r\n				axisX: {\r\n					showGrid: false\r\n				},\r\n			};\r\n\r\n			new Chartist.Bar(&#039;#visits-chart&#039;, data, options);\r\n\r\n\r\n			// real-time pie chart\r\n			var sysLoad = $(&#039;#system-load&#039;).easyPieChart({\r\n				size: 130,\r\n				barColor: function(percent) {\r\n					return &quot;rgb(&quot; + Math.round(200 * percent / 100) + &quot;, &quot; + Math.round(200 * (1.1 - percent / 100)) + &quot;, 0)&quot;;\r\n				},\r\n				trackColor: &#039;rgba(245, 245, 245, 0.8)&#039;,\r\n				scaleColor: false,\r\n				lineWidth: 5,\r\n				lineCap: &quot;square&quot;,\r\n				animate: 800\r\n			});\r\n\r\n			var updateInterval = 3000; // in milliseconds\r\n\r\n			setInterval(function() {\r\n				var randomVal;\r\n				randomVal = getRandomInt(0, 100);\r\n\r\n				sysLoad.data(&#039;easyPieChart&#039;).update(randomVal);\r\n				sysLoad.find(&#039;.percent&#039;).text(randomVal);\r\n			}, updateInterval);\r\n\r\n			function getRandomInt(min, max) {\r\n				return Math.floor(Math.random() * (max - min + 1)) + min;\r\n			}\r\n\r\n		});\r\n		&lt;/script&gt;\r\n	{% endblock %}', 0, 0, 1),
(97, 1, NULL, '2018-04-01 18:37:18', 'a', 0, 0, 1),
(98, 1, NULL, '2018-04-01 18:40:28', 'import subprocess', 0, 0, 1),
(99, 1, NULL, '2018-04-01 18:41:06', 'from subprocess import call', 0, 0, 1),
(100, 1, NULL, '2018-04-01 18:41:17', 'call([&quot;ls&quot;, &quot;-l&quot;])', 0, 0, 1),
(101, 1, NULL, '2018-04-01 18:41:37', 'pyinstaller --onefile --windowed --icon=icon.ico detector.py', 0, 0, 1),
(102, 1, NULL, '2018-04-01 18:42:29', 'e', 0, 0, 1),
(103, 1, NULL, '2018-04-02 08:02:51', '×‘×“×™×§×”', 0, 0, 1),
(104, 1, NULL, '2018-04-02 08:03:18', '&lt;html&gt;', 0, 0, 1),
(105, 1, NULL, '2018-04-02 08:04:47', 'html_entity_decode', 0, 0, 1),
(106, 1, NULL, '2018-04-03 11:24:07', 'raise SystemExit\r\n        sys.exit(0)', 0, 0, 1),
(107, 1, NULL, '2018-04-03 11:26:28', 'https://www.youtube.com/', 0, 0, 1),
(108, 1, NULL, '2018-04-03 11:32:25', 'CONNECT, NOW, EVERYWHERE', 0, 0, 1),
(109, 1, NULL, '2018-04-03 11:36:07', '{% if page == &#039;index&#039; %} active {%  %}', 0, 0, 1),
(110, 1, NULL, '2018-04-03 11:38:40', 'ring&#039;', 0, 0, 1),
(111, 1, NULL, '2018-04-03 13:23:21', 'isInitialized', 0, 0, 1),
(112, 1, NULL, '2018-04-03 13:27:14', 'settingsHelper.isInitialized()', 0, 0, 1),
(113, 1, NULL, '2018-04-03 13:28:38', 'threading.Thread(target=tray.run).start()', 0, 0, 1),
(114, 1, NULL, '2018-04-03 13:29:28', 'api.api_call_post', 0, 0, 1),
(115, 1, NULL, '2018-04-03 13:29:59', '&quot;http://connectify.rf.gd/api/copy.php&quot;', 0, 0, 1),
(116, 1, NULL, '2018-04-03 13:30:08', '{\r\n                    &#039;login_hash&#039;: loginHelper.get_login_hash(), &#039;copy&#039;: recent_value\r\n                }', 0, 0, 1),
(117, 1, NULL, '2018-04-03 13:30:54', 'api_call_post', 0, 0, 1),
(118, 1, NULL, '2018-04-03 13:33:54', 'device_hash', 0, 0, 1),
(119, 1, NULL, '2018-04-03 13:35:15', 'db = sqlite3.connect(&#039;connectify&#039;)\r\n    cursor = db.cursor()\r\n    cursor.execute(&quot;INSERT INTO `settings`(`name`, `value`) VALUES (&#039;initialized&#039;, &#039;true&#039;)&quot;)\r\n    cursor.execute(&quot;INSERT INTO `settings`(`name`, `value`) VALUES (&#039;device_hash&#039;, &#039;&quot; + device_hash + &quot;&#039;)&quot;)\r\n    cursor.execute(&quot;INSERT INTO `settings`(`name`, `value`) VALUES (&#039;device_name&#039;, &#039;&quot; + device_name + &quot;&#039;)&quot;)\r\n    db.commit()\r\n    cursor.close()', 0, 0, 1),
(120, 1, NULL, '2018-04-03 13:35:43', 'cursor.execute(&quot;DELETE FROM `settings` WHERE `name` = &#039;initialized&#039;)&quot;)', 0, 0, 1),
(121, 1, NULL, '2018-04-03 13:35:46', 'device_hash', 0, 0, 1),
(122, 1, NULL, '2018-04-03 13:35:47', 'device_name', 0, 0, 1),
(123, 1, NULL, '2018-04-03 13:35:53', 'uninitialize', 0, 0, 1),
(124, 1, NULL, '2018-04-03 13:40:25', 'device_hash_resp = api.post(&#039;http://connectify.rf.gd/api/device_hash.php&#039;, {', 0, 0, 1),
(125, 1, NULL, '2018-04-03 13:40:57', 'device_hash', 0, 0, 1),
(126, 1, NULL, '2018-04-03 13:44:09', 'db = sqlite3.connect(&#039;connectify&#039;)\r\n    cursor = db.cursor()\r\n    cursor.execute(&quot;SELECT `value` FROM `settings` WHERE `name` = &#039;login_hash&#039;&quot;)\r\n    result = cursor.fetchone()\r\n    db.commit()\r\n    cursor.close()\r\n    return result[0]', 0, 0, 1),
(127, 1, NULL, '2018-04-03 13:44:34', 'getDeviceHash', 0, 0, 1),
(128, 1, NULL, '2018-04-03 13:45:36', '$_POST[&#039;device_hash&#039;]', 0, 0, 1),
(129, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 13:48:07', 'bitchin', 0, 0, 1),
(130, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 13:50:17', 'num_total_copies', 0, 0, 1),
(131, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 13:51:33', 'if ($stat == &#039;num_total_copies&#039;) {\r\n            $resp[&#039;result&#039;] = $link-&gt;query(&quot;SELECT * FROM `copies` WHERE `user_id` = {$user_id}&quot;)-&gt;rowCount();\r\n        }', 0, 0, 1),
(132, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 13:51:56', 'total_copies = json.loads(api.post(&#039;http://connectify.rf.gd/api/user_stats.php&#039;, { &#039;login_hash&#039; : loginHelper.get_login_hash(), &#039;stat&#039; : &#039;num_total_copies&#039; }))[&#039;result&#039;]', 0, 0, 1),
(133, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 13:53:51', 'api.post(&#039;http://connectify.rf.gd/api/user_stats.php&#039;, { &#039;login_hash&#039; : loginHelper.get_login_hash(), &#039;stat&#039; : &#039;num_devices&#039; })', 0, 0, 1),
(134, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 13:59:20', 'loginHelper.get_login_hash()', 0, 0, 1),
(135, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 14:00:21', 'num_devices', 0, 0, 1),
(136, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 14:05:32', '&lt;title&gt;{% block title %}{% endblock %} - Connectify&lt;/title&gt;', 0, 0, 1),
(137, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 14:15:32', '--------', 0, 0, 1),
(138, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 14:38:07', '&lt;div class=&quot;navbar-btn navbar-btn-right&quot;&gt;', 0, 0, 1),
(139, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 14:40:53', 'clipboard', 0, 0, 1),
(140, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-03 14:41:19', 'laptop', 0, 0, 1),
(141, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-04 06:17:36', 'Overview', 0, 0, 1),
(142, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-04 06:17:49', 'lalala', 0, 0, 1),
(143, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-04 06:18:28', 'Overview', 0, 0, 1),
(144, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-05 11:00:26', '.gitignore', 0, 0, 1),
(145, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-08 15:40:22', 'http://localhost:5000/copies/', 0, 0, 1),
(146, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:37:18', 'Overview', 0, 0, 1),
(147, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:38:26', 'total_copies = json.loads(api.post(&#039;http://connectify.rf.gd/api/user_stats.php&#039;, { &#039;login_hash&#039; : loginHelper.get_login_hash(), &#039;stat&#039; : &#039;num_total_copies&#039; }))[&#039;result&#039;]', 0, 0, 1),
(148, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:39:03', 'get_user_num_copies', 0, 0, 1),
(149, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:42:01', 'total-copies-counter', 0, 0, 1),
(150, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:42:22', 'Overview', 0, 0, 1),
(151, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:42:47', '{{ url_for(&#039;static&#039;, filename=&#039;img/user5.png&#039;) }}', 0, 0, 1),
(152, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:43:13', 'Overview', 0, 0, 1),
(153, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:43:37', 'http://localhost:5000/', 0, 0, 1),
(154, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:43:50', '$(&#039;#total-copies-counter&#039;).html', 0, 0, 1),
(155, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:44:00', '$(&#039;#total-copies-counter&#039;).html(get_user_num_copies());', 0, 0, 1),
(156, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:44:16', 'function get_user_num_copies () {  \r\n  $.ajax({\r\n    url: &#039;/get_user_num_copies/&#039;,\r\n    processData: false,\r\n    contentType: false,\r\n    success: function (response) {\r\n      console.log(response);\r\n    }\r\n  });\r\n}', 0, 0, 1),
(157, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:44:28', '$(&#039;#total-copies-counter&#039;).html(get_user_num_copies());', 0, 0, 1),
(158, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:44:58', 'http://localhost:5000/', 0, 0, 1),
(159, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:45:09', 'http://localhost:5000/copies/', 0, 0, 1),
(160, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:45:11', 'https://stackoverflow.com/questions/474528/what-is-the-best-way-to-repeatedly-execute-a-function-every-x-seconds-in-python', 0, 0, 1),
(161, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 12:45:20', 'XHR finished loading: GET &quot;&lt;URL&gt;&quot;.', 0, 0, 1),
(162, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 13:43:29', 'for filename in os.listdir(directory):\r\n    if filename.endswith(&quot;.asm&quot;) or filename.endswith(&quot;.py&quot;): \r\n        # print(os.path.join(directory, filename))\r\n        continue\r\n    else:\r\n        continue', 0, 0, 1),
(163, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-09 13:44:48', 'import glob\r\n\r\nfor filename in glob.iglob(&#039;/foobar/*.asm&#039;):\r\n     print(&#039;/foobar/%s&#039; % filename)', 0, 0, 1),
(164, 1, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-16 16:54:37', 'Paul&#039;s Down-Home Page', 0, 0, 1),
(165, 2, '4b9b0a27934077a1d7e540505d8e98f1', '2018-04-16 16:57:33', 'https://www.google.co.il/?gfe_rd=cr&amp;dcr=0&amp;ei=1dPUWrCpL4_EXs6Ho5gK', 0, 0, 0),
(166, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-04-21 16:25:39', 'https://www.youtube.com/watch?v=_uk_6vfqwTA', 0, 0, 0),
(167, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 21:56:09', 'get_user_by_loginhash', 0, 0, 0),
(168, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 21:56:22', 'DESKTOP-OJISTVH - 2018-08-26 00:56:09', 0, 0, 0),
(169, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 21:57:00', '192.168.43.195', 0, 0, 1),
(170, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:00:23', 'server_path_btn', 0, 0, 1),
(171, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:01:16', 'serverPathBtn', 0, 0, 1),
(172, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:02:10', 'AlertDialog.Builder builder = new AlertDialog.Builder(this);\r\nbuilder.setTitle(&quot;Title&quot;);\r\n\r\n// Set up the input\r\nfinal EditText input = new EditText(this);\r\n// Specify the type of input expected; this, for example, sets the input as a password, and will mask the text\r\ninput.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_VARIATION_PASSWORD);\r\nbuilder.setView(input);', 0, 0, 1),
(173, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:04:18', 'builder.show();', 0, 0, 1),
(174, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:04:58', '// Set up the buttons\r\nbuilder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {\r\n    @Override\r\n    public void onClick(DialogInterface dialog, int which) {\r\n        dialog.dismiss();\r\n        m_Text = input.getText().toString();\r\n    }   \r\n}); \r\nbuilder.setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() {\r\n    @Override\r\n    public void onClick(DialogInterface dialog, int which) {\r\n        dialog.cancel();\r\n    }   \r\n});', 0, 0, 1),
(175, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:07:18', 'final EditText txtUrl = new EditText(this);\r\n\r\n// Set the default text to a link of the Queen\r\ntxtUrl.setHint(&quot;http://www.librarising.com/astrology/celebs/images2/QR/queenelizabethii.jpg&quot;);\r\n\r\nnew AlertDialog.Builder(this)\r\n  .setTitle(&quot;Moustachify Link&quot;)\r\n  .setMessage(&quot;Paste in the link of an image to moustachify!&quot;)\r\n  .setView(txtUrl)\r\n  .setPositiveButton(&quot;Moustachify&quot;, new DialogInterface.OnClickListener() {\r\n    public void onClick(DialogInterface dialog, int whichButton) {\r\n      String url = txtUrl.getText().toString();\r\n      moustachify(null, url);\r\n    }\r\n  })\r\n  .setNegativeButton(&quot;Cancel&quot;, new DialogInterface.OnClickListener() {\r\n    public void onClick(DialogInterface dialog, int whichButton) {\r\n    }\r\n  })\r\n  .show();', 0, 0, 1),
(176, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:10:54', 'ayoutInflater layoutInflaterAndroid = LayoutInflater.from(c);\r\n                View mView = layoutInflaterAndroid.inflate(R.layout.user_input_dialog_box, null);\r\n                AlertDialog.Builder alertDialogBuilderUserInput = new AlertDialog.Builder(c);\r\n                alertDialogBuilderUserInput.setView(mView);\r\n\r\n                final EditText userInputDialogEditText = (EditText) mView.findViewById(R.id.userInputDialog);\r\n                alertDialogBuilderUserInput\r\n                        .setCancelable(false)\r\n                        .setPositiveButton(&quot;Send&quot;, new DialogInterface.OnClickListener() {\r\n                            public void onClick(DialogInterface dialogBox, int id) {\r\n                                // ToDo get user input here\r\n                            }\r\n                        })\r\n\r\n                        .setNegativeButton(&quot;Cancel&quot;,\r\n                                new DialogInterface.OnClickListener() {\r\n                                    public void onClick(DialogInterface dialogBox, int id) {\r\n                                        dialogBox.cancel();\r\n                                    }\r\n                                });\r\n\r\n                AlertDialog alertDialogAndroid = alertDialogBuilderUserInput.create();\r\n                alertDialogAndroid.show();', 0, 0, 1),
(177, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:10:55', 'LayoutInflater layoutInflaterAndroid = LayoutInflater.from(c);\r\n                View mView = layoutInflaterAndroid.inflate(R.layout.user_input_dialog_box, null);\r\n                AlertDialog.Builder alertDialogBuilderUserInput = new AlertDialog.Builder(c);\r\n                alertDialogBuilderUserInput.setView(mView);\r\n\r\n                final EditText userInputDialogEditText = (EditText) mView.findViewById(R.id.userInputDialog);\r\n                alertDialogBuilderUserInput\r\n                        .setCancelable(false)\r\n                        .setPositiveButton(&quot;Send&quot;, new DialogInterface.OnClickListener() {\r\n                            public void onClick(DialogInterface dialogBox, int id) {\r\n                                // ToDo get user input here\r\n                            }\r\n                        })\r\n\r\n                        .setNegativeButton(&quot;Cancel&quot;,\r\n                                new DialogInterface.OnClickListener() {\r\n                                    public void onClick(DialogInterface dialogBox, int id) {\r\n                                        dialogBox.cancel();\r\n                                    }\r\n                                });\r\n\r\n                AlertDialog alertDialogAndroid = alertDialogBuilderUserInput.create();\r\n                alertDialogAndroid.show();', 0, 0, 1),
(178, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:11:26', '&lt;?xml version=&quot;1.0&quot; encoding=&quot;utf-8&quot;?&gt;\r\n&lt;LinearLayout xmlns:android=&quot;http://schemas.android.com/apk/res/android&quot;\r\n    android:id=&quot;@+id/custom_dialog_layout_design_user_input&quot;\r\n    android:layout_width=&quot;match_parent&quot;\r\n    android:layout_height=&quot;match_parent&quot;\r\n    android:orientation=&quot;vertical&quot;\r\n    android:padding=&quot;16dp&quot;&gt;\r\n\r\n    &lt;TextView\r\n        android:id=&quot;@+id/dialogTitle&quot;\r\n        android:layout_width=&quot;wrap_content&quot;\r\n        android:layout_height=&quot;wrap_content&quot;\r\n        android:text=&quot;Dialog Title&quot;\r\n        android:textAppearance=&quot;?android:attr/textAppearanceLarge&quot; /&gt;\r\n\r\n    &lt;EditText\r\n        android:id=&quot;@+id/userInputDialog&quot;\r\n        android:layout_width=&quot;match_parent&quot;\r\n        android:layout_height=&quot;wrap_content&quot;\r\n        android:hint=&quot;Enter Something&quot;\r\n        android:inputType=&quot;text&quot; /&gt;\r\n&lt;/LinearLayout&gt;', 0, 0, 1),
(179, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:12:46', 'android.view.WindowManager$BadTokenException: Unable to add window -- token null is not for an application', 0, 0, 1),
(180, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:13:31', 'MainActivity.this', 0, 0, 1),
(181, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:14:11', 'userInputDialogEditText', 0, 0, 1),
(182, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:14:58', 'api_path', 0, 0, 1),
(183, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:16:32', 'settingsHelper.add(&quot;api_path&quot;, userInputDialogEditText.getText().toString());', 0, 0, 1),
(184, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:17:58', 'http://192.168.19.1:8080', 0, 0, 1),
(185, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:18:22', 'settingsHelper.getValueByName(&quot;api_path&quot;) +', 0, 0, 1),
(186, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:18:51', 'settingsHelper', 0, 0, 1),
(187, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:19:34', '192.168.137.1', 0, 0, 1),
(188, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:21:26', 'settingsHelper.getValueByName(&quot;api_path&quot;)', 0, 0, 1),
(189, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:22:38', 'enc', 0, 0, 1),
(190, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:22:48', '0ae02597b4968eff7eb7ce6dff9cd7eb', 0, 0, 1),
(191, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:23:44', 'check_credentials', 0, 0, 1),
(192, 1, 'b8097658f9b0050de4f9dbd85e45584b', '2018-08-25 22:25:19', '0ae02597b4968eff7eb7ce6dff9cd7eb', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `last_connected` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ip` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `name`, `hash`, `user_id`, `last_connected`, `ip`) VALUES
(5, 'SM-A520F', '5284456812e7093b836c092d28419fd2', 1, '2018-04-08 15:33:58', '127.0.0.1'),
(4, 'DESKTOP-OJISTVH', 'b8097658f9b0050de4f9dbd85e45584b', 1, '2018-04-05 11:08:31', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_created_id` int(11) NOT NULL,
  `pic_dst` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(11) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `message`) VALUES
(1, 'copingtime.sleep(0.5)');

-- --------------------------------------------------------

--
-- Table structure for table `login_hashes`
--

CREATE TABLE `login_hashes` (
  `id` int(11) NOT NULL,
  `hash` varchar(32) NOT NULL,
  `user_id` int(11) NOT NULL,
  `expire` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_hashes`
--

INSERT INTO `login_hashes` (`id`, `hash`, `user_id`, `expire`) VALUES
(1, '440E759A46EEC4A1C5CB9DCAC0B9F2AA', 1, NULL),
(2, '147a716bf67849ca0f345130395112d2', 1, NULL),
(3, '27efb3a2ed0d5d853fa790f18cb17c78', 1, NULL),
(4, '60948e7d9ca0031126770318adc84c4e', 1, NULL),
(5, '67dbdc8a53eed90044e0679b14be5951', 1, NULL),
(6, '2f43f38fc3d2c4b3575670bbad4219fc', 1, NULL),
(7, '39dbc6f457747d915c28de0de088dad5', 1, NULL),
(8, '92c832ca94cf5799c6f650cec5a0a7d3', 1, NULL),
(9, 'fab20245ef49e46564b29e5f86313650', 1, NULL),
(10, '51f247b1fdc32dfc8b8a51207ee0581c', 1, NULL),
(11, 'd4ce8148eebf46775ed0ffc25f832b69', 1, NULL),
(12, 'c5696499f7f63c821b67dccc25483070', 1, NULL),
(13, 'fcd52558f930766778a38b5d123e1bc8', 1, NULL),
(14, 'e6a5730737645c27ddcab1efe2b157b0', 1, NULL),
(15, '134ee3fe1141ff7510b762568b61ea07', 1, NULL),
(16, '916739e5b63d31b821e41817cdb47402', 1, NULL),
(17, 'e526fc97feab2cc2accf410c73e5a8bb', 1, NULL),
(18, 'c07102efb2699f546801cc4669d6a352', 1, NULL),
(19, '730f6246327fac740001b80cdbafb904', 1, NULL),
(20, 'f4af3e5de39fd86c0152f01b9dc6a32e', 1, NULL),
(21, '8953d3de7e7d96536725c4fb5096f34e', 1, NULL),
(22, 'dc748f979b275f6fefe65e9dc1621a70', 1, NULL),
(23, '4ed9f888930c34ee9cb08bfc677210b0', 1, NULL),
(24, 'f8d43fa837eada8698f63602dd7ef981', 1, NULL),
(25, '5e13ebea4a61fc70a2fdb7af9c7ab69a', 1, NULL),
(26, 'a3cdbb9fa7a1b3f7c1ee62ad66600d2b', 1, NULL),
(27, '5111f51053a738787e3fb1223b35d814', 1, NULL),
(28, '978836a07532c8f604e3d226d798af89', 1, NULL),
(29, 'b065f126127ae670626e66a5f34c0d8b', 1, NULL),
(30, '0ebb91ba907b0b6fc66d3fc46029c621', 1, NULL),
(31, 'b711b812704f69593c82b004b68e5cdd', 1, NULL),
(32, '40a8e7a0b3f668bba0ccacae8016f66c', 1, NULL),
(33, '399c35a7f3c4b4f23bcb22a71a258e33', 1, NULL),
(34, '72bf6b99c483deea3bbd3fb3f3031661', 1, NULL),
(35, 'ed7f173f5e91582b973ddd89bf14c6d5', 1, NULL),
(36, 'f208fa76ac6e7df1ec38b34e163dfe49', 1, NULL),
(37, '5f391d58dd953c3601fac819dfd77f39', 1, NULL),
(38, 'a8c8963ba45d9433e76b7160e822f567', 1, NULL),
(39, '60fc9143b8a6851993e69fb7fdfd639e', 1, NULL),
(40, 'c025df94cb0618ac9617d3371f7e34bf', 1, NULL),
(41, '41d122c382e0159e288c46bd859570c7', 1, NULL),
(42, '00261e5072921e2cfccd1a91da3ba861', 1, NULL),
(43, 'cff01a85927dab55e5b4df1446736a78', 1, NULL),
(44, '5868c10f033a402acccdff3a8a510b13', 1, NULL),
(45, 'fba3f536153e5823753c1fa845e8988e', 2, NULL),
(46, 'b526756069e124a328efa2b5c6ea8925', 1, NULL),
(47, '5d3df97a9dc147de70f3c89abca381ce', 1, NULL),
(48, '950ce64fcaed4964cd8e0608a88b9b25', 1, NULL),
(49, '4a774b9d47ec062bd191d6c03722a97f', 1234, NULL),
(50, 'a6638fb9d2174a9616c5ef14cf38eb95', 1, NULL),
(51, '90bd5bc8188887162e365a8a54411a28', 1, NULL),
(52, '8045269a4d4e12c624d4439410458f82', 1, NULL),
(53, 'd45f2a93c10edd2796fd3a20effd06cf', 1, NULL),
(54, 'f520ea16aa8ce75101d65d65baea16f7', 1, NULL),
(55, '58e5028c2944f726f666480ce8c7afca', 1, NULL),
(56, '83d1282d3333a6114836b2b75880388c', 1, NULL),
(57, '153f37c33f3fcb1be62b3b262d57d652', 1, NULL),
(58, '82fd601d9d7df76354ee89e99f2d3bd5', 1, NULL),
(59, 'f037afa9888ece2eea561ea492ae43f7', 1, NULL),
(60, '98afda453426d8d53e1b245a05451348', 1, NULL),
(61, 'a79221e07d8e2f4ff5994fccd8985dac', 1, NULL),
(62, 'f9e4582ea32d3df01c693735acf1c201', 1, NULL),
(63, '68ff3f8e1c6ccf1bd4e8d842c0eee310', 1, NULL),
(64, '8c55b55faae028489bdc3602e1cadc8d', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` text NOT NULL,
  `seen` tinyint(1) NOT NULL,
  `location` text NOT NULL,
  `description` text NOT NULL,
  `link_text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `starred_copies`
--

CREATE TABLE `starred_copies` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `copy_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(66) NOT NULL,
  `email` varchar(99) NOT NULL,
  `password_hashed` varchar(99) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `profile_pic_url` varchar(99) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password_hashed`, `gender`, `profile_pic_url`, `admin`) VALUES
(1, 'Yakov Shitrit', 'yakovd33@gmail.com', '533e12c0697f634ca9e56960d241839f\n', 'Male', 'https://i.imgur.com/QiVJaaW.png', 0),
(2, 'Yakov Shitrit', 'yakovd30@walla.com', '533e12c0697f634ca9e56960d241839f\n', NULL, 'https://i.imgur.com/QiVJaaW.png', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `copies`
--
ALTER TABLE `copies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_hashes`
--
ALTER TABLE `login_hashes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `starred_copies`
--
ALTER TABLE `starred_copies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `copies`
--
ALTER TABLE `copies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_hashes`
--
ALTER TABLE `login_hashes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `starred_copies`
--
ALTER TABLE `starred_copies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
