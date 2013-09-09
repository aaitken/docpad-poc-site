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
      scripts+'pages/plans/all.js']};

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

  //==========================================================

  //Project configuration
  grunt.initConfig(config);

};
