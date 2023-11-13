# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{gherkin}
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Sassak", "Gregory Hnatiuk", "Aslak Helles\303\270y"]
  s.date = %q{2010-01-15}
  s.default_executable = %q{gherkin}
  s.description = %q{A fast Gherkin lexer/parser based on the Ragel State Machine Compiler.}
  s.email = %q{cukes@googlegroups.com}
  s.executables = ["gherkin"]
  s.extensions = ["ext/gherkin_lexer_ar/extconf.rb", "ext/gherkin_lexer_bg/extconf.rb", "ext/gherkin_lexer_cat/extconf.rb", "ext/gherkin_lexer_cs/extconf.rb", "ext/gherkin_lexer_cy/extconf.rb", "ext/gherkin_lexer_da/extconf.rb", "ext/gherkin_lexer_de/extconf.rb", "ext/gherkin_lexer_en/extconf.rb", "ext/gherkin_lexer_enau/extconf.rb", "ext/gherkin_lexer_enlol/extconf.rb", "ext/gherkin_lexer_entx/extconf.rb", "ext/gherkin_lexer_es/extconf.rb", "ext/gherkin_lexer_et/extconf.rb", "ext/gherkin_lexer_fi/extconf.rb", "ext/gherkin_lexer_fr/extconf.rb", "ext/gherkin_lexer_he/extconf.rb", "ext/gherkin_lexer_hr/extconf.rb", "ext/gherkin_lexer_hu/extconf.rb", "ext/gherkin_lexer_id/extconf.rb", "ext/gherkin_lexer_it/extconf.rb", "ext/gherkin_lexer_ja/extconf.rb", "ext/gherkin_lexer_ko/extconf.rb", "ext/gherkin_lexer_lt/extconf.rb", "ext/gherkin_lexer_lv/extconf.rb", "ext/gherkin_lexer_nl/extconf.rb", "ext/gherkin_lexer_no/extconf.rb", "ext/gherkin_lexer_pl/extconf.rb", "ext/gherkin_lexer_pt/extconf.rb", "ext/gherkin_lexer_ro/extconf.rb", "ext/gherkin_lexer_ro2/extconf.rb", "ext/gherkin_lexer_ru/extconf.rb", "ext/gherkin_lexer_se/extconf.rb", "ext/gherkin_lexer_sk/extconf.rb", "ext/gherkin_lexer_sr/extconf.rb", "ext/gherkin_lexer_srLatn/extconf.rb", "ext/gherkin_lexer_tr/extconf.rb", "ext/gherkin_lexer_uz/extconf.rb", "ext/gherkin_lexer_vi/extconf.rb", "ext/gherkin_lexer_zhCN/extconf.rb", "ext/gherkin_lexer_zhTW/extconf.rb"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     ".mailmap",
     "History.txt",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION.yml",
     "bin/gherkin",
     "cucumber.yml",
     "ext/gherkin_lexer_ar/gherkin_lexer_ar.c",
     "ext/gherkin_lexer_bg/gherkin_lexer_bg.c",
     "ext/gherkin_lexer_cat/gherkin_lexer_cat.c",
     "ext/gherkin_lexer_cs/gherkin_lexer_cs.c",
     "ext/gherkin_lexer_cy/gherkin_lexer_cy.c",
     "ext/gherkin_lexer_da/gherkin_lexer_da.c",
     "ext/gherkin_lexer_de/gherkin_lexer_de.c",
     "ext/gherkin_lexer_en/gherkin_lexer_en.c",
     "ext/gherkin_lexer_enau/gherkin_lexer_enau.c",
     "ext/gherkin_lexer_enlol/gherkin_lexer_enlol.c",
     "ext/gherkin_lexer_entx/gherkin_lexer_entx.c",
     "ext/gherkin_lexer_es/gherkin_lexer_es.c",
     "ext/gherkin_lexer_et/gherkin_lexer_et.c",
     "ext/gherkin_lexer_fi/gherkin_lexer_fi.c",
     "ext/gherkin_lexer_fr/gherkin_lexer_fr.c",
     "ext/gherkin_lexer_he/gherkin_lexer_he.c",
     "ext/gherkin_lexer_hr/gherkin_lexer_hr.c",
     "ext/gherkin_lexer_hu/gherkin_lexer_hu.c",
     "ext/gherkin_lexer_id/gherkin_lexer_id.c",
     "ext/gherkin_lexer_it/gherkin_lexer_it.c",
     "ext/gherkin_lexer_ja/gherkin_lexer_ja.c",
     "ext/gherkin_lexer_ko/gherkin_lexer_ko.c",
     "ext/gherkin_lexer_lt/gherkin_lexer_lt.c",
     "ext/gherkin_lexer_lv/gherkin_lexer_lv.c",
     "ext/gherkin_lexer_nl/gherkin_lexer_nl.c",
     "ext/gherkin_lexer_no/gherkin_lexer_no.c",
     "ext/gherkin_lexer_pl/gherkin_lexer_pl.c",
     "ext/gherkin_lexer_pt/gherkin_lexer_pt.c",
     "ext/gherkin_lexer_ro/gherkin_lexer_ro.c",
     "ext/gherkin_lexer_ro2/gherkin_lexer_ro2.c",
     "ext/gherkin_lexer_ru/gherkin_lexer_ru.c",
     "ext/gherkin_lexer_se/gherkin_lexer_se.c",
     "ext/gherkin_lexer_sk/gherkin_lexer_sk.c",
     "ext/gherkin_lexer_sr/gherkin_lexer_sr.c",
     "ext/gherkin_lexer_srLatn/gherkin_lexer_srLatn.c",
     "ext/gherkin_lexer_tr/gherkin_lexer_tr.c",
     "ext/gherkin_lexer_uz/gherkin_lexer_uz.c",
     "ext/gherkin_lexer_vi/gherkin_lexer_vi.c",
     "ext/gherkin_lexer_zhCN/gherkin_lexer_zhCN.c",
     "ext/gherkin_lexer_zhTW/gherkin_lexer_zhTW.c",
     "features/feature_parser.feature",
     "features/native_lexer.feature",
     "features/parser_with_native_lexer.feature",
     "features/pretty_printer.feature",
     "features/step_definitions/gherkin_steps.rb",
     "features/step_definitions/pretty_printer_steps.rb",
     "features/steps_parser.feature",
     "features/support/env.rb",
     "gherkin.gemspec",
     "java/.gitignore",
     "java/Gherkin.iml",
     "java/build.xml",
     "java/src/gherkin/FixJava.java",
     "java/src/gherkin/Lexer.java",
     "java/src/gherkin/LexingError.java",
     "java/src/gherkin/Listener.java",
     "java/src/gherkin/ParseError.java",
     "java/src/gherkin/Parser.java",
     "java/src/gherkin/lexer/.gitignore",
     "java/src/gherkin/parser/StateMachineReader.java",
     "lib/.gitignore",
     "lib/gherkin.rb",
     "lib/gherkin/c_lexer.rb",
     "lib/gherkin/cli/main.rb",
     "lib/gherkin/core_ext/array.rb",
     "lib/gherkin/i18n.rb",
     "lib/gherkin/i18n.yml",
     "lib/gherkin/i18n_lexer.rb",
     "lib/gherkin/java_lexer.rb",
     "lib/gherkin/lexer.rb",
     "lib/gherkin/parser.rb",
     "lib/gherkin/parser/meta.txt",
     "lib/gherkin/parser/root.txt",
     "lib/gherkin/parser/steps.txt",
     "lib/gherkin/rb_lexer.rb",
     "lib/gherkin/rb_lexer/.gitignore",
     "lib/gherkin/rb_lexer/README.rdoc",
     "lib/gherkin/rb_lexer/ar.rb",
     "lib/gherkin/rb_lexer/bg.rb",
     "lib/gherkin/rb_lexer/cat.rb",
     "lib/gherkin/rb_lexer/cs.rb",
     "lib/gherkin/rb_lexer/cy.rb",
     "lib/gherkin/rb_lexer/da.rb",
     "lib/gherkin/rb_lexer/de.rb",
     "lib/gherkin/rb_lexer/en.rb",
     "lib/gherkin/rb_lexer/enau.rb",
     "lib/gherkin/rb_lexer/enlol.rb",
     "lib/gherkin/rb_lexer/entx.rb",
     "lib/gherkin/rb_lexer/es.rb",
     "lib/gherkin/rb_lexer/et.rb",
     "lib/gherkin/rb_lexer/fi.rb",
     "lib/gherkin/rb_lexer/fr.rb",
     "lib/gherkin/rb_lexer/he.rb",
     "lib/gherkin/rb_lexer/hr.rb",
     "lib/gherkin/rb_lexer/hu.rb",
     "lib/gherkin/rb_lexer/id.rb",
     "lib/gherkin/rb_lexer/it.rb",
     "lib/gherkin/rb_lexer/ja.rb",
     "lib/gherkin/rb_lexer/ko.rb",
     "lib/gherkin/rb_lexer/lt.rb",
     "lib/gherkin/rb_lexer/lv.rb",
     "lib/gherkin/rb_lexer/nl.rb",
     "lib/gherkin/rb_lexer/no.rb",
     "lib/gherkin/rb_lexer/pl.rb",
     "lib/gherkin/rb_lexer/pt.rb",
     "lib/gherkin/rb_lexer/ro.rb",
     "lib/gherkin/rb_lexer/ro2.rb",
     "lib/gherkin/rb_lexer/ru.rb",
     "lib/gherkin/rb_lexer/se.rb",
     "lib/gherkin/rb_lexer/sk.rb",
     "lib/gherkin/rb_lexer/sr.rb",
     "lib/gherkin/rb_lexer/srLatn.rb",
     "lib/gherkin/rb_lexer/tr.rb",
     "lib/gherkin/rb_lexer/uz.rb",
     "lib/gherkin/rb_lexer/vi.rb",
     "lib/gherkin/rb_lexer/zhCN.rb",
     "lib/gherkin/rb_lexer/zhTW.rb",
     "lib/gherkin/rb_parser.rb",
     "lib/gherkin/tools.rb",
     "lib/gherkin/tools/files.rb",
     "lib/gherkin/tools/pretty_listener.rb",
     "lib/gherkin/tools/reformat.rb",
     "lib/gherkin/tools/stats.rb",
     "lib/gherkin/tools/stats_listener.rb",
     "nativegems.sh",
     "ragel/i18n/.gitignore",
     "ragel/lexer.c.rl.erb",
     "ragel/lexer.java.rl.erb",
     "ragel/lexer.rb.rl.erb",
     "ragel/lexer_common.rl.erb",
     "spec/gherkin/c_lexer_spec.rb",
     "spec/gherkin/fixtures/1.feature",
     "spec/gherkin/fixtures/complex.feature",
     "spec/gherkin/fixtures/i18n_fr.feature",
     "spec/gherkin/fixtures/i18n_no.feature",
     "spec/gherkin/fixtures/i18n_zh-CN.feature",
     "spec/gherkin/fixtures/simple.feature",
     "spec/gherkin/fixtures/simple_with_comments.feature",
     "spec/gherkin/fixtures/simple_with_tags.feature",
     "spec/gherkin/i18n_lexer_spec.rb",
     "spec/gherkin/i18n_spec.rb",
     "spec/gherkin/java_lexer_spec.rb",
     "spec/gherkin/parser_spec.rb",
     "spec/gherkin/rb_lexer_spec.rb",
     "spec/gherkin/sexp_recorder.rb",
     "spec/gherkin/shared/lexer_spec.rb",
     "spec/gherkin/shared/py_string_spec.rb",
     "spec/gherkin/shared/table_spec.rb",
     "spec/gherkin/shared/tags_spec.rb",
     "spec/gherkin/tools/pretty_listener_spec.rb",
     "spec/spec_helper.rb",
     "tasks/bench.rake",
     "tasks/bench/feature_builder.rb",
     "tasks/bench/generated/.gitignore",
     "tasks/bench/null_listener.rb",
     "tasks/compile.rake",
     "tasks/cucumber.rake",
     "tasks/ragel_task.rb",
     "tasks/rdoc.rake",
     "tasks/rspec.rake"
  ]
  s.homepage = %q{http://github.com/aslakhellesoy/gherkin}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Fast Gherkin lexer/parser}
  s.test_files = [
    "spec/gherkin/c_lexer_spec.rb",
     "spec/gherkin/i18n_lexer_spec.rb",
     "spec/gherkin/i18n_spec.rb",
     "spec/gherkin/java_lexer_spec.rb",
     "spec/gherkin/parser_spec.rb",
     "spec/gherkin/rb_lexer_spec.rb",
     "spec/gherkin/sexp_recorder.rb",
     "spec/gherkin/shared/lexer_spec.rb",
     "spec/gherkin/shared/py_string_spec.rb",
     "spec/gherkin/shared/table_spec.rb",
     "spec/gherkin/shared/tags_spec.rb",
     "spec/gherkin/tools/pretty_listener_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<trollop>, [">= 1.15"])
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_development_dependency(%q<cucumber>, [">= 0.6.1"])
      s.add_development_dependency(%q<rake-compiler>, [">= 0.7.0"])
    else
      s.add_dependency(%q<trollop>, [">= 1.15"])
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
      s.add_dependency(%q<cucumber>, [">= 0.6.1"])
      s.add_dependency(%q<rake-compiler>, [">= 0.7.0"])
    end
  else
    s.add_dependency(%q<trollop>, [">= 1.15"])
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
    s.add_dependency(%q<cucumber>, [">= 0.6.1"])
    s.add_dependency(%q<rake-compiler>, [">= 0.7.0"])
  end
end
