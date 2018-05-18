log_progress "ENTERING BUILD SCRIPT: LISP"


# PDP-6 LISP.
patch_lisp

# lisp
respond "*" ":link l;fasdfs 1,lisp;.fasl defs\r"
respond "*" ":link lisp;grind fasl,lisp;gfile fasl\r"
respond "*" ":link lisp;grinde fasl,lisp;gfn fasl\r"
respond "*" ":link l;loop fasl,liblsp;loop fasl\r"
respond "*" ":link lisp;loop fasl,liblsp;loop fasl\r"

respond "*" ":midas .temp.;_l;*lisp\r"
respond "end input with ^C" "\003"
expect ":KILL"
respond "*" ":job lisp\r"
respond "*" ":load .temp.;*lisp bin\r"
respond "*" "\033g"
respond "*" "purify\033g"
respond "*" ":pdump sys;purqio 2154\r"
respond "*" ":kill\r"

respond "*" ":link sys;ts lisp,sys:purqio >\r"
respond "*" ":link sys;ts q,sys;purqio >\r"
respond "*" ":link sys;atsign lisp,sys;purqio >\r"
respond "*" ":link sys;ts l,sys;ts lisp\r"

respond "*" ":link .info.;lisp step,.info.;step info\r"
respond "*" ":link libdoc;struct 280,alan;struct >\r"
respond "*" ":link libdoc;struct doc,alan;struct doc\r"
respond "*" ":link .info.;lisp struct,libdoc;struct doc\r"
respond "*" ":link l;-read- -this-,lisp;-read- -this-\r"

# lisp compiler
respond "*" ":link comlap;cdmacs fasl,cd.fas >\r"
respond "*" ":link comlap;complr fasl,comlap;cl.fas >\r"
respond "*" ":link comlap;phas1 fasl,comlap;ph.fas >\r"
respond "*" ":link comlap;comaux fasl,comlap;cx.fas >\r"
respond "*" ":link comlap;faslap fasl,comlap;fl.fas >\r"
respond "*" ":link comlap;maklap fasl,comlap;mk.fas >\r"
respond "*" ":link comlap;initia fasl,comlap;in.fas >\r"
respond "*" ":link comlap;srctrn fasl,comlap;st.fas >\r"
mkdir "lspdmp"
respond "*" "lisp\013"
respond "Alloc?" "n\r"
respond "*" "(load \"comlap;ccload\")"
respond ";BKPT CCLOAD:DUMPVERNO" "(setq ccload:dumpverno 1998)"
respond "1998" "(return)"
respond "*" ":kill\r"
respond "*" ":link sys;ts complr,lspdmp;cl.dmp >\r"
respond "*" ":link sys;ts cl,sys;ts complr\r"
respond "*" ":link info;complr 1,info;lispc >\r"

# lisp;* fasl that that have autoload properties in interpreter
respond "*" ":link sys;.fasl defs,lisp;.fasl defs\r"
respond "*" ":link sys;fasdfs 1,lisp;.fasl defs\r"
respond "*" ":midas lisp;_l;allfil\r"
respond "*" ":midas lisp;_l;bltarr\r"
respond "*" ":midas lisp;_lspsrc;edit\r"
respond "*" ":midas lisp;_l;getmid\r"
respond "*" ":midas lisp;_l;humble\r"
respond "*" ":midas lisp;_lspsrc;sort\r"
expect ":KILL"

