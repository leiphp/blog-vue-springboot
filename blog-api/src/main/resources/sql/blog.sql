/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-08-13 19:07:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for me_article
-- ----------------------------
DROP TABLE IF EXISTS `me_article`;
CREATE TABLE `me_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_counts` int(11) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `summary` varchar(100) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `view_counts` int(11) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `body_id` bigint(20) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKndx2m69302cso79y66yxiju4h` (`author_id`),
  KEY `FKrd11pjsmueckfrh9gs7bc6374` (`body_id`),
  KEY `FKjrn3ua4xmiulp8raj7m9d2xk6` (`category_id`),
  CONSTRAINT `FKjrn3ua4xmiulp8raj7m9d2xk6` FOREIGN KEY (`category_id`) REFERENCES `me_category` (`id`),
  CONSTRAINT `FKndx2m69302cso79y66yxiju4h` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKrd11pjsmueckfrh9gs7bc6374` FOREIGN KEY (`body_id`) REFERENCES `me_article_body` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article
-- ----------------------------
INSERT INTO `me_article` VALUES ('1', '2', '2018-01-31 13:16:16', 'Vue构建前台页面过程1Vue构建前台页面过程2Vue构建前台页面过程3Vue构建前台页面过程4Vue构建前台页面过程5Vue构建前台页面过程6Vue构建前台页面过程7Vue构建前台页面过程8', 'Vue构建前台页面Vue构建前台页面Vue构建前台页面Vue构建前台页面', '54', '0', '1', '1', '1');
INSERT INTO `me_article` VALUES ('9', '0', '2018-02-01 14:37:23', 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。', 'Vue.js 是什么', '4', '0', '1', '20', '1');
INSERT INTO `me_article` VALUES ('10', '0', '2018-02-01 14:47:19', '本节将介绍如何在项目中使用 Element。', 'Element相关', '3', '0', '1', '21', '1');

-- ----------------------------
-- Table structure for me_article_body
-- ----------------------------
DROP TABLE IF EXISTS `me_article_body`;
CREATE TABLE `me_article_body` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `content_html` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article_body
-- ----------------------------
INSERT INTO `me_article_body` VALUES ('1', '## 2018-01-04\n\n```\n# 使用vue的Webpack模板生成脚手架\n```\n\n## 2018-01-05\n\n```\n# 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n```\n## 2018-01-07\n\n```\n# 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n```\n## 2018-01-08\n\n```\n# 使用组件-博客作者tab页 \n# 添加第三方图标\n```\n\n## 2018-01-09\n\n```\n# 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n```\n\n## 2018-01-10\n\n```\n# 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n```\n## 2018-01-11\n\n```\n# 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n```\n## 2018-01-12\n\n```\n# 文章详情页  内容  评论等\n\n```\n## 2018-01-13\n\n```\n## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n```\n## 2018-01-15\n\n``` \n# 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n```\n\n## 2018-01-15  2\n\n``` \n# 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n```\n\n## 2018-01-16\n\n``` \n# 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n```\n\n## 2018-01-24\n\n``` \n# 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n```\n\n## 2018-01-25\n\n``` \n# 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n```\n## 2018-01-26\n\n``` \n# 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n```\n\n## 2018-01-27\n\n``` \n# 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n```\n\n## 2018-01-28\n\n``` \n# 文章分类和标签详情\n\n```\n\n## 2018-01-29\n\n``` \n# 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n```\n## 2018-01-30\n\n``` \n# BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n```', '<h2>2018-01-04</h2>\n<pre><code class=\"lang-\"># 使用vue的Webpack模板生成脚手架\n</code></pre>\n<h2>2018-01-05</h2>\n<pre><code class=\"lang-\"># 引入ElementUI\n\n# babel-plugin-component自定义主题\n# 首页\n# 登陆页\n# 注册页面\n# 日志页\n</code></pre>\n<h2>2018-01-07</h2>\n<pre><code class=\"lang-\"># 调整底部栏始终固定在底部\n# 日志页 添加时间轴\n# 首页的文章列表\n</code></pre>\n<h2>2018-01-08</h2>\n<pre><code class=\"lang-\"># 使用组件-博客作者tab页 \n# 添加第三方图标\n</code></pre>\n<h2>2018-01-09</h2>\n<pre><code class=\"lang-\"># 调整顶部导航栏：激活文字颜色，click点击\n# 组件-最新文章tab页\n\n# 最新文章、最热文章使用相同组件\n# 底部栏设计\n# 页面与两边边距改为100\n</code></pre>\n<h2>2018-01-10</h2>\n<pre><code class=\"lang-\"># 写博客 引入mavonEditor编辑器\n# 顶部导航栏都放入一个Menu中\n# 写文章页面\n#　mavonEditor局部引入\n\n#　页面的中间区域固定宽度，自动居中\n# 发布和取消\n# 发布dialog\n\n</code></pre>\n<h2>2018-01-11</h2>\n<pre><code class=\"lang-\"># 文章组件用守卫来改变body背景色\n# 调整登陆和注册页面，使其居中\n\n#子页面调整根元素为div\n#文章详情页\n\n</code></pre>\n<h2>2018-01-12</h2>\n<pre><code class=\"lang-\"># 文章详情页  内容  评论等\n\n</code></pre>\n<h2>2018-01-13</h2>\n<pre><code class=\"lang-\">## 重新调整页面结构	\n#顶部和底部 抽成  BaseHeader BaseFooter 组件\n#BlogView为单独页，以前是Home的子路由\n\n</code></pre>\n<h2>2018-01-15</h2>\n<pre><code class=\"lang-\"># 文章分类去掉子级\n# 将首页的文章列表抽成 ArticleItem组件\n# 增加文章的评论展示\n# 增加文章分类、标签页\n\n</code></pre>\n<h2>2018-01-15  2</h2>\n<pre><code class=\"lang-\"># 回到顶部去掉过渡动画（影响顶部导航栏）\n# 顶部导航栏 增加登录后菜单\n# 首页增加 最热标签\n# 增加 文章分类 标签的详情页\n# 将文章详情页、 文章分类标签页 改为Home的子路由（以前单独页）\n# Home组件增加路由判断：更正导航栏的状态、条件显示底部栏\n\n</code></pre>\n<h2>2018-01-16</h2>\n<pre><code class=\"lang-\"># 将写文章的顶部Header合并到BaseHeader中\n# 图片都放到了static目录下\n\n</code></pre>\n<h2>2018-01-24</h2>\n<pre><code class=\"lang-\"># 将自定义的theme放到assets下\n# 加入axios\n# 加入vuex\n# 实现登录\n# 实现退出\n\n</code></pre>\n<h2>2018-01-25</h2>\n<pre><code class=\"lang-\"># 实现注册逻辑\n# 写文章功能实现\n# 写文章时支持插入图片\n\n</code></pre>\n<h2>2018-01-26</h2>\n<pre><code class=\"lang-\"># 引入lodash工具类\n# 优化写文章的工具栏：滚动时固定顶部\n# 写文章 后台获取文章分类和标签\n\n# 首页的文章列表\n\n</code></pre>\n<h2>2018-01-27</h2>\n<pre><code class=\"lang-\"># 修改首页文章列表的样式\n# 首页加载文章功能\n# 文章查看功能\n# 文章分类和标签功能列表\n\n</code></pre>\n<h2>2018-01-28</h2>\n<pre><code class=\"lang-\"># 文章分类和标签详情\n\n</code></pre>\n<h2>2018-01-29</h2>\n<pre><code class=\"lang-\"># 文章分类和标签的文章数\n# 首页最热文章\n# 首页最新文章\n# 首页最热标签\n\n</code></pre>\n<h2>2018-01-30</h2>\n<pre><code class=\"lang-\"># BaseHeader放回views中\n# 修改Axios后置拦截，全局处理错误\n# 将登录 退出 和头像 放到一起\n\n</code></pre>\n');
INSERT INTO `me_article_body` VALUES ('20', 'Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。\n\n如果你想在深入学习 Vue 之前对它有更多了解，我们制作了一个视频，带您了解其核心概念和一个示例工程。\n如果你已经是有经验的前端开发者，想知道 Vue 与其它库/框架有哪些区别，请查看对比其它框架。\n\n# 起步\n\n> 官方指南假设你已了解关于 HTML、CSS 和 JavaScript 的中级知识。如果你刚开始学习前端开发，将框架作为你的第一步可能不是最好的主意——掌握好基础知识再来吧！之前有其它框架的使用经验会有帮助，但这不是必需的。\n\n尝试 Vue.js 最简单的方法是使用 JSFiddle 上的 Hello World 例子。你可以在浏览器新标签页中打开它，跟着例子学习一些基础用法。或者你也可以创建一个 .html 文件，然后通过如下方式引入 Vue：\n\n```javascript\n<script src=\"https://cdn.jsdelivr.net/npm/vue\"></script>\n\n```\n安装教程给出了更多安装 Vue 的方式。请注意我们不推荐新手直接使用 vue-cli，尤其是在你还不熟悉基于 Node.js 的构建工具时。\n\n# 声明式渲染\nVue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统：\n```javascript\n<div id=\"app\">\n  {{ message }}\n</div>\n\n```\n```javascript\nvar app = new Vue({\n  el: \'#app\',\n  data: {\n    message: \'Hello Vue!\'\n  }\n})\n\n```\n我们已经成功创建了第一个 Vue 应用！看起来这跟渲染一个字符串模板非常类似，但是 Vue 在背后做了大量工作。现在数据和 DOM 已经被建立了关联，所有东西都是响应式的。我们要怎么确认呢？打开你的浏览器的 JavaScript 控制台 (就在这个页面打开)，并修改 app.message 的值，你将看到上例相应地更新。\n\n除了文本插值，我们还可以像这样来绑定元素特性：\n\n\n\n\n\n\n', '<p>Vue (读音 /vjuː/，类似于 view) 是一套用于构建用户界面的渐进式框架。与其它大型框架不同的是，Vue 被设计为可以自底向上逐层应用。Vue 的核心库只关注视图层，不仅易于上手，还便于与第三方库或既有项目整合。另一方面，当与现代化的工具链以及各种支持类库结合使用时，Vue 也完全能够为复杂的单页应用提供驱动。</p>\n<p>如果你想在深入学习 Vue 之前对它有更多了解，我们制作了一个视频，带您了解其核心概念和一个示例工程。<br />\n如果你已经是有经验的前端开发者，想知道 Vue 与其它库/框架有哪些区别，请查看对比其它框架。</p>\n<h1>起步</h1>\n<blockquote>\n<p>官方指南假设你已了解关于 HTML、CSS 和 JavaScript 的中级知识。如果你刚开始学习前端开发，将框架作为你的第一步可能不是最好的主意——掌握好基础知识再来吧！之前有其它框架的使用经验会有帮助，但这不是必需的。</p>\n</blockquote>\n<p>尝试 Vue.js 最简单的方法是使用 JSFiddle 上的 Hello World 例子。你可以在浏览器新标签页中打开它，跟着例子学习一些基础用法。或者你也可以创建一个 .html 文件，然后通过如下方式引入 Vue：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\">&lt;script src=<span class=\"hljs-string\">\"https://cdn.jsdelivr.net/npm/vue\"</span>&gt;<span class=\"xml\"><span class=\"hljs-tag\">&lt;/<span class=\"hljs-name\">script</span>&gt;</span></span>\n\n</code></div></pre>\n<p>安装教程给出了更多安装 Vue 的方式。请注意我们不推荐新手直接使用 vue-cli，尤其是在你还不熟悉基于 Node.js 的构建工具时。</p>\n<h1>声明式渲染</h1>\n<p>Vue.js 的核心是一个允许采用简洁的模板语法来声明式地将数据渲染进 DOM 的系统：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\">&lt;div id=<span class=\"hljs-string\">\"app\"</span>&gt;\n  {{ message }}\n&lt;<span class=\"hljs-regexp\">/div&gt;\n\n</span></code></div></pre>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\"><span class=\"hljs-keyword\">var</span> app = <span class=\"hljs-keyword\">new</span> Vue({\n  <span class=\"hljs-attr\">el</span>: <span class=\"hljs-string\">\'#app\'</span>,\n  <span class=\"hljs-attr\">data</span>: {\n    <span class=\"hljs-attr\">message</span>: <span class=\"hljs-string\">\'Hello Vue!\'</span>\n  }\n})\n\n</code></div></pre>\n<p>我们已经成功创建了第一个 Vue 应用！看起来这跟渲染一个字符串模板非常类似，但是 Vue 在背后做了大量工作。现在数据和 DOM 已经被建立了关联，所有东西都是响应式的。我们要怎么确认呢？打开你的浏览器的 JavaScript 控制台 (就在这个页面打开)，并修改 app.message 的值，你将看到上例相应地更新。</p>\n<p>除了文本插值，我们还可以像这样来绑定元素特性：</p>\n');
INSERT INTO `me_article_body` VALUES ('21', '## 快速上手\n\n本节将介绍如何在项目中使用 Element。\n\n### 使用 Starter Kit\n我们提供了通用的项目模板，你可以直接使用。对于 Laravel 用户，我们也准备了相应的模板，同样可以直接下载使用。\n\n如果不希望使用我们提供的模板，请继续阅读。\n\n### 使用 vue-cli\n\n我们还可以使用 vue-cli 初始化项目，命令如下：\n\n```language\n> npm i -g vue-cli\n> mkdir my-project && cd my-project\n> vue init webpack\n> npm i && npm i element-ui\n```\n\n### 引入 Element\n你可以引入整个 Element，或是根据需要仅引入部分组件。我们先介绍如何引入完整的 Element。\n\n#### 完整引入\n在 main.js 中写入以下内容：\n```javascript\nimport Vue from \'vue\'\nimport ElementUI from \'element-ui\'\nimport \'element-ui/lib/theme-chalk/index.css\'\nimport App from \'./App.vue\'\n\nVue.use(ElementUI)\n\nnew Vue({\n  el: \'#app\',\n  render: h => h(App)\n})\n\n```\n以上代码便完成了 Element 的引入。需要注意的是，样式文件需要单独引入。\n\n#### 按需引入\n借助 babel-plugin-component，我们可以只引入需要的组件，以达到减小项目体积的目的。\n\n首先，安装 babel-plugin-component：\n\n', '<h2>快速上手</h2>\n<p>本节将介绍如何在项目中使用 Element。</p>\n<h3>使用 Starter Kit</h3>\n<p>我们提供了通用的项目模板，你可以直接使用。对于 Laravel 用户，我们也准备了相应的模板，同样可以直接下载使用。</p>\n<p>如果不希望使用我们提供的模板，请继续阅读。</p>\n<h3>使用 vue-cli</h3>\n<p>我们还可以使用 vue-cli 初始化项目，命令如下：</p>\n<pre><code class=\"lang-language\">&gt; npm i -g vue-cli\n&gt; mkdir my-project &amp;&amp; cd my-project\n&gt; vue init webpack\n&gt; npm i &amp;&amp; npm i element-ui\n</code></pre>\n<h3>引入 Element</h3>\n<p>你可以引入整个 Element，或是根据需要仅引入部分组件。我们先介绍如何引入完整的 Element。</p>\n<h4>完整引入</h4>\n<p>在 main.js 中写入以下内容：</p>\n<pre><div class=\"hljs\"><code class=\"lang-javascript\"><span class=\"hljs-keyword\">import</span> Vue <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'vue\'</span>\n<span class=\"hljs-keyword\">import</span> ElementUI <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'element-ui\'</span>\n<span class=\"hljs-keyword\">import</span> <span class=\"hljs-string\">\'element-ui/lib/theme-chalk/index.css\'</span>\n<span class=\"hljs-keyword\">import</span> App <span class=\"hljs-keyword\">from</span> <span class=\"hljs-string\">\'./App.vue\'</span>\n\nVue.use(ElementUI)\n\n<span class=\"hljs-keyword\">new</span> Vue({\n  <span class=\"hljs-attr\">el</span>: <span class=\"hljs-string\">\'#app\'</span>,\n  <span class=\"hljs-attr\">render</span>: <span class=\"hljs-function\"><span class=\"hljs-params\">h</span> =&gt;</span> h(App)\n})\n\n</code></div></pre>\n<p>以上代码便完成了 Element 的引入。需要注意的是，样式文件需要单独引入。</p>\n<h4>按需引入</h4>\n<p>借助 babel-plugin-component，我们可以只引入需要的组件，以达到减小项目体积的目的。</p>\n<p>首先，安装 babel-plugin-component：</p>\n');

-- ----------------------------
-- Table structure for me_article_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_article_tag`;
CREATE TABLE `me_article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  KEY `FK2s65pu9coxh7w16s8jycih79w` (`tag_id`),
  KEY `FKsmysra6pt3ehcvts18q2h4409` (`article_id`),
  CONSTRAINT `FK2s65pu9coxh7w16s8jycih79w` FOREIGN KEY (`tag_id`) REFERENCES `me_tag` (`id`),
  CONSTRAINT `FKsmysra6pt3ehcvts18q2h4409` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_article_tag
-- ----------------------------
INSERT INTO `me_article_tag` VALUES ('1', '7');
INSERT INTO `me_article_tag` VALUES ('1', '5');
INSERT INTO `me_article_tag` VALUES ('1', '8');
INSERT INTO `me_article_tag` VALUES ('9', '7');
INSERT INTO `me_article_tag` VALUES ('10', '7');
INSERT INTO `me_article_tag` VALUES ('10', '8');
INSERT INTO `me_article_tag` VALUES ('10', '5');
INSERT INTO `me_article_tag` VALUES ('10', '6');

-- ----------------------------
-- Table structure for me_category
-- ----------------------------
DROP TABLE IF EXISTS `me_category`;
CREATE TABLE `me_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `categoryname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_category
-- ----------------------------
INSERT INTO `me_category` VALUES ('1', '/category/front.png', '前端', null);
INSERT INTO `me_category` VALUES ('2', '/category/back.png', '后端', null);
INSERT INTO `me_category` VALUES ('3', '/category/lift.jpg', '生活', null);
INSERT INTO `me_category` VALUES ('4', '/category/database.png', '数据库', null);
INSERT INTO `me_category` VALUES ('5', '/category/language.png', '编程语言', null);

-- ----------------------------
-- Table structure for me_comment
-- ----------------------------
DROP TABLE IF EXISTS `me_comment`;
CREATE TABLE `me_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `author_id` bigint(20) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `to_uid` bigint(20) DEFAULT NULL,
  `level` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKecq0fuo9k0lnmea6r01vfhiok` (`article_id`),
  KEY `FKkvuyh6ih7dt1rfqhwsjomsa6i` (`author_id`),
  KEY `FKaecafrcorkhyyp1luffinsfqs` (`parent_id`),
  KEY `FK73dgr23lbs3ebex5qvqyku308` (`to_uid`),
  CONSTRAINT `FK73dgr23lbs3ebex5qvqyku308` FOREIGN KEY (`to_uid`) REFERENCES `sys_user` (`id`),
  CONSTRAINT `FKaecafrcorkhyyp1luffinsfqs` FOREIGN KEY (`parent_id`) REFERENCES `me_comment` (`id`),
  CONSTRAINT `FKecq0fuo9k0lnmea6r01vfhiok` FOREIGN KEY (`article_id`) REFERENCES `me_article` (`id`),
  CONSTRAINT `FKkvuyh6ih7dt1rfqhwsjomsa6i` FOREIGN KEY (`author_id`) REFERENCES `sys_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_comment
-- ----------------------------
INSERT INTO `me_comment` VALUES ('1', '你辛苦了', '2018-01-31 13:29:01', '1', '15', '1', '15', '0');
INSERT INTO `me_comment` VALUES ('2', '啦啦啦', '2018-01-31 16:12:31', '1', '1', '2', '1', '0');

-- ----------------------------
-- Table structure for me_tag
-- ----------------------------
DROP TABLE IF EXISTS `me_tag`;
CREATE TABLE `me_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `tagname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of me_tag
-- ----------------------------
INSERT INTO `me_tag` VALUES ('1', '/tag/java.png', 'Java');
INSERT INTO `me_tag` VALUES ('2', '/tag/', 'Spring');
INSERT INTO `me_tag` VALUES ('3', '/tag/hibernate.svg', 'Hibernate');
INSERT INTO `me_tag` VALUES ('4', '/tag/maven.png', 'Maven');
INSERT INTO `me_tag` VALUES ('5', '/tag/html.png', 'Html');
INSERT INTO `me_tag` VALUES ('6', '/tag/js.png', 'JavaScript');
INSERT INTO `me_tag` VALUES ('7', '/tag/vue.png', 'Vue');
INSERT INTO `me_tag` VALUES ('8', '/tag/css.png', 'Css');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_date` datetime DEFAULT NULL,
  `ip` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `method` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `module` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `operation` varchar(25) COLLATE utf8_bin DEFAULT NULL,
  `params` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `userid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3094 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('2994', '2019-08-13 18:05:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '245', null);
INSERT INTO `sys_log` VALUES ('2995', '2019-08-13 18:05:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '250', null);
INSERT INTO `sys_log` VALUES ('2996', '2019-08-13 18:05:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '259', null);
INSERT INTO `sys_log` VALUES ('2997', '2019-08-13 18:05:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '247', null);
INSERT INTO `sys_log` VALUES ('2998', '2019-08-13 18:05:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('2999', '2019-08-13 18:05:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '9', null);
INSERT INTO `sys_log` VALUES ('3000', '2019-08-13 18:05:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3001', '2019-08-13 18:05:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3002', '2019-08-13 18:05:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3003', '2019-08-13 18:05:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3004', '2019-08-13 18:05:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3005', '2019-08-13 18:05:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3006', '2019-08-13 18:05:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3007', '2019-08-13 18:05:57', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3008', '2019-08-13 18:08:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3009', '2019-08-13 18:08:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3010', '2019-08-13 18:08:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '1', null);
INSERT INTO `sys_log` VALUES ('3011', '2019-08-13 18:08:49', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3012', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3013', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3014', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3015', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3016', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3017', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3018', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '0', null);
INSERT INTO `sys_log` VALUES ('3019', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3020', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3021', '2019-08-13 18:08:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3022', '2019-08-13 18:08:53', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.getArticleAndAddViews()', '文章', null, '根据id获取文章，添加阅读数', null, '66', null);
INSERT INTO `sys_log` VALUES ('3023', '2019-08-13 18:16:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3024', '2019-08-13 18:16:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3025', '2019-08-13 18:16:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3026', '2019-08-13 18:16:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3027', '2019-08-13 18:16:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '14', null);
INSERT INTO `sys_log` VALUES ('3028', '2019-08-13 18:16:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3029', '2019-08-13 18:16:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '0', null);
INSERT INTO `sys_log` VALUES ('3030', '2019-08-13 18:16:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3031', '2019-08-13 18:16:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3032', '2019-08-13 18:16:19', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3033', '2019-08-13 18:16:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3034', '2019-08-13 18:16:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3035', '2019-08-13 18:16:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3036', '2019-08-13 18:16:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3037', '2019-08-13 18:16:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3038', '2019-08-13 18:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3039', '2019-08-13 18:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listNewArticles()', '文章', null, '获取最新文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3040', '2019-08-13 18:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3041', '2019-08-13 18:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3042', '2019-08-13 18:16:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3043', '2019-08-13 18:22:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '17', null);
INSERT INTO `sys_log` VALUES ('3044', '2019-08-13 18:22:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '15', null);
INSERT INTO `sys_log` VALUES ('3045', '2019-08-13 18:22:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '5', null);
INSERT INTO `sys_log` VALUES ('3046', '2019-08-13 18:22:02', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '15', null);
INSERT INTO `sys_log` VALUES ('3047', '2019-08-13 18:23:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '1', null);
INSERT INTO `sys_log` VALUES ('3048', '2019-08-13 18:23:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3049', '2019-08-13 18:23:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '5', null);
INSERT INTO `sys_log` VALUES ('3050', '2019-08-13 18:23:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3051', '2019-08-13 18:35:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '261', null);
INSERT INTO `sys_log` VALUES ('3052', '2019-08-13 18:35:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '277', null);
INSERT INTO `sys_log` VALUES ('3053', '2019-08-13 18:35:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '258', null);
INSERT INTO `sys_log` VALUES ('3054', '2019-08-13 18:35:22', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '259', null);
INSERT INTO `sys_log` VALUES ('3055', '2019-08-13 18:47:06', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '157', null);
INSERT INTO `sys_log` VALUES ('3056', '2019-08-13 18:47:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '36', null);
INSERT INTO `sys_log` VALUES ('3057', '2019-08-13 18:47:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '41', null);
INSERT INTO `sys_log` VALUES ('3058', '2019-08-13 18:48:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3059', '2019-08-13 18:48:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '3', null);
INSERT INTO `sys_log` VALUES ('3060', '2019-08-13 18:48:58', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '4', null);
INSERT INTO `sys_log` VALUES ('3061', '2019-08-13 18:48:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '23', null);
INSERT INTO `sys_log` VALUES ('3062', '2019-08-13 18:48:59', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '24', null);
INSERT INTO `sys_log` VALUES ('3063', '2019-08-13 18:49:01', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3064', '2019-08-13 18:50:34', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3065', '2019-08-13 18:50:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '2', null);
INSERT INTO `sys_log` VALUES ('3066', '2019-08-13 18:50:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '3', null);
INSERT INTO `sys_log` VALUES ('3067', '2019-08-13 18:50:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3068', '2019-08-13 18:50:42', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3069', '2019-08-13 18:50:47', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3070', '2019-08-13 18:57:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listHotArticles()', '文章', null, '获取最热文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3071', '2019-08-13 18:57:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listHotTags()', '标签', null, '获取最热标签', null, '3', null);
INSERT INTO `sys_log` VALUES ('3072', '2019-08-13 18:57:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3073', '2019-08-13 18:57:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '2', null);
INSERT INTO `sys_log` VALUES ('3074', '2019-08-13 18:57:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3075', '2019-08-13 18:57:15', '0:0:0:0:0:0:0:1', 'com.shimh.controller.CategoryController.listCategorysDetail()', '文章分类', null, '获取所有文章分类，详细', null, '2', null);
INSERT INTO `sys_log` VALUES ('3076', '2019-08-13 18:57:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.TagController.listCategorysDetail()', '标签', null, '获取所有标签，详细', null, '3', null);
INSERT INTO `sys_log` VALUES ('3077', '2019-08-13 18:57:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArchives()', '文章', null, '获取文章归档日期', null, '2', null);
INSERT INTO `sys_log` VALUES ('3078', '2019-08-13 18:57:17', '0:0:0:0:0:0:0:1', 'com.shimh.controller.ArticleController.listArticles()', '文章', null, '获取所有文章', null, '1', null);
INSERT INTO `sys_log` VALUES ('3079', '2019-08-13 18:57:36', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '15', null);
INSERT INTO `sys_log` VALUES ('3080', '2019-08-13 18:57:40', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '1', null);
INSERT INTO `sys_log` VALUES ('3081', '2019-08-13 18:57:43', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '2', null);
INSERT INTO `sys_log` VALUES ('3082', '2019-08-13 18:59:20', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '8', null);
INSERT INTO `sys_log` VALUES ('3083', '2019-08-13 18:59:28', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3074', null);
INSERT INTO `sys_log` VALUES ('3084', '2019-08-13 18:59:38', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3055', null);
INSERT INTO `sys_log` VALUES ('3085', '2019-08-13 18:59:48', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3059', null);
INSERT INTO `sys_log` VALUES ('3086', '2019-08-13 19:00:03', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3045', null);
INSERT INTO `sys_log` VALUES ('3087', '2019-08-13 19:00:09', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '1', null);
INSERT INTO `sys_log` VALUES ('3088', '2019-08-13 19:00:12', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '2', null);
INSERT INTO `sys_log` VALUES ('3089', '2019-08-13 19:00:21', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3033', null);
INSERT INTO `sys_log` VALUES ('3090', '2019-08-13 19:00:51', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3025', null);
INSERT INTO `sys_log` VALUES ('3091', '2019-08-13 19:03:11', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3032', null);
INSERT INTO `sys_log` VALUES ('3092', '2019-08-13 19:03:16', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3036', null);
INSERT INTO `sys_log` VALUES ('3093', '2019-08-13 19:03:27', '0:0:0:0:0:0:0:1', 'com.shimh.controller.LoginController.login()', '登录', null, '登录', null, '3038', null);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `account` varchar(64) DEFAULT NULL,
  `admin` bit(1) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `mobile_phone_number` varchar(20) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_awpog86ljqwb89aqa1c5gvdrd` (`account`),
  UNIQUE KEY `UK_ahtq5ew3v0kt1n7hf1sgp7p8l` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'shimh', '', '/user/admin.png', '2018-01-22 17:14:49', '\0', '919431514@qq.com', null, '18396816462', '史明辉', 'c237910910ffa1f4827bf7fe1831ce43', 'e4153a582cbc45c3a199998b506dab28', 'normal');
INSERT INTO `sys_user` VALUES ('15', 'shimh2', '\0', '/user/user_6.png', null, '\0', null, null, null, 'shimh2', '0df7246bbb5b1bf138edd17f7b64b33b', '480e1a68cbc7e05ff49f39d2b5222d0b', 'normal');
