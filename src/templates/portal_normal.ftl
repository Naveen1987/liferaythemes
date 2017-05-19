<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>
</script>
<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header class="container-fluid-1280" id="banner" role="banner">
		<div class="row">
			<div class="navbar-header" id="heading">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="64" src="${site_logo}" />
				</a>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					${site_name}
					</span>
				</#if>

				<#if is_setup_complete>
					<button aria-controls="navigation" aria-expanded="false" class="collapsed navbar-toggle" data-target="#navigationCollapse" data-toggle="collapse" type="button">
						<span class="icon-bar"></span>

						<span class="icon-bar"></span>

						<span class="icon-bar"></span>
					</button>

					<div class="pull-right user-personal-bar">
						<@liferay.user_personal_bar />
					</div>
				</#if>
			</div>
			<!--<#include "${full_templates_path}/navigation.ftl" />-->
		</div>
		<br/>
		<!--My code start-->
		<div>
  <center>
  <section class="navigation">
  <div class="nav-container">

    <nav>

      <ul class="nav-list">
        <li>
          <a href="/web/internal-intranet">Welcome</a>
        </li>
       <!--This Unità Operative -->
        <li>
          <a href="#">Unità Operative</a>
          <ul class="nav-dropdown">
           <li><a  href="#">Farmacia OspedalieraIs</a></li>
      <li><a  href="#">Staff Sistemi Informativi</a></li>
      <li><a  href="#">Sviluppo e Formazione</a></li>
	  <li><a  href="#">Controllo di Gestione</a></li>
      <li><a  href="#">Ufficio Relazioni con il pubblico</a></li>
      <li><a  href="#">Servizio Risorse Umane</a></li>
	  <li><a  href="#">Ufficio Valutazione</a></li>
      <li><a  href="#">Flussi Informativi Sanitari</a></li>
      <li><a  href="#">Laboratorio Analisi Magenta</a></li>
	  <li><a  href="#">Servizio Acquisti e Appalti</a></li>
      <li><a  href="#">Servizio Dietietico</a></li>
      <li><a  href="#">Affari Generali e Legali</a></li>
	  <li><a  href="#">Comitato Scientifico</a></li>
          </ul>
        </li>
        <!--This is Procedure AO-->
        <li>
          <a href="#">Procedure AO</a>
          <ul class="nav-dropdown">
           <li><a  href="#">Ufficio Qualità e Accreditamento</a></li>
      <li><a  href="#">Farmacia</a></li>
      <li><a  href="#">SIECIO/CIO</a></li>
	  <li><a  href="#">SPP/MC</a></li>
	  <li><a  href="#">Direzioni Mediche</a></li>
	  <li><a  href="#">SITRA</a></li>
	  <li><a  href="#">Comitati/Gruppi di Miglioramento</a></li>
	  <li><a  href="#">Accrediatmento e Controlli</a></li>
	  <li><a  href="#">Cartella Clinica</a></li>
          </ul>
        </li>


      </ul>
    </nav>
  </div>
</section>

  </center>
</div>
		<!--Mycode end-->
	</header>

	<section class="container-fluid-1280" id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<footer class="container-fluid-1280" id="footer" role="contentinfo">
		<div class="row">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</div>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>