respond "*" ":link lisp;subloa lsp,nilcom;subloa >\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;loop\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_lspsrc;umlmac\r"
respond "_" "lisp;_nilcom;sharpa\r"
respond "_" "lisp;_nilcom;sharpc\r"
respond "_" "lisp;_nilcom;defvst\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;errck\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;backq\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_lspsrc;bits\r"
respond "_" "lisp;_lspsrc;cerror\r"
respond "_" "lisp;_nilcom;defmac\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;defmax\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;defvsx\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;defvsy\r"
respond "_" "lisp;_lspsrc;descri\r"
respond "_" "lisp;_lspsrc;dumpar\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_lspsrc;extmac\r"
respond "_" "lisp;_lspsrc;extbas\r"
respond "_" "lisp;_lspsrc;extsfa\r"
respond "_" "lisp;_nilcom;evonce\r"
respond "_" "lisp;_lspsrc;extend\r"
respond "_" "lisp;_lspsrc;grind\r"
respond "_" "lisp;_lspsrc;grinde\r"
respond "_" "lisp;_lspsrc;lap\r"
respond "_" "lisp;_comlap;ledit\r"
respond "_" "lisp;_nilcom;let\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":link l;humble fasl,lisp;\r"
respond "*" ":link l;ledit* fasl,lisp;\r"
respond "*" ":link l;let fasl,lisp;\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;macaid\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_lspsrc;mlmac\r"
respond "_" "lisp;_lspsrc;mlsub\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "\007"
respond "*" "(remprop 'eval-ordered* '*lexpr)"
respond "(T AUTOLOAD ((LISP) EVONCE FASL))" "(maklap)"
respond "_" "lisp;_nilcom;setf\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;sharpm\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;string\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;subseq\r"
respond "_" "lisp;_lspsrc;trace\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;yesnop\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;lspmac\r"
respond "_" "liblsp;_libdoc;lusets\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "\007"
respond "*" "(load '((lisp) extend))"
respond_load "(maklap)"
respond "_" "lisp;_lspsrc;extstr\r"
respond "_" "\032"
type ":kill\r"

# inquir
respond "*" ":midas inquir;_lsrrtn\r"
expect ":KILL"
respond "*" ":midas inquir;_cstacy;netrtn\r"
expect ":KILL"

respond "*" ":link liblsp;debug fasl,liblsp;dbg fasl\r"
respond "*" ":link lisp;debug fasl,liblsp;debug fasl\r"
respond "*" "complr\013"
respond "_" "liblsp;_libdoc;tty\r"
respond "_" "inquir;reader\r"
respond "_" "inquir;fake-s\r"
respond "_" "rwk;debmac\r"
respond "_" "liblsp;_libdoc;lispm\r"
respond "_" "inquir;inquir\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":midas inquir;ts inqexm_inqexm\r"
expect ":KILL"
respond "*" ":midas inquir;ts inqrep_inqrep\r"
expect ":KILL"
respond "*" ":link inquir;ts inqchk,ts inquir\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;dbg ejs2\r"
respond "_" "liblsp;_libdoc;comrd kmp1\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":lisp inquir;inquir (dump)\r"
respond "*" ":link inquir;ts inquir,inquir;inqbin >\r"
respond "*" ":link sys;ts inquir,inquir;ts inquir\r"

respond "*" ":midas inquir;dirs bin_inquir;dmunch\r"
expect ":KILL"

respond "*" ":midas inquir;inqupd bin_inquir;inqupd\r"
expect ":KILL"
respond "*" ":link inquir;ts inqcpy,inqupd bin\r"
respond "*" ":link inquir;ts inqpat,inqupd bin\r"
respond "*" ":link inquir;ts lsrini,inqupd bin\r"

# od
respond "*" "complr\013"
respond "_" "liblsp;_libdoc; od\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":lisp libdoc;od (dump)\r"
expect ":KILL"

# comred
respond "*" "complr\013"
respond "_" "liblsp;_libdoc; comred\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":link inquir;lsrtns 1,syseng;lsrtns >\r"

respond "*" ":midas inquir;ts lookup_inquir;lookup\r"
expect ":KILL"

respond "*" ":link sys1;ts lookup,inquir;ts lookup\r"

respond "*" ":midas sys3;ts lsrprt_sysen1; lsrprt\r"
expect ":KILL"

respond "*" ":midas sys3;ts lsrdmp_bawden; lsrdmp\r"
expect ":KILL"

