LS(1)                                User Commands                               LS(1)



NNAAMMEE
       ls - list directory contents

SSYYNNOOPPSSIISS
       llss [_O_P_T_I_O_N]... [_F_I_L_E]...

DDEESSCCRRIIPPTTIIOONN
       List  information  about  the  FILEs  (the current directory by default).  Sort
       entries alphabetically if none of --ccffttuuvvSSUUXX nor ----ssoorrtt is specified.

       Mandatory arguments to long options are mandatory for short options too.

       --aa, ----aallll
              do not ignore entries starting with .

       --AA, ----aallmmoosstt--aallll
              do not list implied . and ..

       ----aauutthhoorr
              with --ll, print the author of each file

       --bb, ----eessccaappee
              print C-style escapes for nongraphic characters

       ----bblloocckk--ssiizzee=_S_I_Z_E
              scale sizes by SIZE before printing them.  E.g., '--block-size=M' prints
              sizes in units of 1,048,576 bytes.  See SIZE format below.

       --BB, ----iiggnnoorree--bbaacckkuuppss
              do not list implied entries ending with ~

       --cc     with  --lltt:  sort  by, and show, ctime (time of last modification of file
              status information) with --ll: show ctime and sort by name otherwise: sort
              by ctime, newest first

       --CC     list entries by columns

       ----ccoolloorr[=_W_H_E_N]
              colorize  the  output.   WHEN  defaults to 'always' or can be 'never' or
              'auto'.  More info below

       --dd, ----ddiirreeccttoorryy
              list directory entries instead of contents, and do not dereference  sym‐
              bolic links

       --DD, ----ddiirreedd
              generate output designed for Emacs' dired mode

       --ff     do not sort, enable --aaUU, disable --llss ----ccoolloorr

       --FF, ----ccllaassssiiffyy
              append indicator (one of */=>@|) to entries

       ----ffiillee--ttyyppee
              likewise, except do not append '*'

       ----ffoorrmmaatt=_W_O_R_D
              across  --xx, commas --mm, horizontal --xx, long --ll, single-column --11, verbose
              --ll, vertical --CC

       ----ffuullll--ttiimmee
              like --ll ----ttiimmee--ssttyyllee=_f_u_l_l_-_i_s_o

       --gg     like --ll, but do not list owner

       ----ggrroouupp--ddiirreeccttoorriieess--ffiirrsstt
              group directories before files.

              augment with a ----ssoorrtt option, but any use of ----ssoorrtt=_n_o_n_e  (--UU)  disables
              grouping

       --GG, ----nnoo--ggrroouupp
              in a long listing, don't print group names

       --hh, ----hhuummaann--rreeaaddaabbllee
              with --ll, print sizes in human readable format (e.g., 1K 234M 2G)

       ----ssii   likewise, but use powers of 1000 not 1024

       --HH, ----ddeerreeffeerreennccee--ccoommmmaanndd--lliinnee
              follow symbolic links listed on the command line

       ----ddeerreeffeerreennccee--ccoommmmaanndd--lliinnee--ssyymmlliinnkk--ttoo--ddiirr
              follow each command line symbolic link that points to a directory

       ----hhiiddee=_P_A_T_T_E_R_N
              do  not list implied entries matching shell PATTERN (overridden by --aa or
              --AA)

       ----iinnddiiccaattoorr--ssttyyllee=_W_O_R_D
              append indicator with style WORD to entry names: none  (default),  slash
              (--pp), file-type (----ffiillee--ttyyppee), classify (--FF)

       --ii, ----iinnooddee
              print the index number of each file

       --II, ----iiggnnoorree=_P_A_T_T_E_R_N
              do not list implied entries matching shell PATTERN

       --kk, ----kkiibbiibbyytteess
              use 1024-byte blocks

       --ll     use a long listing format

       --LL, ----ddeerreeffeerreennccee
              when  showing file information for a symbolic link, show information for
              the file the link references rather than for the link itself

       --mm     fill width with a comma separated list of entries

       --nn, ----nnuummeerriicc--uuiidd--ggiidd
              like --ll, but list numeric user and group IDs

       --NN, ----lliitteerraall
              print raw entry names (don't treat e.g. control characters specially)

       --oo     like --ll, but do not list group information

       --pp, ----iinnddiiccaattoorr--ssttyyllee=_s_l_a_s_h
              append / indicator to directories

       --qq, ----hhiiddee--ccoonnttrrooll--cchhaarrss
              print ? instead of non graphic characters

       ----sshhooww--ccoonnttrrooll--cchhaarrss
              show non graphic characters as-is (default unless program  is  'ls'  and
              output is a terminal)

       --QQ, ----qquuoottee--nnaammee
              enclose entry names in double quotes

       ----qquuoottiinngg--ssttyyllee=_W_O_R_D
              use  quoting  style  WORD  for  entry  names:  literal,  locale,  shell,
              shell-always, c, escape

       --rr, ----rreevveerrssee
              reverse order while sorting

       --RR, ----rreeccuurrssiivvee
              list subdirectories recursively

       --ss, ----ssiizzee
              print the allocated size of each file, in blocks

       --SS     sort by file size

       ----ssoorrtt=_W_O_R_D
              sort by WORD instead of name: none --UU, extension --XX, size --SS,  time  --tt,
              version --vv

       ----ttiimmee=_W_O_R_D
              with  --ll,  show  time  as  WORD  instead of modification time: atime --uu,
              access --uu, use --uu, ctime --cc, or status --cc; use specified  time  as  sort
              key if ----ssoorrtt=_t_i_m_e

       ----ttiimmee--ssttyyllee=_S_T_Y_L_E
              with  --ll, show times using style STYLE: full-iso, long-iso, iso, locale,
              +FORMAT.  FORMAT is interpreted like 'date'; if FORMAT  is  FORMAT1<new‐
              line>FORMAT2,  FORMAT1 applies to non-recent files and FORMAT2 to recent
              files; if STYLE is prefixed with 'posix-', STYLE takes effect only  out‐
              side the POSIX locale

       --tt     sort by modification time, newest first

       --TT, ----ttaabbssiizzee=_C_O_L_S
              assume tab stops at each COLS instead of 8

       --uu     with  --lltt:  sort by, and show, access time with --ll: show access time and
              sort by name otherwise: sort by access time

       --UU     do not sort; list entries in directory order

       --vv     natural sort of (version) numbers within text

       --ww, ----wwiiddtthh=_C_O_L_S
              assume screen width instead of current value

       --xx     list entries by lines instead of by columns

       --XX     sort alphabetically by entry extension

       --ZZ, ----ccoonntteexxtt
              print any SELinux security context of each file

       --11     list one file per line

       ----hheellpp display this help and exit

       ----vveerrssiioonn
              output version information and exit

       SIZE is an integer and optional unit (example: 10M is 10*1024*1024).  Units are
       K, M, G, T, P, E, Z, Y (powers of 1024) or KB, MB, ... (powers of 1000).

       Using  color  to  distinguish  file  types is disabled both by default and with
       ----ccoolloorr=_n_e_v_e_r.  With ----ccoolloorr=_a_u_t_o, ls emits color codes only when standard out‐
       put  is connected to a terminal.  The LS_COLORS environment variable can change
       the settings.  Use the dircolors command to set it.

   EExxiitt ssttaattuuss::
       0      if OK,

       1      if minor problems (e.g., cannot access subdirectory),

       2      if serious trouble (e.g., cannot access command-line argument).

AAUUTTHHOORR
       Written by Richard M. Stallman and David MacKenzie.

RREEPPOORRTTIINNGG BBUUGGSS
       Report ls bugs to bug-coreutils@gnu.org
       GNU coreutils home page: <http://www.gnu.org/software/coreutils/>
       General help using GNU software: <http://www.gnu.org/gethelp/>
       Report ls translation bugs to <http://translationproject.org/team/>

CCOOPPYYRRIIGGHHTT
       Copyright © 2013 Free Software Foundation, Inc.  License GPLv3+: GNU  GPL  ver‐
       sion 3 or later <http://gnu.org/licenses/gpl.html>.
       This is free software: you are free to change and redistribute it.  There is NO
       WARRANTY, to the extent permitted by law.

SSEEEE AALLSSOO
       The full documentation for llss is maintained as a Texinfo manual.  If  the  iinnffoo
       and llss programs are properly installed at your site, the command

              iinnffoo ccoorreeuuttiillss ''llss iinnvvooccaattiioonn''

       should give you access to the complete manual.



GNU coreutils 8.21                    March 2016                                 LS(1)
