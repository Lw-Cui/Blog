-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: newBlog
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article_article`
--

DROP TABLE IF EXISTS `article_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `content` longtext NOT NULL,
  `publish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_article`
--

LOCK TABLES `article_article` WRITE;
/*!40000 ALTER TABLE `article_article` DISABLE KEYS */;
INSERT INTO `article_article` VALUES (3,'诸事小记','<p><em>在大学，考完了试就意味着假期开始。突然紧绷着的神经突然就松垮了下来，反而倒是蛮不适应的。人的记忆力远没有自己想象的那么好，不管该不该，忘总是不可避免的。所以做些记录也真真是极好的事儿。</em></p>\n\n<ul>\n<li>\n<p>哈工大交换</p>\n<p>这事情真是比我料想的要复杂得多。蝴蝶的翅膀扇个一年指不定真有龙卷风，何况是人呢。起因是进姐发过，觉得不错就直接报了。结果先选的是松，但松因为只要CS专业而又推荐的我。<strong>人生的终极问题大多是关于人际关系的。</strong>加油吧少年。</p>\n</li>\n<li>\n<p>转方向</p>\n<p>大一上学期还是坐井观天等着ACM招新，结果下学期真到了招新发现自己差的太多，<em>果断</em>转软件方向。说是<em>果断</em>,其实真是内心挣扎的不行，毕竟涉及到转变对很多事情的看法。结果是接触了<code>Qt</code>接触了<code>Django</code>接触了和它们相关的一整棵技能树…但还是经常被很多小事刺激到我弱小的心灵。<strong>才需学也，</strong>加油吧少年。</p>\n</li>\n</ul>','2015-07-16 03:53:31'),(4,'诸事小记II','<ul>\n<li>哈工大交换（续）</li>\n</ul>\n\n<p>今天下午终于把表盖上了章，真像办好了一个任务然后拿到成就。当时觉得教务科的老师还是挺亲切的，也大胆地去闲聊了一下，气氛也蛮不错的。如果一个连表情都不带有的家伙冷冰冰地来找我办事，我的态度也不会好。最后的时候她要三分副本我只剩下两份，心里一凉：还要把所有的章再盖一次！结果老师让我用办公室的复印机复印，分分钟就搞定了。如果她让我再跑一趟也完全不能算是<em>刁难</em>嘛：规定要三份你给我两份，我也没办法。感觉人与人之间很多事<strong>莫过于此</strong>。</p>\n\n<ul>\n<li>小感想</li>\n</ul>\n\n<p>中午睡觉的时候真切地回忆起来暑假时和谁也不联系的那段时间了：一开始怡然自得如同隐居，但越到后来越不好过：觉得很独。前一段准备ACM选拔也是，做题做起来什么也不顾，结果很糟很糟：一个人时做得好没人鼓掌，做的坏没人安慰。知乎上说过：</p>\n\n<blockquote>\n<p>一个人时的状态总是最差的。</p>\n</blockquote>\n\n<p>所以现在觉得，<em>合群</em>也不是一件坏事，只是我能<em>合</em>的<em>群</em>不是很大，但也要<em>合</em>啊。人生毕竟不是和自己过的。</p>','2015-07-16 15:26:52'),(5,'野蛮学习','<p>这个念头是在<code>Bitmen</code>工作室里冒出来的：我们八点半到十二点，两点半到六点以及七点到九点是<em>工作</em>时间，对于我等弱菜来说是学习时间。<em>（也就是现在啦嘻嘻）</em>我为什么会这么想呢？首先，</p>\n\n<ul>\n<li>氛围带动强度</li>\n</ul>\n\n<p>就在此时此地，厉害的不厉害的都在很专心很努力的在学习或者在工作，让人不由自主地也做着做同样的事，很有一种<em>群体无意识</em>的感觉。完全没有自己一个人学时那种茫然、无助或者懒散——这些状态如反应活化能：不仅克服起来难，还使得效果不明显。就如山区的孩子已经非常尽力，其努力程度也不见得比得过城里高强度的高三。现在想想，<strong>团体的力量可见一斑</strong>。</p>\n\n<ul>\n<li>知识不求甚解</li>\n</ul>\n\n<p>晋陶潜：</p>\n\n<blockquote>\n<p>好读书，不求甚解；每有会意，便欣然忘食。</p>\n</blockquote>\n\n<p>这种学法绝对不是<em>学院派</em>的方法，没有他们推崇所谓<em>厚积薄发</em>或者<em>十年磨剑</em>。我学<code>C++</code>时所用书为<em>C++ primer</em>，学时我写代码的时间不及看书的十一。这种把书看透吃透在开始动手会让你的知识扎实无比，就如练武之马步，下盘甚稳。但缺点也很明显——时间所费太多。在这里，我学<code>python</code>，<code>Django</code>，<code>html</code>，<code>css</code>，<code>bootstrap</code>的时间和动手时间的时间快赶上一比一，甚至更多。这样可以更快出活，但也走了更多的弯路。两种方法各有利弊，但推崇其一而排斥其他是万万不可的，这也是我这几天来所学到的东西。</p>','2015-07-21 07:17:27'),(6,'近期的学习计划','<ul>\n<li>把<code>JavaScript</code>拿下，学习<code>jQuery</code>来完善<em>打卡系统</em></li>\n<li>深入学习<code>python</code>来写出爬虫，用<em>GitHub Student Package</em>上<em>DigitalOcean</em>的优惠来搭服务器，自己爬东西</li>\n<li>学习<code>CoffeeScript</code>来<code>full request</code><em>chrome</em>插件<em>vimium</em></li>\n<li>开始<em>contribute</em> <em>GitHub</em>上的项目</li>\n</ul>','2015-07-22 01:44:23'),(7,'为什么要好好学习','<p>想到这个题目是因为刚刚看了一部韩影《熔炉》。看完后我觉得自己出的这个问题越来越好答了：近了来看，我要更好更棒更酷的生活；远了来看，是给下一代一个最最基本的生存质量保障吧？推导：</p>\n\n<p>这部韩国电影《熔炉》讲了韩国儿童被性侵犯的故事。和其他国家荡气回肠的电影和我国从来不举的电影相比，这部电影给我的触动更深一些：</p>\n\n<ul>\n<li>\n<p>一个国家吸取教训的能力是衡量的重要标准，否则那些让人伤心的故事永远是个故事。对儿童和青少年的性侵是大罪，任何国家任何民族都是零容忍，但一开始量刑似乎都不是太重。美帝有过一起极为恶劣的绑架，强奸，杀人案件，一个小姑娘的冤魂让美国通过了《梅根法案》。在韩国，这就是这部电影反映的，通过《性暴力犯罪处罚特别法部分修订法律案》。我国也有过这样的事情。看：“唐慧案”中“唐慧为女儿的遭遇奔走各处上访，上访中屡屡受到不公正对待，被抓被打”。我在贴吧里也曾经看到过有人发出类似的求救。现在，豆瓣上都搜不到打不开《熔炉》了。</p>\n</li>\n<li>\n<p>我以后想要一个女儿。假如我处于任何原因留在了中国，万一，万一出了事，谁来保护我和我的女儿？精神控制的最高水平就是心中常备保险丝，官儿还没上门呢就自己打自己的嘴巴制止自己了——看看豆瓣，真是守法好公司，一不反党二不涉黄三不污蔑国家形象，就连个让大家羡慕羡慕“人家的国家”都帮党封掉了。估计以后我要是以后遭了殃，连个发帖都难。惹不起，难道还躲不起？这就引申出我的结论了：</p>\n</li>\n</ul>\n\n<h3>所以问题来了：为什么要好好学习？</h3>\n\n<p>为了自己，为了下一代，“贫贱，不能移”啊。</p>\n\n<h3>所以？</h3>\n\n<p>好好学英语。</p>','2015-07-25 15:16:22'),(8,'Django south使用指南','<p><em>目前的<code>Django</code>版本是1.4.21而且没有迁到1.8的打算，因此记录一下<code>south</code>的使用以便日后被坑了还能...爬起来。</em></p>\n\n<p><code>south</code>的使用需要分不同的情况：</p>\n\n<ul>\n<li>当新项目没有数据库，但已经加入<code>INSTALLED_APPS</code>时： <ol>\n<li><strong>使用<code>south</code></strong>\n首先将<code>south</code>加入到<code>INSTALLED_APPS</code>.</li>\n<li><strong>初始化数据库迁移记录</strong>\n运行\n<code>python manager.py schemamigration YOUR_APP_NAME --initial</code>\n来初始化<code>south</code>的迁移记录，相当于“数据库的版本控制”。</li>\n<li><strong>初始化数据库</strong>\n运行\n<code>python manager.py syncdb</code>\n来真正对数据库做出修改。</li>\n<li><strong>应用数据迁移记录</strong>\n运行\n<code>python manager.py migrate YOUR_APP_NAME</code>\n来将在<code>YOUR_APP_NAME/migration</code>中的修改记录加入数据库。</li>\n<li><strong>将数据库修改同步进数据库</strong>\n当<code>model.py</code>发生变化时，使用\n<code>python manager.py schemamigreation YOUR_APP_NAME --auto\npython manager.py migrate YOUR_APP_NAME</code></li>\n</ol>\n</li>\n</ul>','2015-07-29 03:05:49'),(9,'是什么让人在生活中惨败?','<p>曾经有一次我是如此的沮丧：</p>\n\n<ul>\n<li>我不能下床。</li>\n<li>凌晨三点的噩梦吓得我法入眠。</li>\n<li>一个巫师告诉我当街砸一个椰子就会解决一切问题。我做了，但没有什么效果。</li>\n<li>我离婚了。</li>\n<li>我失去了我的房子。</li>\n<li>我损失的可不是一点钱而是上百万的美金，直到我的账户余额变为零。</li>\n<li>我一半的家人都不和我说话了。</li>\n<li>我彻底破产了。</li>\n</ul>\n\n<p>这些就是在那个时候发生在我身上的：</p>\n\n<ul>\n<li>生理上：我一直在生病。我睡不好，吃不好。</li>\n<li>情感上：我和总是让我失望的人在一起。不管我向哪个方向望去，不管我向哪个方向跑，不管我抓住什么人的手并大喊“请帮帮我吧！”但没有人想把我从万丈深渊拉出来。</li>\n</ul>\n\n<p>我只不过做了错误的决定。我向不在乎我的人求救，他们并不爱我。</p>\n\n<ul>\n<li>\n<p>精神上：我失去了我的创造力。一个治疗师问我：“我能怎么帮你呢？”我唯一的回答是：“给我一张一百万的支票！”</p>\n</li>\n<li>\n<p>我封死了我的创意之井，而这正是我在以前挣钱的重要方法。</p>\n</li>\n</ul>\n\n<p>要知道，我们生活在一个“主意经济”之下：\n我们能外包工业，我们甚至能外包知识（我现在有至少十个有关知识的项目，包括软件，交通，设计等正在外包）。</p>\n\n<p>但我们不能外包我们的革新精神，创意和点子。</p>\n\n<p><strong>精神上：我持续在我的遗憾和焦虑中挣扎着。我一直在“时空穿梭”，生活在我想改变的过去和我极度害怕的未来，而非在关注现在很重要的事情。</strong></p>\n\n<p>而这很容易改变：与其说“我不得不做<strong>”并为答案而感到害怕和焦虑，我们要说“我打算做</strong>”并填上这块空白。</p>\n\n<p>可能你觉得以上这些都是严重的失败，我肯定不能不同意你。</p>\n\n<p>这些是多么惨痛的失败啊。但如果你把这些叫做失败，那这些对你意味着什么呢？你应该去自杀吗？我试过这个，然后我又失败了。</p>\n\n<p>我们都被困在一个马戏团里：毫无方向，阻塞试听。</p>\n\n<p>每个我们想出的念头，每个我们做出的“聪明”的决定都引导我们走向了我们觉得失败了的地方，我们在没有方向的镜宫里迷失了。</p>\n\n<p>但，你知道方向的。</p>\n\n<p>做与现在相反的决定。逆转它们。生理上的、情感上的、内心的、精神的，让每天变得比前一天好1%.</p>\n\n<p>如果你问到：“我怎么能现在就停止我的消极情绪呢？”然后我就会糊你一脸。按上面说的去做。</p>\n\n<p>你将成为一个走向成功的领导人。当其他人的灯火熄灭时，你将会是那个不灭的灯塔。</p>\n\n<p>但首先你要领导自己。抱怨，指责，遗憾，焦虑，害怕，对失败的恐惧，不会把你变成一个领导人。</p>\n\n<p>你在过去做的每件事都不会把你变成一个领导人。</p>\n\n<p>你在每个时刻都应该这么想：“我现在怎么能在生理上，情感上，心理上和精神上提升自己呢？”</p>\n\n<p>永远不要质疑失败。就按上面说的去做吧。</p>\n\n<p>总有一天你能回首过去并说：我能帮助谁呢？</p>\n\n<p>如果你有一个答案，那你就胜利了。干得漂亮。</p>\n\n<blockquote>\n<p>原文链接<a href=\"http://www.quora.com/What-makes-someone-fail-at-life\">Quora:What make someone fail at life?</a> \n原作者保留所有权利。</p>\n</blockquote>','2015-08-04 13:40:31'),(10,'Sounds Of Silence','<blockquote>\n<p>写代码找文档时有位博客主用一首英文歌的歌词作为示例。当时一读就被歌词震住了。在这里copy一下省的忘了。</p>\n</blockquote>\n\n<p><em>P. Simon, 1964</em></p>\n\n<p>Hello darkness, my old friend </p>\n\n<p>I\'ve come to talk with you again </p>\n\n<p>Because a vision softly creeping </p>\n\n<p>Left its seeds while I was sleeping </p>\n\n<p>And the vision that was planted in my brain </p>\n\n<p>Still remains </p>\n\n<p>Within the sound of silence</p>\n\n<p>In restless dreams I walked alone </p>\n\n<p>Narrow streets of cobblestone </p>\n\n<p>\'Neath the halo of a street lamp </p>\n\n<p>I turn my collar to the cold and damp </p>\n\n<p>When my eyes were stabbed by the flash of a neon light </p>\n\n<p>That split the night </p>\n\n<p>And touched the sound of silence</p>\n\n<p>And in the naked light I saw </p>\n\n<p>Ten thousand people maybe more </p>\n\n<p>People talking without speaking </p>\n\n<p>People hearing without listening </p>\n\n<p>People writing songs that voices never shared </p>\n\n<p>No one dared </p>\n\n<p>Disturb the sound of silence**</p>\n\n<p>\"Fools,\" said I, \"you do not know </p>\n\n<p>Silence like a cancer grows </p>\n\n<p>Hear my words that I might teach you </p>\n\n<p>Take my arms that I might reach you\" </p>\n\n<p>But my words like silent raindrops fell </p>\n\n<p>And echoed in the wells of silence</p>\n\n<p>And the people bowed and prayed </p>\n\n<p>To the neon god they made </p>\n\n<p>And the sign flashed out its warning </p>\n\n<p>In the words that it was forming </p>\n\n<p>And the sign said \"The words of the prophets are written on the subway walls </p>\n\n<p>And tenement halls </p>\n\n<p>And whispered in the sound of silence</p>','2015-08-05 08:55:43'),(11,'unicode 与 utf8 在 Python下的处理','<p><code>unicode</code>是一种字符集，它为所有语言的字符对应了唯一的二进制表示；\n<code>utf-8</code>是一种<code>unicode</code>编码方式，它将字符对应的<code>unicode</code>码以尽可能少的二进制来进行储存。</p>\n\n<p>Py中，如果不特殊说明都是以ascii编码的，字符串<code>\\\'abc\\u041b</code>会被解释成<strong>使用转义字符的字符串字面值</strong>，<code>\\\'</code>以<code>’</code>显示，<code>\\u</code>会被改为<code>\\\\u</code>以输出<code>\\u</code>。这样可以最忠实地保留原有信息。</p>\n\n<p>Py中所有的字符串都默认以转义字符来解释。但可以通过如果在前面加入<code>r</code>,即<code>r\\\'abc\\u041b</code>，我们可以理解成<strong>不使用转义字符的字面值</strong>，但事实上还是在使用转义，不过是将<code>\\</code>改为<code>\\\\</code>来输出一个<code>\\</code>罢了。</p>\n\n<p>在字符串前面加入<code>u</code>会要求该字符串以<code>unicode</code>的形式编码。但如果字符串<code>str</code>已经存在，并且其中包含<code>\\u</code>呢？我们要用<code>str.decode(\"unicode-escape\")</code>来达到在前面加<code>u</code>一样的效果。</p>\n\n<p>但如果要向文件中读写<code>unicode</code>，我们要指定编码方式，而最常用的就是<code>utf8</code>.向文件写入<code>str.encode(\"utf8\")</code>即可。</p>\n\n<p>妈的学了这么多还是不会将Scrapy的数据转成中文。。。</p>','2015-08-11 01:44:52'),(12,'使用 apache 部署 Django 项目','*编写`Django`应用程序的时候可以将所有静态文件放在`Django`应用目录下（或者写完后使用`manager.py collectstatic`来收集静态文件到应用目录下）*\r\n\r\n这里要讲的是通过`apache2`与`mod-wsgi`来完成部署：\r\n\r\n0. 修改应用下默认生成的`wsgi.py`(`newBlog`随机应变～):\r\n\r\n```\r\nimport os\r\nimport sys\r\nfrom os.path import dirname, abspath\r\n\r\nPROJECT_DIR = dirname(dirname(abspath(__file__)))\r\nsys.path.insert(0, PROJECT_DIR)\r\nos.environ[\"DJANGO_SETTINGS_MODULE\"] = \'newBlog.settings\'\r\n\r\nfrom django.core.wsgi import get_wsgi_application\r\napplication = get_wsgi_application()\r\n```\r\n\r\n1. 安装所需要的文件，不妨把能装的都装上:) `apt-get install mysql-server mysql-client apache2 python-mysqldb libapache2-mod-wsgi`\r\n2.  在`/etc/apache2/sites-available`处新建配置文件，我的就叫`newBlog.conf`.\r\n3. 在其中加入以下内容（`/home/lw/newBlog/`也需要随机应变.端口为80就不需要在`/etc/apache2/ports.conf`中加入`Listen 80`，这是默认的~）：\r\n\r\n```\r\n    <VirtualHost *:80>\r\n\r\n    ServerName newblog.com\r\n    DocumentRoot /home/lw/newBlog/\r\n\r\n    Alias /static/ /home/lw/newBlog/static/\r\n    <Directory /home/lw/newBlog/static>\r\n	Require all granted\r\n    </Directory>\r\n\r\n    <Directory /home/lw/newBlog>\r\n	Require all granted\r\n    </Directory>\r\n\r\n    WSGIScriptAlias / /home/lw/newBlog/newBlog/wsgi.py\r\n    </VirtualHost>\r\n```\r\n\r\n4. 使网站生效：`a2ensite newBlog.conf`\r\n5. 重启`apache2`： `/etc/init.d/apache2 restart`\r\n\r\n这时打开`127.0.0.1`就可以看到网站啦，自此博客部署就算成功了。\r\n另：`apache2.4`版本上使用`Require all granted`','2015-08-15 01:38:58');
/*!40000 ALTER TABLE `article_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_article_tags`
--

DROP TABLE IF EXISTS `article_article_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_article_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `article_id` (`article_id`,`tag_id`),
  KEY `article_article_tags_30525a19` (`article_id`),
  KEY `article_article_tags_3747b463` (`tag_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_article_tags`
--

LOCK TABLES `article_article_tags` WRITE;
/*!40000 ALTER TABLE `article_article_tags` DISABLE KEYS */;
INSERT INTO `article_article_tags` VALUES (15,4,4),(6,3,3),(14,4,3),(16,5,5),(17,6,5),(18,7,6),(19,8,5),(28,9,7),(26,10,3),(27,11,5),(53,12,5);
/*!40000 ALTER TABLE `article_article_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
INSERT INTO `article_tag` VALUES (4,'哈工大'),(3,'生活'),(5,'学习'),(6,'感悟和计划'),(7,'翻译');
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add tag',8,'add_tag'),(23,'Can change tag',8,'change_tag'),(24,'Can delete tag',8,'delete_tag'),(25,'Can add article',9,'add_article'),(26,'Can change article',9,'change_article'),(27,'Can delete article',9,'delete_article'),(28,'Can add migration history',10,'add_migrationhistory'),(29,'Can change migration history',10,'change_migrationhistory'),(30,'Can delete migration history',10,'delete_migrationhistory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'admin','','','cui@hellolw.com','pbkdf2_sha256$10000$UdFViQnVTsW7$IDVGVgA3IZMIihU2AHn7KuWh2Od0N4sob4doe0UmCO4=',1,1,1,'2015-08-14 07:41:12','2015-07-15 06:47:57');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_403f60f` (`user_id`),
  KEY `django_admin_log_1bb8f392` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2015-07-15 07:01:04',1,8,'1','Life',1,''),(2,'2015-07-15 07:01:07',1,9,'1','First',1,''),(3,'2015-07-15 07:01:49',1,8,'2','code',1,''),(4,'2015-07-15 07:01:56',1,9,'2','second',1,''),(5,'2015-07-15 07:02:34',1,9,'2','second',3,''),(6,'2015-07-15 07:02:34',1,9,'1','First',3,''),(7,'2015-07-15 07:02:50',1,8,'1','Life',3,''),(8,'2015-07-15 07:02:50',1,8,'2','code',3,''),(9,'2015-07-15 15:50:37',1,8,'3','生活',1,''),(10,'2015-07-15 15:51:00',1,9,'3','诸事小记',1,''),(11,'2015-07-15 15:52:03',1,9,'3','诸事小记',2,'Changed content.'),(12,'2015-07-15 16:06:35',1,9,'3','诸事小记',2,'Changed content.'),(13,'2015-07-16 03:53:31',1,9,'3','诸事小记',2,'Changed content.'),(14,'2015-07-16 12:01:36',1,9,'4','第二弹：诸事小记',1,''),(15,'2015-07-16 15:23:54',1,8,'4','哈工大',1,''),(16,'2015-07-16 15:24:00',1,9,'4','第二弹：诸事小记',2,'Changed tags.'),(17,'2015-07-16 15:26:52',1,9,'4','诸事小记：第二弹',2,'Changed title.'),(18,'2015-07-18 15:19:29',1,9,'4','诸事小记:第二弹',2,'Changed title.'),(19,'2015-07-18 15:20:06',1,9,'4','诸事小记II',2,'Changed title.'),(20,'2015-07-21 07:17:16',1,8,'5','学习',1,''),(21,'2015-07-21 07:17:27',1,9,'5','野蛮学习',1,''),(22,'2015-07-22 01:44:23',1,9,'6','近期的学习计划',1,''),(23,'2015-07-25 15:16:07',1,8,'6','感悟和计划',1,''),(24,'2015-07-25 15:16:22',1,9,'7','为什么要好好学习',1,''),(25,'2015-07-29 03:05:49',1,9,'8','Django south使用指南',1,''),(26,'2015-08-04 13:40:26',1,8,'7','翻译',1,''),(27,'2015-08-04 13:40:31',1,9,'9','是什么让人在生活中惨败？',1,''),(28,'2015-08-04 13:41:07',1,9,'9','是什么让人在生活中惨败',2,'Changed title.'),(29,'2015-08-05 08:55:43',1,9,'10','Sounds Of Silence',1,''),(30,'2015-08-05 08:57:10',1,9,'10','Sounds Of Silence',2,'Changed content.'),(31,'2015-08-05 08:58:23',1,9,'10','Sounds Of Silence',2,'Changed content.'),(32,'2015-08-05 08:59:22',1,9,'10','Sounds Of Silence',2,'Changed content.'),(33,'2015-08-05 08:59:45',1,9,'10','Sounds Of Silence',2,'Changed content.'),(34,'2015-08-11 01:44:52',1,9,'11','unicode 与 utf8 在 Python下的处理',1,''),(35,'2015-08-14 07:42:30',1,9,'9','是什么让人在生活中惨败?',2,'Changed title.'),(36,'2015-08-15 01:38:58',1,9,'12','使用 apache 部署 Django 项目',1,''),(37,'2015-08-15 01:39:37',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(38,'2015-08-15 01:40:25',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(39,'2015-08-15 01:40:46',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(40,'2015-08-15 01:41:12',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(41,'2015-08-15 01:41:43',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(42,'2015-08-15 01:42:01',1,9,'12','使用 apache 部署 Django 项目',2,'No fields changed.'),(43,'2015-08-15 01:42:19',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(44,'2015-08-15 01:42:42',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(45,'2015-08-15 01:42:54',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(46,'2015-08-15 01:43:26',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(47,'2015-08-15 01:44:03',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(48,'2015-08-15 01:45:23',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(49,'2015-08-15 01:46:13',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(50,'2015-08-15 01:46:36',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(51,'2015-08-15 01:47:01',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(52,'2015-08-15 01:47:11',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(53,'2015-08-15 01:48:30',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(54,'2015-08-15 01:48:59',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(55,'2015-08-15 01:49:20',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(56,'2015-08-15 01:49:55',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(57,'2015-08-15 01:50:17',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(58,'2015-08-15 01:51:29',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(59,'2015-08-15 01:51:39',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.'),(60,'2015-08-15 01:53:01',1,9,'12','使用 apache 部署 Django 项目',2,'Changed content.');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'tag','article','tag'),(9,'article','article','article'),(10,'migration history','south','migrationhistory');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_3da3d3d8` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('58d5f36b06350bfd148d9e47df43f9e7','MTU3NDExM2JlZTE4MTBiZDNhNzNlNTAxZDQzNDg3YjRiY2QxN2UyZDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2015-08-05 11:13:11'),('89500ec410be023f552f327eeade4164','MTU3NDExM2JlZTE4MTBiZDNhNzNlNTAxZDQzNDg3YjRiY2QxN2UyZDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2015-07-29 07:00:28'),('f88f2fe0534c9648c265f2ca06a8e712','NDUwZjg4MDM0OTQ4ZGZiOTlmODZlYTEyMjM2YjI2YmEwYTdlN2FlMzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-07-29 07:00:36'),('141c7287fdd73deaa7835a1722f90131','NDUwZjg4MDM0OTQ4ZGZiOTlmODZlYTEyMjM2YjI2YmEwYTdlN2FlMzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-08-03 07:48:00'),('aaedc9e7352f501101e99dd7f7e44f78','MTU3NDExM2JlZTE4MTBiZDNhNzNlNTAxZDQzNDg3YjRiY2QxN2UyZDqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2015-08-18 13:39:20'),('e38d089c4bc3d20e2c65935b6ee7e03d','NDUwZjg4MDM0OTQ4ZGZiOTlmODZlYTEyMjM2YjI2YmEwYTdlN2FlMzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-08-08 15:15:29'),('bc8a219c100b995f87a29bf4b3c48c63','NDUwZjg4MDM0OTQ4ZGZiOTlmODZlYTEyMjM2YjI2YmEwYTdlN2FlMzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-08-11 14:11:07'),('0fb4668131ec01273fdb2efce04c79fe','NDUwZjg4MDM0OTQ4ZGZiOTlmODZlYTEyMjM2YjI2YmEwYTdlN2FlMzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-08-18 13:39:41'),('a0a2df664c0466e987039e4796701051','NDUwZjg4MDM0OTQ4ZGZiOTlmODZlYTEyMjM2YjI2YmEwYTdlN2FlMzqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-08-25 01:43:51'),('8171f91a3303c578f12a70bf1d9de408','NDk5ZDU0MzI5ZWRiZGQxMWIzOTVmYTlhOWQzY2E4MWFkYzZkYzZlZDqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2015-08-28 07:41:12');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'article','0001_initial','2015-08-14 07:03:00'),(2,'article','0002_auto__add_tag__add_article','2015-08-14 07:03:01');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-15  9:54:20
