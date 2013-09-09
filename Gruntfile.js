module.exports = function(grunt) {

  //command availability
  grunt.loadNpmTasks('grunt-contrib-uglify');

  //==========================================================

  //outputted scripts dir
  scripts = 'out/scripts/';
  
  //section-common script assembly
  sections = {
    plans: [
      scripts+'pages/all.js',
      scripts+'pages/plans/all.js'],
    requirements: [
      scripts+'pages/all.js',
      scripts+'pages/requirements/all.js'],
    concepts: [
      scripts+'pages/all.js',
      scripts+'pages/concepts/all.js'],
    status: [
      scripts+'pages/all.js',
      scripts+'pages/status/all.js']};

  //core uglify configuration object
  config = {
    uglify: {
      my_target: {
        files: {}}}};
  //alias
  files = config.uglify.my_target.files;

  //==========================================================

  //app 
  files[scripts + 'app.js'] = [
    scripts+'vendor/*',
    scripts+'app/namespaces.js',
    scripts+'util/*',
    scripts+'views/common/*',
    scripts+'app/init.js'];
 
  //plans pages
  files[scripts + 'pages-plans-productplan.js'] = [
    scripts+'pages/plans/product-plan.js'].concat(sections.plans);
  files[scripts + 'pages-plans-roadmap.js'] = [
    scripts+'pages/plans/roadmap.js'].concat(sections.plans);
  files[scripts + 'pages-plans-currenttheme.js'] = [
    scripts+'pages/plans/current-theme.js'].concat(sections.plans);
  files[scripts + 'pages-plans-currentiteration.js'] = [
    scripts+'pages/plans/current-iteration.js'].concat(sections.plans);

  //requirements pages
  files[scripts + 'pages-requirements-featureupdatebacklog.js'] = [
    scripts+'pages/requirements/feature-update-backlog.js'].concat(sections.requirements);
  files[scripts + 'pages-requirements-jank.js'] = [
    scripts+'pages/requirements/jank.js'].concat(sections.requirements);
  files[scripts + 'pages-requirements-newfeaturebacklog.js'] = [
    scripts+'pages/requirements/new-feature-backlog.js'].concat(sections.requirements);
  files[scripts + 'pages-requirements-nfrmagazine.js'] = [
    scripts+'pages/requirements/nfr-magazine.js'].concat(sections.requirements);

  //concepts
  files[scripts + 'pages-concepts-contestimprovements.js'] = [
    scripts+'pages/concepts/contest-improvements.js'].concat(sections.concepts);
    
  //status pages
  files[scripts + 'pages-status-meetingminutes.js'] = [
    scripts+'pages/status/meeting-minutes.js'].concat(sections.status);
  files[scripts + 'pages-status-ontap.js'] = [
    scripts+'pages/status/on-tap.js'].concat(sections.status);
  files[scripts + 'pages-status-weeklyreport.js'] = [
    scripts+'pages/status/weekly-report.js'].concat(sections.status);

  //==========================================================

  //Project configuration
  grunt.initConfig(config);

};