# more lisp packages
respond "*" ":link lisp;tty fasl,liblsp;tty fasl\r"
respond "*" "complr\013"
respond "_" "\007"
respond "*" "(load '((lisp) subloa lsp))"
respond "T" "(maklap)"
respond "_" "lisp;_lspsrc;funcel\r"
respond "_" "lisp;_lspsrc;reap\r"
respond "_" "lisp;_lspsrc;lexprf\r"
respond "_" "lisp;_lspsrc;ldbhlp\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_nilcom;lsets\r"
respond "_" "lisp;_nilcom;drammp\r"
respond "(Y or N)" "Y"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "\007"
respond "*" "(load '((lisp) subloa lsp))"
respond "T" "(maklap)"
respond "_" "lisp;_lspsrc;nilaid\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;sharab\r"
respond "_" "liblsp;_libdoc;bs\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":link lisp;sharab fasl,liblsp;\r"
respond "*" ":link lisp;bs fasl,liblsp;\r"

respond "*" "complr\013"
respond "_" "\007"
respond "*" "(load '((lisp) subloa lsp))"
respond "T" "(maklap)"
respond "_" "lisp;_nilcom;thread\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":midas lisp;_l;lchnsp\r"
expect ":KILL"
respond "*" ":midas lisp;_l;purep\r"
expect ":KILL"

# struct

respond "*" ":link alan;dprint fasl,liblsp;dprint fasl\r"
respond "*" ":link alan;struct 9,alan;nstruc 280\r"
respond "*" ":copy liblsp;struct fasl,alan;struct boot\r"
respond "*" ":link alan;struct fasl,liblsp;struct fasl\r"
respond "*" "complr\013"
respond "_" "alan;lspcom\r"
respond "_" "alan;lspenv\r"
respond "_" "alan;lspint\r"
respond "_" "alan;setf\r"
respond "_" "alan;binda\r"
respond "_" "alan;crawl\r"
respond "_" "alan;nstruc 280\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":copy alan;nstruc fasl,liblsp;struct fasl\r"
respond "*" ":link lisp;struct fasl,liblsp;struct fasl\r"

respond "*" ":midas liblsp;_alan;macits\r"
expect ":KILL"

respond "*" "complr\013"
respond "_" "liblsp;_alan;dprint\r"
respond "_" "\032"
type ":kill\r"

#respond "*" "complr\013"
#respond "_" "alan;ljob\r"
#respond "_" "liblsp;_libdoc;gprint rcw3\r"
#respond "_" "alan;lspgub\r"
#respond "_" "\032"
#type ":kill\r"

# compile lisp compiler
respond "*" "complr\013"
respond "_" "comlap;cd.fas 40_cdmacs\r"
respond "_" "comlap;cx.fas 25_comaux\r"
respond "_" "comlap;cl.fas 936_complr\r"
respond "_" "comlap;fl.fas 392_faslap\r"
respond "_" "comlap;in.fas 120_initia\r"
respond "_" "comlap;mk.fas 80_maklap\r"
respond "_" "comlap;ph.fas 86_phas1\r"
respond "_" "comlap;st.fas 20_srctrn\r"
respond "_" "\032"
type ":kill\r"

# and redump compiler
respond "*" "comlap\033\033\023"
respond "*" ":lisp ccload\r"
expect "Dumping LSPDMP"
type ":vk\r"
respond "*" ":kill\r"

# Additional LSPLIB packages
respond "*" "complr\013"
respond "_" "liblsp;_libdoc;iota\r"
respond "_" "liblsp;_libdoc;time\r"
respond "_" "liblsp;_libdoc;letfex\r"
respond "_" "liblsp;_libdoc;break\r"
respond "_" "liblsp;_libdoc;smurf\r"
respond "_" "liblsp;_rlb%;fasdmp\r"
respond "_" "liblsp;_libdoc;lispt\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":link liblsp;gcdemn fasl,lisp;\r"

