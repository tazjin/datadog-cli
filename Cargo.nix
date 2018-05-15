# Generated by carnix 0.7.2: /home/vincent/.nix-profile/bin/carnix nix --src .
{ lib, buildPlatform, buildRustCrate, fetchgit }:
let kernel = buildPlatform.parsed.kernel.name;
    abi = buildPlatform.parsed.abi.name;
    include = includedFiles: src: builtins.filterSource (path: type:
      lib.lists.any (f:
        let p = toString (src + ("/" + f)); in
        (path == p) || (type == "directory" && lib.strings.hasPrefix path p)
      ) includedFiles
    ) src;
    updateFeatures = f: up: functions: builtins.deepSeq f (lib.lists.foldl' (features: fun: fun features) (lib.attrsets.recursiveUpdate f up) functions);
    mapFeatures = features: map (fun: fun { features = features; });
    mkFeatures = feat: lib.lists.foldl (features: featureName:
      if feat.${featureName} or false then
        [ featureName ] ++ features
      else
        features
    ) [] (builtins.attrNames feat);
in
rec {
  datadog_cli = f: datadog_cli_0_1_0 { features = datadog_cli_0_1_0_features { datadog_cli_0_1_0 = f; }; };
  __all = [ (datadog_cli {}) ];
  ansi_term_0_11_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "ansi_term";
    version = "0.11.0";
    authors = [ "ogham@bsago.me" "Ryan Scheel (Havvy) <ryan.havvy@gmail.com>" "Josh Triplett <josh@joshtriplett.org>" ];
    sha256 = "08fk0p2xvkqpmz3zlrwnf6l8sj2vngw464rvzspzp31sbgxbwm4v";
    inherit dependencies buildDependencies features;
  };
  atty_0_2_10_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "atty";
    version = "0.2.10";
    authors = [ "softprops <d.tangren@gmail.com>" ];
    sha256 = "1h26lssj8rwaz0xhwwm5a645r49yly211amfmd243m3m0jl49i2c";
    inherit dependencies buildDependencies features;
  };
  bitflags_1_0_3_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "bitflags";
    version = "1.0.3";
    authors = [ "The Rust Project Developers" ];
    sha256 = "162p4w4h1ad76awq6b5yivmls3d50m9cl27d8g588lsps6g8s5rw";
    inherit dependencies buildDependencies features;
  };
  chrono_0_4_2_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "chrono";
    version = "0.4.2";
    authors = [ "Kang Seonghoon <public+rust@mearie.org>" "Brandon W Maister <quodlibetor@gmail.com>" ];
    sha256 = "1zp63v1g56kfjnazmqg8s4gb66l0ra8ggn3gzqbf9sr8d5lnfzak";
    inherit dependencies buildDependencies features;
  };
  clap_2_31_2_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "clap";
    version = "2.31.2";
    authors = [ "Kevin K. <kbknapp@gmail.com>" ];
    sha256 = "0r24ziw85a8y1sf2l21y4mvv5qan3rjafcshpyfsjfadqfxsij72";
    inherit dependencies buildDependencies features;
  };
  datadog_cli_0_1_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "datadog-cli";
    version = "0.1.0";
    authors = [ "Vincent Ambo <mail@tazj.in>" ];
    src = ./.;
    inherit dependencies buildDependencies features;
  };
  dogstatsd_0_5_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "dogstatsd";
    version = "0.5.0";
    authors = [ "Matt Casper <matthewvcasper@gmail.com>" ];
    sha256 = "0fvn54y7vbqv93l3wl4mrwp6rv8apnybdbf41yi4zwpajn8gw875";
    inherit dependencies buildDependencies features;
  };
  libc_0_2_40_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "libc";
    version = "0.2.40";
    authors = [ "The Rust Project Developers" ];
    sha256 = "1xfc39237ldzgr8x8wcflgdr8zssi3wif7g2zxc02d94gzkjsw83";
    inherit dependencies buildDependencies features;
  };
  num_integer_0_1_38_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "num-integer";
    version = "0.1.38";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0xcyvsg43zrmaanf546l67mz816g5jigxi8818rx5y95xid722yy";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  num_traits_0_2_4_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "num-traits";
    version = "0.2.4";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0j0n4lcxbqq8q9v2qcyybz6aqxvmghzl5q2p19ds0c8fl5wviqmj";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  redox_syscall_0_1_37_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "redox_syscall";
    version = "0.1.37";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "0qa0jl9cr3qp80an8vshp2mcn8rzvwiavs1398hq1vsjw7pc3h2v";
    libName = "syscall";
    inherit dependencies buildDependencies features;
  };
  redox_termios_0_1_1_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "redox_termios";
    version = "0.1.1";
    authors = [ "Jeremy Soller <jackpot51@gmail.com>" ];
    sha256 = "04s6yyzjca552hdaqlvqhp3vw0zqbc304md5czyd3axh56iry8wh";
    libPath = "src/lib.rs";
    inherit dependencies buildDependencies features;
  };
  strsim_0_7_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "strsim";
    version = "0.7.0";
    authors = [ "Danny Guo <dannyguo91@gmail.com>" ];
    sha256 = "0fy0k5f2705z73mb3x9459bpcvrx4ky8jpr4zikcbiwan4bnm0iv";
    inherit dependencies buildDependencies features;
  };
  termion_1_5_1_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "termion";
    version = "1.5.1";
    authors = [ "ticki <Ticki@users.noreply.github.com>" "gycos <alexandre.bury@gmail.com>" "IGI-111 <igi-111@protonmail.com>" ];
    sha256 = "02gq4vd8iws1f3gjrgrgpajsk2bk43nds5acbbb4s8dvrdvr8nf1";
    inherit dependencies buildDependencies features;
  };
  textwrap_0_9_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "textwrap";
    version = "0.9.0";
    authors = [ "Martin Geisler <martin@geisler.net>" ];
    sha256 = "18jg79ndjlwndz01mlbh82kkr2arqm658yn5kwp65l5n1hz8w4yb";
    inherit dependencies buildDependencies features;
  };
  time_0_1_40_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "time";
    version = "0.1.40";
    authors = [ "The Rust Project Developers" ];
    sha256 = "0wgnbjamljz6bqxsd5axc4p2mmhkqfrryj4gf2yswjaxiw5dd01m";
    inherit dependencies buildDependencies features;
  };
  unicode_width_0_1_4_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "unicode-width";
    version = "0.1.4";
    authors = [ "kwantam <kwantam@gmail.com>" ];
    sha256 = "1rp7a04icn9y5c0lm74nrd4py0rdl0af8bhdwq7g478n1xifpifl";
    inherit dependencies buildDependencies features;
  };
  vec_map_0_8_1_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "vec_map";
    version = "0.8.1";
    authors = [ "Alex Crichton <alex@alexcrichton.com>" "Jorge Aparicio <japaricious@gmail.com>" "Alexis Beingessner <a.beingessner@gmail.com>" "Brian Anderson <>" "tbu- <>" "Manish Goregaokar <>" "Aaron Turon <aturon@mozilla.com>" "Adolfo Ochagavía <>" "Niko Matsakis <>" "Steven Fackler <>" "Chase Southwood <csouth3@illinois.edu>" "Eduard Burtescu <>" "Florian Wilkens <>" "Félix Raimundo <>" "Tibor Benke <>" "Markus Siemens <markus@m-siemens.de>" "Josh Branchaud <jbranchaud@gmail.com>" "Huon Wilson <dbau.pp@gmail.com>" "Corey Farwell <coref@rwell.org>" "Aaron Liblong <>" "Nick Cameron <nrc@ncameron.org>" "Patrick Walton <pcwalton@mimiga.net>" "Felix S Klock II <>" "Andrew Paseltiner <apaseltiner@gmail.com>" "Sean McArthur <sean.monstar@gmail.com>" "Vadim Petrochenkov <>" ];
    sha256 = "1jj2nrg8h3l53d43rwkpkikq5a5x15ms4rf1rw92hp5lrqhi8mpi";
    inherit dependencies buildDependencies features;
  };
  winapi_0_3_4_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "winapi";
    version = "0.3.4";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "1qbrf5dcnd8j36cawby5d9r5vx07r0l4ryf672pfncnp8895k9lx";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  winapi_i686_pc_windows_gnu_0_4_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "winapi-i686-pc-windows-gnu";
    version = "0.4.0";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "05ihkij18r4gamjpxj4gra24514can762imjzlmak5wlzidplzrp";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  winapi_x86_64_pc_windows_gnu_0_4_0_ = { dependencies?[], buildDependencies?[], features?[] }: buildRustCrate {
    crateName = "winapi-x86_64-pc-windows-gnu";
    version = "0.4.0";
    authors = [ "Peter Atashian <retep998@gmail.com>" ];
    sha256 = "0n1ylmlsb8yg1v583i4xy0qmqg42275flvbc51hdqjjfjcl9vlbj";
    build = "build.rs";
    inherit dependencies buildDependencies features;
  };
  ansi_term_0_11_0 = { features?(ansi_term_0_11_0_features {}) }: ansi_term_0_11_0_ {
    dependencies = (if kernel == "windows" then mapFeatures features ([ winapi_0_3_4 ]) else []);
  };
  ansi_term_0_11_0_features = f: updateFeatures f (rec {
    ansi_term_0_11_0.default = (f.ansi_term_0_11_0.default or true);
    winapi_0_3_4.consoleapi = true;
    winapi_0_3_4.default = true;
    winapi_0_3_4.errhandlingapi = true;
    winapi_0_3_4.processenv = true;
  }) [ winapi_0_3_4_features ];
  atty_0_2_10 = { features?(atty_0_2_10_features {}) }: atty_0_2_10_ {
    dependencies = (if kernel == "redox" then mapFeatures features ([ termion_1_5_1 ]) else [])
      ++ (if (kernel == "linux" || kernel == "darwin") then mapFeatures features ([ libc_0_2_40 ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([ winapi_0_3_4 ]) else []);
  };
  atty_0_2_10_features = f: updateFeatures f (rec {
    atty_0_2_10.default = (f.atty_0_2_10.default or true);
    libc_0_2_40.default = (f.libc_0_2_40.default or false);
    termion_1_5_1.default = true;
    winapi_0_3_4.consoleapi = true;
    winapi_0_3_4.default = true;
    winapi_0_3_4.minwinbase = true;
    winapi_0_3_4.minwindef = true;
    winapi_0_3_4.processenv = true;
    winapi_0_3_4.winbase = true;
  }) [ termion_1_5_1_features libc_0_2_40_features winapi_0_3_4_features ];
  bitflags_1_0_3 = { features?(bitflags_1_0_3_features {}) }: bitflags_1_0_3_ {
    features = mkFeatures (features.bitflags_1_0_3 or {});
  };
  bitflags_1_0_3_features = f: updateFeatures f (rec {
    bitflags_1_0_3.default = (f.bitflags_1_0_3.default or true);
  }) [];
  chrono_0_4_2 = { features?(chrono_0_4_2_features {}) }: chrono_0_4_2_ {
    dependencies = mapFeatures features ([ num_integer_0_1_38 num_traits_0_2_4 ]
      ++ (if features.chrono_0_4_2.time or false then [ time_0_1_40 ] else []));
    features = mkFeatures (features.chrono_0_4_2 or {});
  };
  chrono_0_4_2_features = f: updateFeatures f (rec {
    chrono_0_4_2.clock =
      (f.chrono_0_4_2.clock or false) ||
      (f.chrono_0_4_2.default or false) ||
      (chrono_0_4_2.default or false);
    chrono_0_4_2.default = (f.chrono_0_4_2.default or true);
    chrono_0_4_2.time =
      (f.chrono_0_4_2.time or false) ||
      (f.chrono_0_4_2.clock or false) ||
      (chrono_0_4_2.clock or false);
    num_integer_0_1_38.default = (f.num_integer_0_1_38.default or false);
    num_traits_0_2_4.default = (f.num_traits_0_2_4.default or false);
    time_0_1_40.default = true;
  }) [ num_integer_0_1_38_features num_traits_0_2_4_features time_0_1_40_features ];
  clap_2_31_2 = { features?(clap_2_31_2_features {}) }: clap_2_31_2_ {
    dependencies = mapFeatures features ([ bitflags_1_0_3 textwrap_0_9_0 unicode_width_0_1_4 ]
      ++ (if features.clap_2_31_2.atty or false then [ atty_0_2_10 ] else [])
      ++ (if features.clap_2_31_2.strsim or false then [ strsim_0_7_0 ] else [])
      ++ (if features.clap_2_31_2.vec_map or false then [ vec_map_0_8_1 ] else []))
      ++ (if !(kernel == "windows") then mapFeatures features ([ ]
      ++ (if features.clap_2_31_2.ansi_term or false then [ ansi_term_0_11_0 ] else [])) else []);
    features = mkFeatures (features.clap_2_31_2 or {});
  };
  clap_2_31_2_features = f: updateFeatures f (rec {
    ansi_term_0_11_0.default = true;
    atty_0_2_10.default = true;
    bitflags_1_0_3.default = true;
    clap_2_31_2."yaml-rust" =
      (f.clap_2_31_2."yaml-rust" or false) ||
      (f.clap_2_31_2.yaml or false) ||
      (clap_2_31_2.yaml or false);
    clap_2_31_2.ansi_term =
      (f.clap_2_31_2.ansi_term or false) ||
      (f.clap_2_31_2.color or false) ||
      (clap_2_31_2.color or false);
    clap_2_31_2.atty =
      (f.clap_2_31_2.atty or false) ||
      (f.clap_2_31_2.color or false) ||
      (clap_2_31_2.color or false);
    clap_2_31_2.clippy =
      (f.clap_2_31_2.clippy or false) ||
      (f.clap_2_31_2.lints or false) ||
      (clap_2_31_2.lints or false);
    clap_2_31_2.color =
      (f.clap_2_31_2.color or false) ||
      (f.clap_2_31_2.default or false) ||
      (clap_2_31_2.default or false);
    clap_2_31_2.default = (f.clap_2_31_2.default or true);
    clap_2_31_2.strsim =
      (f.clap_2_31_2.strsim or false) ||
      (f.clap_2_31_2.suggestions or false) ||
      (clap_2_31_2.suggestions or false);
    clap_2_31_2.suggestions =
      (f.clap_2_31_2.suggestions or false) ||
      (f.clap_2_31_2.default or false) ||
      (clap_2_31_2.default or false);
    clap_2_31_2.term_size =
      (f.clap_2_31_2.term_size or false) ||
      (f.clap_2_31_2.wrap_help or false) ||
      (clap_2_31_2.wrap_help or false);
    clap_2_31_2.vec_map =
      (f.clap_2_31_2.vec_map or false) ||
      (f.clap_2_31_2.default or false) ||
      (clap_2_31_2.default or false);
    clap_2_31_2.yaml =
      (f.clap_2_31_2.yaml or false) ||
      (f.clap_2_31_2.doc or false) ||
      (clap_2_31_2.doc or false);
    strsim_0_7_0.default = true;
    textwrap_0_9_0.default = true;
    textwrap_0_9_0.term_size =
      (f.textwrap_0_9_0.term_size or false) ||
      (clap_2_31_2.wrap_help or false) ||
      (f.clap_2_31_2.wrap_help or false);
    unicode_width_0_1_4.default = true;
    vec_map_0_8_1.default = true;
  }) [ atty_0_2_10_features bitflags_1_0_3_features strsim_0_7_0_features textwrap_0_9_0_features unicode_width_0_1_4_features vec_map_0_8_1_features ansi_term_0_11_0_features ];
  datadog_cli_0_1_0 = { features?(datadog_cli_0_1_0_features {}) }: datadog_cli_0_1_0_ {
    dependencies = mapFeatures features ([ clap_2_31_2 dogstatsd_0_5_0 ]);
  };
  datadog_cli_0_1_0_features = f: updateFeatures f (rec {
    clap_2_31_2.default = true;
    datadog_cli_0_1_0.default = (f.datadog_cli_0_1_0.default or true);
    dogstatsd_0_5_0.default = true;
  }) [ clap_2_31_2_features dogstatsd_0_5_0_features ];
  dogstatsd_0_5_0 = { features?(dogstatsd_0_5_0_features {}) }: dogstatsd_0_5_0_ {
    dependencies = mapFeatures features ([ chrono_0_4_2 ]);
    features = mkFeatures (features.dogstatsd_0_5_0 or {});
  };
  dogstatsd_0_5_0_features = f: updateFeatures f (rec {
    chrono_0_4_2.default = true;
    dogstatsd_0_5_0.default = (f.dogstatsd_0_5_0.default or true);
  }) [ chrono_0_4_2_features ];
  libc_0_2_40 = { features?(libc_0_2_40_features {}) }: libc_0_2_40_ {
    features = mkFeatures (features.libc_0_2_40 or {});
  };
  libc_0_2_40_features = f: updateFeatures f (rec {
    libc_0_2_40.default = (f.libc_0_2_40.default or true);
    libc_0_2_40.use_std =
      (f.libc_0_2_40.use_std or false) ||
      (f.libc_0_2_40.default or false) ||
      (libc_0_2_40.default or false);
  }) [];
  num_integer_0_1_38 = { features?(num_integer_0_1_38_features {}) }: num_integer_0_1_38_ {
    dependencies = mapFeatures features ([ num_traits_0_2_4 ]);
    features = mkFeatures (features.num_integer_0_1_38 or {});
  };
  num_integer_0_1_38_features = f: updateFeatures f (rec {
    num_integer_0_1_38.default = (f.num_integer_0_1_38.default or true);
    num_integer_0_1_38.std =
      (f.num_integer_0_1_38.std or false) ||
      (f.num_integer_0_1_38.default or false) ||
      (num_integer_0_1_38.default or false);
    num_traits_0_2_4."i128" =
      (f.num_traits_0_2_4."i128" or false) ||
      (num_integer_0_1_38."i128" or false) ||
      (f.num_integer_0_1_38."i128" or false);
    num_traits_0_2_4.default = (f.num_traits_0_2_4.default or false);
    num_traits_0_2_4.std =
      (f.num_traits_0_2_4.std or false) ||
      (num_integer_0_1_38.std or false) ||
      (f.num_integer_0_1_38.std or false);
  }) [ num_traits_0_2_4_features ];
  num_traits_0_2_4 = { features?(num_traits_0_2_4_features {}) }: num_traits_0_2_4_ {
    features = mkFeatures (features.num_traits_0_2_4 or {});
  };
  num_traits_0_2_4_features = f: updateFeatures f (rec {
    num_traits_0_2_4.default = (f.num_traits_0_2_4.default or true);
    num_traits_0_2_4.std =
      (f.num_traits_0_2_4.std or false) ||
      (f.num_traits_0_2_4.default or false) ||
      (num_traits_0_2_4.default or false);
  }) [];
  redox_syscall_0_1_37 = { features?(redox_syscall_0_1_37_features {}) }: redox_syscall_0_1_37_ {};
  redox_syscall_0_1_37_features = f: updateFeatures f (rec {
    redox_syscall_0_1_37.default = (f.redox_syscall_0_1_37.default or true);
  }) [];
  redox_termios_0_1_1 = { features?(redox_termios_0_1_1_features {}) }: redox_termios_0_1_1_ {
    dependencies = mapFeatures features ([ redox_syscall_0_1_37 ]);
  };
  redox_termios_0_1_1_features = f: updateFeatures f (rec {
    redox_syscall_0_1_37.default = true;
    redox_termios_0_1_1.default = (f.redox_termios_0_1_1.default or true);
  }) [ redox_syscall_0_1_37_features ];
  strsim_0_7_0 = { features?(strsim_0_7_0_features {}) }: strsim_0_7_0_ {};
  strsim_0_7_0_features = f: updateFeatures f (rec {
    strsim_0_7_0.default = (f.strsim_0_7_0.default or true);
  }) [];
  termion_1_5_1 = { features?(termion_1_5_1_features {}) }: termion_1_5_1_ {
    dependencies = (if !(kernel == "redox") then mapFeatures features ([ libc_0_2_40 ]) else [])
      ++ (if kernel == "redox" then mapFeatures features ([ redox_syscall_0_1_37 redox_termios_0_1_1 ]) else []);
  };
  termion_1_5_1_features = f: updateFeatures f (rec {
    libc_0_2_40.default = true;
    redox_syscall_0_1_37.default = true;
    redox_termios_0_1_1.default = true;
    termion_1_5_1.default = (f.termion_1_5_1.default or true);
  }) [ libc_0_2_40_features redox_syscall_0_1_37_features redox_termios_0_1_1_features ];
  textwrap_0_9_0 = { features?(textwrap_0_9_0_features {}) }: textwrap_0_9_0_ {
    dependencies = mapFeatures features ([ unicode_width_0_1_4 ]);
  };
  textwrap_0_9_0_features = f: updateFeatures f (rec {
    textwrap_0_9_0.default = (f.textwrap_0_9_0.default or true);
    unicode_width_0_1_4.default = true;
  }) [ unicode_width_0_1_4_features ];
  time_0_1_40 = { features?(time_0_1_40_features {}) }: time_0_1_40_ {
    dependencies = mapFeatures features ([ libc_0_2_40 ])
      ++ (if kernel == "redox" then mapFeatures features ([ redox_syscall_0_1_37 ]) else [])
      ++ (if kernel == "windows" then mapFeatures features ([ winapi_0_3_4 ]) else []);
  };
  time_0_1_40_features = f: updateFeatures f (rec {
    libc_0_2_40.default = true;
    redox_syscall_0_1_37.default = true;
    time_0_1_40.default = (f.time_0_1_40.default or true);
    winapi_0_3_4.default = true;
    winapi_0_3_4.minwinbase = true;
    winapi_0_3_4.minwindef = true;
    winapi_0_3_4.ntdef = true;
    winapi_0_3_4.profileapi = true;
    winapi_0_3_4.std = true;
    winapi_0_3_4.sysinfoapi = true;
    winapi_0_3_4.timezoneapi = true;
  }) [ libc_0_2_40_features redox_syscall_0_1_37_features winapi_0_3_4_features ];
  unicode_width_0_1_4 = { features?(unicode_width_0_1_4_features {}) }: unicode_width_0_1_4_ {
    features = mkFeatures (features.unicode_width_0_1_4 or {});
  };
  unicode_width_0_1_4_features = f: updateFeatures f (rec {
    unicode_width_0_1_4.default = (f.unicode_width_0_1_4.default or true);
  }) [];
  vec_map_0_8_1 = { features?(vec_map_0_8_1_features {}) }: vec_map_0_8_1_ {
    dependencies = mapFeatures features ([]);
    features = mkFeatures (features.vec_map_0_8_1 or {});
  };
  vec_map_0_8_1_features = f: updateFeatures f (rec {
    vec_map_0_8_1.default = (f.vec_map_0_8_1.default or true);
    vec_map_0_8_1.serde =
      (f.vec_map_0_8_1.serde or false) ||
      (f.vec_map_0_8_1.eders or false) ||
      (vec_map_0_8_1.eders or false);
  }) [];
  winapi_0_3_4 = { features?(winapi_0_3_4_features {}) }: winapi_0_3_4_ {
    dependencies = (if kernel == "i686-pc-windows-gnu" then mapFeatures features ([ winapi_i686_pc_windows_gnu_0_4_0 ]) else [])
      ++ (if kernel == "x86_64-pc-windows-gnu" then mapFeatures features ([ winapi_x86_64_pc_windows_gnu_0_4_0 ]) else []);
    features = mkFeatures (features.winapi_0_3_4 or {});
  };
  winapi_0_3_4_features = f: updateFeatures f (rec {
    winapi_0_3_4.default = (f.winapi_0_3_4.default or true);
    winapi_i686_pc_windows_gnu_0_4_0.default = true;
    winapi_x86_64_pc_windows_gnu_0_4_0.default = true;
  }) [ winapi_i686_pc_windows_gnu_0_4_0_features winapi_x86_64_pc_windows_gnu_0_4_0_features ];
  winapi_i686_pc_windows_gnu_0_4_0 = { features?(winapi_i686_pc_windows_gnu_0_4_0_features {}) }: winapi_i686_pc_windows_gnu_0_4_0_ {};
  winapi_i686_pc_windows_gnu_0_4_0_features = f: updateFeatures f (rec {
    winapi_i686_pc_windows_gnu_0_4_0.default = (f.winapi_i686_pc_windows_gnu_0_4_0.default or true);
  }) [];
  winapi_x86_64_pc_windows_gnu_0_4_0 = { features?(winapi_x86_64_pc_windows_gnu_0_4_0_features {}) }: winapi_x86_64_pc_windows_gnu_0_4_0_ {};
  winapi_x86_64_pc_windows_gnu_0_4_0_features = f: updateFeatures f (rec {
    winapi_x86_64_pc_windows_gnu_0_4_0.default = (f.winapi_x86_64_pc_windows_gnu_0_4_0.default or true);
  }) [];
}
