<%@page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<%@include file="include/head.jsp"%>
</head>

<body>
	<!-- <nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">微数·报告</a>
			</div>
			<div id="navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">首页</a></li>
					<li><a href="#about">分析</a></li>
					<li><a href="#contact">配置</a></li>
				</ul>
			</div>
			/.nav-collapse
		</div>
	</nav> -->

	<header class="navbar navbar-static-top bs-docs-nav" id="top">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button"
					data-toggle="collapse" data-target="#bs-navbar"
					aria-controls="bs-navbar" aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a href="../" class="navbar-brand">
					<img alt="" src="assets/img/logo-2c.png" height="18x">
				</a>
			</div>
			<nav id="bs-navbar" class="collapse navbar-collapse">
				<ul class="nav navbar-nav">
					<li><a href="../getting-started/"
						onclick="_hmt.push(['_trackEvent', 'docv3-navbar', 'click', 'V3导航-起步'])">概览</a>
					</li>
					<li><a href="#">数据分析</a></li>
					<li><a href="#">参数配置</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"target="_blank">使用帮助</a></li>
				</ul>
			</nav>
		</div>
	</header>

	<div class="bs-docs-header" id="content" tabindex="-1">
		<div class="container">
			<h1>全局 CSS 样式</h1>
			<p>设置全局 CSS 样式；基本的 HTML 元素均可以通过 class 设置样式并得到增强效果；还有先进的栅格系统。</p>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-9" role="main">
				<h2 id="tables-condensed">
					<a class="anchorjs-link " href="#tables-condensed"
						aria-label="Anchor link for: tables condensed"
						data-anchorjs-icon=""
						style="font-family: anchorjs-icons; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-variant-east-asian: normal; font-variant-position: normal; font-weight: normal; line-height: inherit; position: absolute; margin-left: -1em; padding-right: 0.5em;"></a>紧缩表格
				</h2>
				<p>
					通过添加
					<code>.table-condensed</code>
					类可以让表格更加紧凑，单元格中的内补（padding）均会减半。
				</p>
				<div class="bs-example" data-example-id="condensed-table">
					<table class="table table-condensed">
						<thead>
							<tr>
								<th>#</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Username</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>Mark</td>
								<td>Otto</td>
								<td>@mdo</td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>Jacob</td>
								<td>Thornton</td>
								<td>@fat</td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td colspan="2">Larry the Bird</td>
								<td>@twitter</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="col-md-3" role="complementary">
				<nav
					class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix-top">
					<ul class="nav bs-docs-sidenav">

						<li><a href="#overview">概览</a>
							<ul class="nav">
								<li><a href="#overview-doctype">HTML5 文档类型</a></li>
								<li><a href="#overview-mobile">移动设备优先</a></li>
								<li><a href="#overview-type-links">排版与链接</a></li>
								<li><a href="#overview-normalize">Normalize.css</a></li>
								<li><a href="#overview-container">布局容器</a></li>
							</ul></li>
						<li><a href="#grid">栅格系统</a>
							<ul class="nav">
								<li><a href="#grid-intro">简介</a></li>
								<li><a href="#grid-media-queries">媒体查询</a></li>
								<li><a href="#grid-options">栅格参数</a></li>
								<li><a href="#grid-example-basic">实例：从堆叠到水平排列</a></li>
								<li><a href="#grid-example-fluid">实例：流式布局容器</a></li>
								<li><a href="#grid-example-mixed">实例：移动设备和桌面屏幕</a></li>
								<li><a href="#grid-example-mixed-complete">实例：手机、平板、桌面</a></li>
								<li><a href="#grid-example-wrapping">实例：多余的列（column）将另起一行排列</a></li>
								<li><a href="#grid-responsive-resets">Responsive column
										resets</a></li>
								<li><a href="#grid-offsetting">列偏移</a></li>
								<li><a href="#grid-nesting">嵌套列</a></li>
								<li><a href="#grid-column-ordering">列排序</a></li>
								<li><a href="#grid-less">Less mixin 和变量</a></li>
							</ul></li>
						<li><a href="#type">排版</a>
							<ul class="nav">
								<li><a href="#type-headings">标题</a></li>
								<li><a href="#type-body-copy">页面主体</a></li>
								<li><a href="#type-inline-text">内联文本元素</a></li>
								<li><a href="#type-alignment">对齐</a></li>
								<li><a href="#type-transformation">改变大小写</a></li>
								<li><a href="#type-abbreviations">缩略语</a></li>
								<li><a href="#type-addresses">地址</a></li>
								<li><a href="#type-blockquotes">引用</a></li>
								<li><a href="#type-lists">列表</a></li>
							</ul></li>
						<li><a href="#code">代码</a>
							<ul class="nav">
								<li><a href="#code-inline">内联代码</a></li>
								<li><a href="#code-user-input">用户输入</a></li>
								<li><a href="#code-block">基本代码块</a></li>
								<li><a href="#code-variables">变量</a></li>
								<li><a href="#code-sample-output">程序输出</a></li>
							</ul></li>
						<li><a href="#tables">表格</a>
							<ul class="nav">
								<li><a href="#tables-example">基本实例</a></li>
								<li><a href="#tables-striped">条纹状表格</a></li>
								<li><a href="#tables-bordered">带边框的表格</a></li>
								<li><a href="#tables-hover-rows">鼠标悬停</a></li>
								<li><a href="#tables-condensed">紧缩表格</a></li>
								<li><a href="#tables-contextual-classes">状态类</a></li>
								<li><a href="#tables-responsive">响应式表格</a></li>
							</ul></li>
						<li><a href="#forms">表单</a>
							<ul class="nav">
								<li><a href="#forms-example">基本实例</a></li>
								<li><a href="#forms-inline">内联表单</a></li>
								<li><a href="#forms-horizontal">水平排列的表单</a></li>
								<li><a href="#forms-controls">被支持的控件</a></li>
								<li><a href="#forms-controls-static">静态控件</a></li>
								<li><a href="#forms-control-focus">焦点状态</a></li>
								<li><a href="#forms-control-disabled">禁用状态</a></li>
								<li><a href="#forms-control-readonly">只读状态</a></li>
								<li><a href="#forms-help-text">Help text</a></li>
								<li><a href="#forms-control-validation">校验状态</a></li>
								<li><a href="#forms-control-sizes">控件尺寸</a></li>
							</ul></li>
						<li><a href="#buttons">按钮</a>
							<ul class="nav">
								<li><a href="#buttons-tags">可作为按钮使用的标签或元素</a></li>
								<li><a href="#buttons-options">预定义样式</a></li>
								<li><a href="#buttons-sizes">尺寸</a></li>
								<li><a href="#buttons-active">激活状态</a></li>
								<li><a href="#buttons-disabled">禁用状态</a></li>
							</ul></li>
						<li><a href="#images">图片</a>
							<ul class="nav">
								<li><a href="#images-responsive">响应式图片</a></li>
								<li><a href="#images-shapes">图片形状</a></li>
							</ul></li>
						<li><a href="#helper-classes">辅助类</a>
							<ul class="nav">
								<li><a href="#helper-classes-colors">情境文本颜色</a></li>
								<li><a href="#helper-classes-backgrounds">情境背景色</a></li>
								<li><a href="#helper-classes-close">关闭按钮</a></li>
								<li><a href="#helper-classes-carets">三角符号</a></li>
								<li><a href="#helper-classes-floats">快速浮动</a></li>
								<li><a href="#helper-classes-center">让内容块居中</a></li>
								<li><a href="#helper-classes-clearfix">清除浮动</a></li>
								<li><a href="#helper-classes-show-hide">显示或隐藏内容</a></li>
								<li><a href="#helper-classes-screen-readers">屏幕阅读器和键盘导航</a></li>
								<li><a href="#helper-classes-image-replacement">图片替换</a></li>
							</ul></li>
						<li><a href="#responsive-utilities">响应式工具</a>
							<ul class="nav">
								<li><a href="#responsive-utilities-classes">可用的类</a></li>
								<li><a href="#responsive-utilities-print">打印类</a></li>
								<li><a href="#responsive-utilities-tests">测试用例</a></li>
							</ul></li>
						<li><a href="#less">使用 Less</a>
							<ul class="nav">
								<li><a href="#less-bootstrap">编译 Bootstrap</a></li>
								<li><a href="#less-variables">变量</a></li>
								<li><a href="#less-mixins-vendor">针对特定厂商的 mixin</a></li>
								<li><a href="#less-mixins-utility">工具 mixin</a></li>
							</ul></li>
						<li><a href="#sass">使用 Sass</a>
							<ul class="nav">
								<li><a href="#sass-contents">包含的内容</a></li>
								<li><a href="#sass-installation">安装</a></li>
							</ul></li>
					</ul>
					<a class="back-to-top" href="#top"> 返回顶部 </a> <a href="#"
						class="bs-docs-theme-toggle" role="button"> 主题预览 </a>

				</nav>
			</div>
		</div>
	</div>
	<!-- /.container -->

	<%@include file="include/foot.jsp"%>

</body>
</html>