### more lisplib stuff
respond "*" "complr\013"
respond "_" "liblsp;_libdoc;%print\r"
respond "_" "liblsp;_libdoc;6bit\r"
respond "_" "liblsp;_libdoc;apropo\r"
respond "_" "liblsp;_libdoc;arith\r"
respond "_" "liblsp;_libdoc;aryfil\r"
respond "_" "liblsp;_libdoc;atan\r"
respond "_" "liblsp;_libdoc;autodf\r"
respond "_" "liblsp;_libdoc;bboole\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;bench\r"
respond "_" "liblsp;_libdoc;binprt\r"
respond "_" "liblsp;_lmlib;gprint\r"
respond "_" "liblsp;_libdoc;carcdr\r"
respond "_" "liblsp;_libdoc;char\r"
respond "_" "liblsp;_libdoc;debug*\r"
respond "_" "liblsp;_libdoc;defsta\r"
respond "_" "liblsp;_libdoc;doctor\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;dow\r"
respond "_" "liblsp;_libdoc;dribbl\r"
respond "_" "liblsp;_libdoc;dumpgc\r"
respond "_" "liblsp;_libdoc;fake-s\r"
respond "_" "liblsp;_libdoc;fforma\r"
respond "_" "liblsp;_libdoc;filbit\r"
respond "_" "liblsp;_libdoc;fload\r"
respond "_" "liblsp;_libdoc;fontrd\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;for\r"
respond "_" "lisp;_lspsrc;gcdemn\r"
respond "_" "liblsp;_libdoc;genfns\r"
respond "_" "liblsp;_libdoc;graphs\r"
respond "_" "liblsp;_libdoc;graphm\r"
respond "_" "liblsp;_libdoc;graph$\r"
respond "_" "liblsp;_libdoc;grapha\r"
respond "_" "liblsp;_libdoc;grapht\r"
respond "_" "liblsp;_libdoc;impdef\r"
respond "_" "liblsp;_libdoc;laugh\r"
respond "_" "liblsp;_libdoc;lets\r"
respond "_" "liblsp;_libdoc;linere\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":delete libdoc;gcdemn 999999\r"
respond "*" ":link libdoc;gcdemn 999999,lspsrc;gcdemn >\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;loop\r"
respond "_" "liblsp;_libdoc;more\r"
respond "_" "liblsp;_libdoc;nshare\r"
respond "_" "liblsp;_libdoc;octal\r"
respond "_" "liblsp;_libdoc;optdef\r"
respond "_" "liblsp;_libdoc;phsprt\r"
respond "_" "liblsp;_libdoc;privob\r"
respond "_" "liblsp;_libdoc;prompt\r"
respond "_" "liblsp;_libdoc;qtrace\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;reads\r"
respond "_" "liblsp;_libdoc;redo\r"
respond "_" "liblsp;_libdoc;save\r"
respond "_" "liblsp;_libdoc;sets\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;share\r"
respond "_" "liblsp;_libdoc;sixbit\r"
respond "_" "liblsp;_libdoc;split\r"
respond "_" "liblsp;_libdoc;stack\r"
respond "_" "liblsp;_libdoc;statty\r"
respond "_" "liblsp;_libdoc;stepmm\r"
respond "_" "liblsp;_libdoc;stepr\r"
respond "_" "liblsp;_libdoc;string\r"
respond "_" "liblsp;_libdoc;sun\r"
respond "_" "liblsp;_libdoc;trap\r"
respond "_" "liblsp;_libdoc;ttyhak\r"
respond "_" "liblsp;_libdoc;wifs\r"
respond "_" "liblsp;_libdoc;window\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":link liblsp;defvst fasl,lisp;\r"
respond "*" ":link liblsp;format fasl,liblsp;fforma fasl\r"
respond "*" ":link libdoc;lispt info,info;lispt >\r"
respond "*" ":link liblsp;sharpm fasl,lisp;\r"
respond "*" ":copy nilcom;sharpm >,libdoc;sharpm nil\r"
respond "*" ":link libdoc;step info,.info.;\r"
respond "*" ":link libdoc;stepmm info,.info.;lisp stepmm\r"
respond "*" ":copy nilcom;string >,libdoc;string nil\r"

