module.exports = function(grunt) {

  //command availability
  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-clean');

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
    backlogs: [
      scripts+'pages/all.js',
      scripts+'pages/backlogs/all.js'],
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
        files: {}}},
    clean: [
      scripts + 'app',
      scripts + 'pages',
      scripts + 'util',
      scripts + 'vendor',
      scripts + 'views']};
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
  files[scripts + 'pages-requirements-nfrmagazine.js'] = [
    scripts+'pages/requirements/nfr-magazine.js'].concat(sections.requirements);

  //backlogs
  files[scripts + 'pages-backlogs-featureupdatebacklog.js'] = [
    scripts+'pages/backlogs/feature-update-backlog.js'].concat(sections.backlogs);
  files[scripts + 'pages-backlogs-jank.js'] = [
    scripts+'pages/backlogs/jank.js'].concat(sections.backlogs);
  files[scripts + 'pages-backlogs-newfeaturebacklog.js'] = [
    scripts+'pages/backlogs/new-feature-backlog.js'].concat(sections.backlogs);


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
  files[scripts + 'pages-status-retainerburndown.js'] = sections.status;
  files[scripts + 'pages-status-calendar.js'] = sections.status;

  //==========================================================

  //Project configuration
  grunt.initConfig(config);

};
