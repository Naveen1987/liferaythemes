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
          <a href="/group/internal-intranet/welcome">Welcome</a>
        </li>
       <!--This Unità Operative -->
        <li>
          <a style="cursor: pointer;">Unità Operative</a> 
  <ul class="nav-dropdown">
      <li><a  href="/group/farmacia_ospedalieraIs/welcome"  target="_blank">Farmacia OspedalieraIs</a></li>
      <li><a  href="/group/staff_sistemi_snformativi/welcome" target="_blank">Staff Sistemi Informativi</a></li>
      <li><a  href="/group/sviluppo_e_formazione/welcome" target="_blank">Sviluppo e Formazione</a></li>
	    <li><a  href="/group/controllo_di_gestione/welcome" target="_blank">Controllo di Gestione</a></li>
      <li><a  href="/group/ufficio_relazioni_con_il_pubblico/welcome" target="_blank">Ufficio Relazioni con il pubblico</a></li>
      <li><a  href="/group/servizio_risorse_umane/welcome" target="_blank">Servizio Risorse Umane</a></li>
	    <li><a  href="/group/ufficio_valutazione/welcome" target="_blank">Ufficio Valutazione</a></li>
      <li><a  href="/group/flussi_informativi_sanitari/welcome" target="_blank">Flussi Informativi Sanitari</a></li>
      <li><a  href="/group/laboratorio_analisi_magenta/welcome" target="_blank">Laboratorio Analisi Magenta</a></li>
	    <li><a  href="/group/servizio_acquisti_e_appalti/welcome" target="_blank">Servizio Acquisti e Appalti</a></li>
      <li><a  href="/group/servizio_dietietico/welcome" target="_blank">Servizio Dietietico</a></li>
      <li><a  href="/group/affari_generali_e_legali/welcome" target="_blank">Affari Generali e Legali</a></li>
	    <li><a  href="/group/comitato_scientifico/welcome" target="_blank">Comitato Scientifico</a></li>
          </ul>
        </li>
        <!--This is Procedure AO-->
        <li>
          <a style="cursor: pointer;">Procedure AO</a>
          <ul class="nav-dropdown">
  <li><a href="/group/ufficio_qualita_e_accreditamento/welcome" target="_blank">Ufficio Qualità e Accreditamento</a></li>
	<li><a href="/group/farmacia/welcome"  target="_blank">Farmacia</a></li>
	<li><a href="/group/siecio_cio/welcome" target="_blank">SIECIO/CIO</a></li>
	<li><a href="/group/spp_mc/welcome" target="_blank">SPP/MC</a></li>
	<li><a href="/group/direzioni_mediche/welcome" target="_blank">Direzioni Mediche</a></li>
	<li><a href="/group/sitra/welcome" target="_blank">SITRA</a></li>
	<li><a href="/group/hrm/welcome" target="_blank">HRM</a></li>
	<li><a href="/group/comitati_gruppi_di_miglioramento/welcome" target="_blank">Comitati/Gruppi di Miglioramento</a></li>
	<li><a href="/group/rapporti_e_dati/welcome" target="_blank">Rapporti e Dati</a></li>
	<li><a href="/group/accrediatmento_e_controlli/welcome" target="_blank">Accrediatmento e Controlli</a></li>
	<li><a href="/group/cartella_clinica/welcome" target="_blank">Cartella Clinica</a></li>


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