# can't build any more LIBLSP FASLs because directory is full
# cleanup unfasl files in lisp;
respond "*" ":dired liblsp;\r"
respond "@" "delete * unfasl\r"
respond "Delete? (Y or N):" "y"
respond "@" "q\r"
expect ":KILL"

respond "*" "complr\013"
respond "_" "\007"
respond "*" "(load '((libdoc) set ira10))"
respond "T" "(maklap)"
respond "_" "liblsp;_libdoc;askusr\r"
respond "_" "liblsp;_pratt;cgrub\r"
respond "_" "\032"
type ":kill\r"

# compile cgol
respond "*" "complr\013"
respond "_" "lisp;_pratt;cgol\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "\007"
respond "*" "(load '((lisp) cgol fasl))"
respond_load "(maklap)"
respond "_" "liblsp;_pratt;cgprin\r"
respond "_" "\032"
type ":kill\r"

# clean up remaining unfasl files in liblsp
respond "*" ":dired liblsp;\r"
respond "@" "delete * unfasl\r"
respond "Delete? (Y or N):" "y"
respond "@" "q\r"
expect ":KILL"

respond "*" "complr\013"
respond "_" "\007"
respond "*" "(sstatus features Compile-Subload)"
respond "COMPILE-SUBLOAD" "(maklap)"
respond "_" "lisp;_nilcom;subloa\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":midas liblsp;_libdoc;bssq\r"
respond "*" ":midas liblsp;_libdoc;aryadr\r"
respond "*" ":midas liblsp;_libdoc;link\r"
respond "*" ":midas liblsp;_libdoc;lscall\r"
respond "*" ":midas liblsp;_libdoc;cpyhnk\r"

respond "*" ":link lisp;defns mid,l;defns >\r"
respond "*" ":midas liblsp;_libdoc;fft\r"
respond "*" ":midas liblsp;_libdoc;phase\r"

# More LIBLSP packages
respond "*" "complr\013"
respond "_" "liblsp;_libdoc;didl\r"
respond "_" "liblsp;_libdoc;getsyn\r"
respond "_" "liblsp;_libdoc;iter\r"
respond "_" "liblsp;_libdoc;hash\r"
respond "_" "liblsp;_libdoc;graph3\r"
respond "_" "liblsp;_libdoc;ledit*\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;stacks\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":midas liblsp;_libdoc;dirsiz\r"
respond "*" ":midas liblsp;_z;timer\r"

respond "*" ":link lisp;vsaid lisp,nilcom;vsaid >\r"
respond "*" "complr\013"
respond "_" "lisp;_nilcom;vsaid\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":link liblsp;vsaid fasl,lisp;\r"

# cleanup unfasl files in lisp;
respond "*" ":dired lisp;\r"
respond "@" "delete * unfasl\r"
respond "Delete? (Y or N):" "y"
respond "@" "q\r"
expect ":KILL"

respond "*" ":midas liblsp;_gsb;ttyvar\r"
respond "Use what filename instead?" "lisp;\r"
expect ":KILL"

respond "*" ":midas liblsp;_libdoc;aryadr\r"
expect ":KILL"
respond "*" ":midas liblsp;_libdoc;bssq\r"
expect ":KILL"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;lddt\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;ndone\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":link graphs;graph3 fasl,liblsp\r"
respond "*" ":link graphs;plot3 fasl,liblsp\r"
respond "*" ":link graphs;plot fasl,liblsp\r"
respond "*" "complr\013"
respond "_" "liblsp;_libdoc;plot\r"
respond "_" "liblsp;_libdoc;plot3\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;prime\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;step\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "liblsp;_libdoc;utils\r"
respond "_" "\032"
type ":kill\r"

