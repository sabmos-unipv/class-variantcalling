07-11
root@codespaces-bd7a61:/workspaces/class-variantcalling# pwd
/workspaces/class-variantcalling
root@codespaces-bd7a61:/workspaces/class-variantcalling# cd class-bsa/
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa# cd L12_unix_continue/
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# titolo="macro_analysis_report"
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo $titolo
macro_analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo}
macro_analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo}new
macro_analysis_reportnew
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo $titolonew

root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo#macro_}
analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo#macro}
_analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo#macr}
o_analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo#pippo}
macro_analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo#analysis}
macro_analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo%report}
macro_analysis_
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo%_report}
macro_analysis
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo%repor}
macro_analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo $titolo
macro_analysis_report
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo ${titolo#macro} | echo ${titolo%report}
macro_analysis_
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# ls -l
total 12
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_files
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_read
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 sed
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# touch report.txt
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# ls -l
total 12
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_files
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_read
-rw-rw-rw-  1 root root    0 Nov  7 10:23 report.txt
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 sed
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# nomefile="report.txt"
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# echo $nomefile
report.txt
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# mv report.txt report.tsv
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# les -l
bash: les: command not found
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# ls -l
total 12
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_files
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_read
-rw-rw-rw-  1 root root    0 Nov  7 10:23 report.tsv
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 sed
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# mv report.tsv $nomefile
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# ls -l
total 12
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_files
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_read
-rw-rw-rw-  1 root root    0 Nov  7 10:23 report.txt
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 sed
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# mv ${nomefile} ${nomefile%txt}tsv
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# ls -l
total 12
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_files
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_read
-rw-rw-rw-  1 root root    0 Nov  7 10:23 report.tsv
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 sed
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# for i in {1..5}
> do
> echo "il numero di questo giro $i"
> done
il numero di questo giro 1
il numero di questo giro 2
il numero di questo giro 3
il numero di questo giro 4
il numero di questo giro 5
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# for num in {1..5}
> do
> echo "il mio numero preferito = $sum"
> done
il mio numero preferito = 
il mio numero preferito = 
il mio numero preferito = 
il mio numero preferito = 
il mio numero preferito = 
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# for num in {1..5}
> do
> echo "il mio numero preferito = $num"
> done
il mio numero preferito = 1
il mio numero preferito = 2
il mio numero preferito = 3
il mio numero preferito = 4
il mio numero preferito = 5
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# ls -l
total 12
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_files
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_read
-rw-rw-rw-  1 root root    0 Nov  7 10:23 report.tsv
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 sed
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# cd loop_files/
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# ls -l
total 0
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_10.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_10.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_1.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_1.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_2.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_2.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_3.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_3.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_4.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_4.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_5.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_5.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_6.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_6.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_7.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_7.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_8.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_8.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_9.bai
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_9.bam
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# ls *.bam
sample_10.bam  sample_1.bam  sample_2.bam  sample_3.bam  sample_4.bam  sample_5.bam  sample_6.bam  sample_7.bam  sample_8.bam  sample_9.bam
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# ls -l *.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_10.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_1.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_2.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_3.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_4.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_5.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_6.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_7.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_8.bam
-rw-rw-rw- 1 root root 0 Nov  7 09:54 sample_9.bam
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# ls *.bai
sample_10.bai  sample_1.bai  sample_2.bai  sample_3.bai  sample_4.bai  sample_5.bai  sample_6.bai  sample_7.bai  sample_8.bai  sample_9.bai
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# for test in $(ls *.bam)
> do
> echo $test
> done
sample_10.bam
sample_1.bam
sample_2.bam
sample_3.bam
sample_4.bam
sample_5.bam
sample_6.bam
sample_7.bam
sample_8.bam
sample_9.bam
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# for filename in `ls *.bam`
> do
> echo "il mio file preferito = $filename"
> done
il mio file preferito = sample_10.bam
il mio file preferito = sample_1.bam
il mio file preferito = sample_2.bam
il mio file preferito = sample_3.bam
il mio file preferito = sample_4.bam
il mio file preferito = sample_5.bam
il mio file preferito = sample_6.bam
il mio file preferito = sample_7.bam
il mio file preferito = sample_8.bam
il mio file preferito = sample_9.bam
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# fore filename in $(ls *.bam);
bash: fore: command not found
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# for filename in $(ls *.bam);
> do
> echo "il mio file preferito" = $filename"
> done
> 
> 
for filename in $(ls *.bam); do echo "il mio file preferito" = $filename"
> done

soluzione prof + casino

gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling$ cd class-bsa/
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa$ cd L12_unix_continue/loop_files/
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files$ ls
sample_10.bai  sample_1.bai  sample_2.bai  sample_3.bai  sample_4.bai  sample_5.bai  sample_6.bai  sample_7.bai  sample_8.bai  sample_9.bai
sample_10.bam  sample_1.bam  sample_2.bam  sample_3.bam  sample_4.bam  sample_5.bam  sample_6.bam  sample_7.bam  sample_8.bam  sample_9.bam
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files$ for filename in $(ls *.bai);do mv $filename ${filename%bai}bam.bai; done
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files$ ls -l
total 0
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_10.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_10.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_1.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_1.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_2.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_2.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_3.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_3.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_4.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_4.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_5.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_5.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_6.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_6.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_7.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_7.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_8.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_8.bam.bai
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_9.bam
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:20 sample_9.bam.bai
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files$ mkdir disastro
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files$ cd disastro/
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files/disastro$ for num in {1..9}
> do
> touch "file_test${num}.txt"
> done
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files/disastro$ ls -l
total 0
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test1.txt
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test2.txt
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test3.txt
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test4.txt
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test5.txt
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test6.txt
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test7.txt
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test8.txt
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 file_test9.txt
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files/disastro$ for filename in $(ls *.txt)
> do
> mv $filename {filename%bai}bam.bai
> done
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files/disastro$ ls -l
total 0
-rw-r--r-- 1 gitpod gitpod 0 Nov  7 19:34 {filename%bai}bam.bai
gitpod@sabmosunipv-classvarian-1li88xud6d7:/workspace/class-variantcalling/class-bsa/L12_unix_continue/loop_files/disastro$

root@codespaces-bd7a61:/workspaces/class-variantcalling# cd class-bsa/
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa# cd L12_unix_continue/
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# cd loop_f
bash: cd: loop_f: No such file or directory
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# cd loop_files/
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# ls
sample_10.bai  sample_1.bai  sample_2.bai  sample_3.bai  sample_4.bai  sample_5.bai  sample_6.bai  sample_7.bai  sample_8.bai  sample_9.bai
sample_10.bam  sample_1.bam  sample_2.bam  sample_3.bam  sample_4.bam  sample_5.bam  sample_6.bam  sample_7.bam  sample_8.bam  sample_9.bam
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# for filename in $(ls *.bai)
> do
> echo "mv $filename ${filename%bai}bam.bai"
> done
mv sample_10.bai sample_10.bam.bai
mv sample_1.bai sample_1.bam.bai
mv sample_2.bai sample_2.bam.bai
mv sample_3.bai sample_3.bam.bai
mv sample_4.bai sample_4.bam.bai
mv sample_5.bai sample_5.bam.bai
mv sample_6.bai sample_6.bam.bai
mv sample_7.bai sample_7.bam.bai
mv sample_8.bai sample_8.bam.bai
mv sample_9.bai sample_9.bam.bai
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# for filename in $(ls *.bai)
> do
> mv $filename ${filename%bai}bam.bai
> done
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# ls
sample_10.bam      sample_1.bam.bai  sample_3.bam      sample_4.bam.bai  sample_6.bam      sample_7.bam.bai  sample_9.bam
sample_10.bam.bai  sample_2.bam      sample_3.bam.bai  sample_5.bam      sample_6.bam.bai  sample_8.bam      sample_9.bam.bai
sample_1.bam       sample_2.bam.bai  sample_4.bam      sample_5.bam.bai  sample_7.bam      sample_8.bam.bai
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/loop_files# cd ..
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# ls -l
total 12
drwxrwxrwx+ 2 root root 4096 Nov  7 11:26 loop_files
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 loop_read
-rw-rw-rw-  1 root root    0 Nov  7 10:23 report.tsv
drwxrwxrwx+ 2 root root 4096 Nov  7 09:54 sed
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue# cd sed/
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# ls -l
total 12
-rw-rw-rw- 1 root root  35 Nov  7 09:54 test.txt
-rw-rw-rw- 1 root root 729 Nov  7 09:54 test.vcf
-rw-rw-rw- 1 root root 189 Nov  7 09:54 unix.txt
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# echo "I love the day"
I love the day
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# echo "I love the day" | sed 's/day/night/'
I love the night
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# cat test.txt
day     one
day     two
day     three
day     four
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# sed 's/day/night' test.txt
sed: -e expression #1, char 11: unterminated `s' command
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# cat test.txt
day     one
day     two
day     three
day     four
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# sed 's/day/night/' test.txt
night   one
night   two
night   three
night   four
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# cat test.txt
day     one
day     two
day     three
day     four
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# ls -l
total 12
-rw-rw-rw- 1 root root  35 Nov  7 09:54 test.txt
-rw-rw-rw- 1 root root 729 Nov  7 09:54 test.vcf
-rw-rw-rw- 1 root root 189 Nov  7 09:54 unix.txt
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# cat unix.txt
unix is great os. unix is opensource. unix is free os.
learn operating system.
unix linux which one you choose.
unix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# sed 's/unix/linux/' unix.txt
linux is great os. unix is opensource. unix is free os.
learn operating system.
linux linux which one you choose.
linux is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# sed 's/unix/linux/g' unix.txt
linux is great os. linux is opensource. linux is free os.
learn operating system.
linux linux which one you choose.
linux is easy to learn.linux is a multiuser os.Learn linux .linux is a powerful.
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# ls -l
total 12
-rw-rw-rw- 1 root root  35 Nov  7 09:54 test.txt
-rw-rw-rw- 1 root root 729 Nov  7 09:54 test.vcf
-rw-rw-rw- 1 root root 189 Nov  7 09:54 unix.txt
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# cat test.vcf
##fileformat=VCFv4.0
##fileDate=20090805
##phasing=partial
##FILTER=<ID=q10,Description="Quality below 10">
##FILTER=<ID=s50,Description="Less than 50% of samples have data">
##FORMAT=<ID=GT,Number=1,Type=String,Description="Genotype">
##ALT=<ID=DEL:ME:ALU,Description="Deletion of ALU element">
##ALT=<ID=CNV,Description="Copy number variable region">
#CHROM  POS     ID      REF     ALT     QUAL    FILTER  INFO    FORMAT  NA00001
chr19   111     .       A       C       9.6     PASS    .       GT      0|0
chr19   112     .       A       G       10      PASS    .       GT      0|0
chr20   14370   .       G       A       29      PASS    .       GT      0|0
chr20   17330   .       T       A       3       q10     .       GT      0|0
chr20   1110696 .       A       G,T     67      PASS    .       GT      1|2
chr20   1230237 .       T       .       47      PASS    .       GT      0|0
chr20   1234567 .       G       GA,GAC  50      PASS    .       GT      0/1
chr20   1235237 .       T       .       .       .       .       GT      0/0
chrX    10      .       AC      A,ATG   10      PASS    .       GT      0/1
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# sed 's/chr//' test.vcf
##fileformat=VCFv4.0
##fileDate=20090805
##phasing=partial
##FILTER=<ID=q10,Description="Quality below 10">
##FILTER=<ID=s50,Description="Less than 50% of samples have data">
##FORMAT=<ID=GT,Number=1,Type=String,Description="Genotype">
##ALT=<ID=DEL:ME:ALU,Description="Deletion of ALU element">
##ALT=<ID=CNV,Description="Copy number variable region">
#CHROM  POS     ID      REF     ALT     QUAL    FILTER  INFO    FORMAT  NA00001
19      111     .       A       C       9.6     PASS    .       GT      0|0
19      112     .       A       G       10      PASS    .       GT      0|0
20      14370   .       G       A       29      PASS    .       GT      0|0
20      17330   .       T       A       3       q10     .       GT      0|0
20      1110696 .       A       G,T     67      PASS    .       GT      1|2
20      1230237 .       T       .       47      PASS    .       GT      0|0
20      1234567 .       G       GA,GAC  50      PASS    .       GT      0/1
20      1235237 .       T       .       .       .       .       GT      0/0
X       10      .       AC      A,ATG   10      PASS    .       GT      0/1
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# sed -r 's/(^.+)\|(.+$)/\1\/\2/' test.vcf
##fileformat=VCFv4.0
##fileDate=20090805
##phasing=partial
##FILTER=<ID=q10,Description="Quality below 10">
##FILTER=<ID=s50,Description="Less than 50% of samples have data">
##FORMAT=<ID=GT,Number=1,Type=String,Description="Genotype">
##ALT=<ID=DEL:ME:ALU,Description="Deletion of ALU element">
##ALT=<ID=CNV,Description="Copy number variable region">
#CHROM  POS     ID      REF     ALT     QUAL    FILTER  INFO    FORMAT  NA00001
chr19   111     .       A       C       9.6     PASS    .       GT      0/0
chr19   112     .       A       G       10      PASS    .       GT      0/0
chr20   14370   .       G       A       29      PASS    .       GT      0/0
chr20   17330   .       T       A       3       q10     .       GT      0/0
chr20   1110696 .       A       G,T     67      PASS    .       GT      1/2
chr20   1230237 .       T       .       47      PASS    .       GT      0/0
chr20   1234567 .       G       GA,GAC  50      PASS    .       GT      0/1
chr20   1235237 .       T       .       .       .       .       GT      0/0
chrX    10      .       AC      A,ATG   10      PASS    .       GT      0/1
root@codespaces-bd7a61:/workspaces/class-variantcalling/class-bsa/L12_unix_continue/sed# git add *