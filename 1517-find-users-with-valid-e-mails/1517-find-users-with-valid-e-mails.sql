# Write your MySQL query statement below
select *
from Users
where mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$'

# ^: Menandakan awal dari string.
# [A-Za-z]: Cocokkan dengan huruf mana pun (besar atau kecil) di awal string.
# [A-Za-z0-9_.-]*: Cocokkan nol atau lebih kemunculan dari huruf (besar atau kecil), angka, garis bawah '_', titik '.',     atau tanda hubung '-' setelah huruf pertama.
# @: Cocokkan dengan karakter '@' tepat sekali.
# leetcode\\.com: Cocokkan dengan string "leetcode.com" tepat sekali. Karena titik '.' adalah karakter khusus dalam regex,   kita perlu menggunakan dua backslash (\) untuk menghindari menganggapnya sebagai metakarakter.
# +: Menandakan satu atau lebih kemunculan dari pola sebelumnya.
# $: Menandakan akhir dari string.

# Salah, '^[A-Za-z][A-Za-z0-9_.-]*@[leetcode.com]+$'
# Contoh lain Regex, '^[A-Za-z][A-Za-z0-9_.-]*@[A-Za-z0-9_.-]+$'