# cleanup unfasl files in liblsp;
respond "*" ":dired liblsp;\r"
respond "@" "delete * unfasl\r"
respond "Delete? (Y or N):" "y"
respond "@" "q\r"
expect ":KILL"

# DEFSET
respond "*" "complr\013"
respond "_" "lisp;_nilcom;defset\r"
respond "_" "\032"
type ":kill\r"

# compile some lisp; libraries
respond "*" "complr\013"
respond "_" "lisp;_nilcom;cnvd\r"
respond "_" "lisp;_lspsrc;exthuk\r"
respond "_" "lisp;_lspsrc;gfile\r"
respond "_" "lisp;_lspsrc;gfn\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "lisp;_lspsrc;querio\r"
respond "_" "lisp;_lspsrc;vector\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":midas lisp;_lspsrc;sendi\r"
expect ":KILL"
respond "*" ":midas lisp;_lspsrc;straux\r"
expect ":KILL"

# lispt source is in libdoc, therefore fasl should be in liblsp
# version in lisp; should be a link to liblsp;lispf fasl
respond "*" ":delete lisp;lispt fasl\r"
respond "*" ":link lisp;lispt fasl,liblsp;\r"
respond "*" ":link sys2;ts lispt,sys2;ts edit\r"

# Lisp display library
respond "*" ":midas lisp; slave fasl_l; slave\r"
expect ":KILL"

# Lisp display slave, PDP-6 and PDP-10 versions.
respond "*" ":midas sys; atsign 6slave_sysen2; ld10\r"
respond "   PDP6F = " "1\r"
expect ":KILL"
respond "*" ":midas sys; atsign 10slav_sysen2; ld10\r"
respond "   PDP6F = " "0\r"
respond "GT40F=" "1\r"
expect ":KILL"

# animal
respond "*" "complr\013"
respond "_" "games;_games;parse\r"
respond "_" "games;_games;pattrn\r"
respond "_" "games;_games;words\r"
respond "_" "games;_games;word\r"
respond "_" "\032"
type ":kill\r"

respond "*" "complr\013"
respond "_" "games;_games;animal 133\r"
respond "_" "\032"
type ":kill\r"

respond "*" "l\013"
respond "Alloc?" "n"
respond "*" "(load '((games) animal fasl))"
respond_load "(dump '((games) ts animal))"
expect "KILL"

# think
respond "*" "complr\013"
respond "_" "games;_games;think\r"
respond "_" "\032"
type ":kill\r"

# wa
respond "*" "complr\013"
respond "_" "games;_games;wa 10\r"
respond "_" "\032"
type ":kill\r"

# chase
respond "*" "complr\013"
respond "_" "games;_chase\r"
respond "_" "\032"
type ":kill\r"

# yahtze
respond "*" "complr\013"
respond "_" "sca;macros\r"
respond "_" "sca;modeb\r"
respond "_" "\032"
type ":kill\r"

# note sca;mode > will not compile. Yahtze will load it interpreted

respond "*" "complr\013"
respond "_" "games;yahtze\r"
respond "_" "\032"
type ":kill\r"

# ITSter
respond "*" "complr\013"
respond "_" "games;_hibou;itster\r"
respond "_" "\032"
type ":kill\r"

# Knight TV Spacewar
respond "*" ":lisp gjd; sine lisp\r"
expect ":KILL"
respond "*" ":midas games;ts tvwar_spcwar; tvwar\r"
expect ":KILL"

# Kermit
respond "*" ":link math;defset fasl,lisp;\r"
respond "*" ":complr\r"
respond "_" "math;common\r"
respond "_" "math;kermit\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":lisp math; kermit dumper\r"
respond "to dump.|" "(kermit-dump)"
expect ":KILL"
respond "*" ":link sys3;ts kermit,math;\r"

# SUPDUP ARDS
respond "*" ":complr\r"
respond "_" "dcp;sgincl\r"
respond "_" "dcp;supard\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":lisp\r"
respond "Alloc?" "n"
respond "*" {(load "dcp;supard")}
respond "system program" "(bootstrap)"

# ARDS to SVG converter
respond "*" ":complr\r"
respond "_" "victor; ards\r"
respond "_" "\032"
type ":kill\r"

# Forth
respond "*" ":complr\r"
respond "_" "kle;forth\r"
respond "_" "\032"
type ":kill\r"

# ULisp
respond "*" ":complr\r"
respond "_" "teach; ulisp\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":lisp\r"
respond "Alloc?" "n\r"
respond "*" "(load '((teach) ulisp))"
expect -re {\n[1-7]}
respond "\n" {(dump "teach; ts ulisp")}
respond ":" "t\r"
respond ":" "emacs\r"
respond ":" "edit\r"
respond ":" "script\r"
respond ":" "nil\r"
respond ":" "nil\r"
respond ":" "t\r"
respond ":" "t\r"
respond "\n" ":vk\r"
respond "*" ":kill\r"

# AS8748
respond "*" ":complr\r"
respond "_" "lmio1;as8748\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":complr\r"
respond "_" "moon;8478sa\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":lisp\r"
respond "Alloc?" "n"
respond "*" "(load '((lmio1) as8748))"
respond_load "(load '((lmio1) ukbd))"
respond "T" "(as 'ukbd)"
respond "UKBD" "(quit)"
expect ":KILL"

# Lisp Logo
respond "*" ":cwd llogo\r"
respond "*" ":complr\r"
respond "_" "germ\r"
respond "_" "ioc\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":complr\r"
respond "_" "\007"
respond "*" "(load 'ioc)"
respond_load "(load 'define)"
respond "T" "(maklap)"
respond "_" "define\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":complr\r"
respond "_" "\007"
respond "*" "(load 'ioc)"
respond_load "(load 'define)"
respond_load "(maklap)"
respond "_" "error\r"
respond "_" "parser\r"
respond "_" "primit\r"
respond "_" "print\r"
respond "_" "reader\r"
respond "_" "setup\r"
respond "_" "unedit\r"
respond "_" "music\r"
respond "_" "turtle\r"
respond "_" "tvrtle\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":lisp loader\r"
respond "?" "Y\r"
respond "?" "LLOGO\r"
respond "?" "1700\r"
expect ":KILL"
respond "*" ":link sys1; ts llogo, llogo; ts llogo\r"

# TEACH;TS XLISP

respond "*" ":complr\r"
respond "_" "teach;macro\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":complr\r"
respond "_" "teach;apropos\r"
respond "_" "teach;compla\r"
respond "_" "teach;databa\r"
respond "_" "teach;errhan\r"
respond "_" "teach;errhel\r"
respond "_" "teach;exlist\r"
respond "_" "teach;io\r"
respond "_" "teach;lessn\r"
respond "_" "teach;more\r"
respond "_" "teach;record\r"
respond "_" "teach;teach\r"
respond "_" "teach;treepr\r"
respond "_" "\032"
type ":kill\r"

respond "*" ":lisp\r"
respond "Alloc?" "n"
respond "*" "(load '((teach) start))"
respond "T" "(load '((teach) teach dump))"
expect ":KILL"

respond "*" ":rename teach;ts xlisp,ts lisp\r"

# Munching squares for display terminals.
respond "*" ":complr\r"
respond "_" "lars; munch lisp\r"
respond "_" "\032"
type ":kill\r"

# CUBE, Rubik's cube by Bernard Greenberg.
respond "*" ":complr\r"
respond "_" "bsg;cube\r"
respond "_" "bsg;cutils\r"
respond "_" "bsg;csolve\r"
respond "_" "bsg;cinput\r"
respond "_" "bsg;cxfrm\r"
respond "_" "\032"
type ":kill\r"
respond "*" ":lisp\r"
respond "Alloc?" "n"
respond "*" {(load "bsg;cdriv")}
respond "T" "(make-cube)"
respond "*" ":pdump sys3;ts cube\r"
respond "*" ":kill\r"
