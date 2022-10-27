with s8 as (
SELECT signal_index i, signal_name n from signals where device_index = 23
),
s38 as (
SELECT signal_index i, signal_name n from signals where device_index = 24
),
s67 as (
SELECT signal_index i, signal_name n from signals where device_index = 25
),
s93 as (
SELECT signal_index i, signal_name n from signals where device_index = 26
),
s123 as (
SELECT signal_index i, signal_name n from signals where device_index = 27
),
s150 as (
SELECT signal_index i, signal_name n from signals where device_index = 28
),
s218 as (
SELECT signal_index i218, signal_name n218, timeout_signal_index t218, 
s8.i   i8,     s8.n n8,
s38.i  i38,   s38.n n38,
s67.i  i67,   s67.n n67,
s93.i  i93,   s93.n n93,
s123.i i123, s123.n n123,
s150.i i150, s150.n n150
from signals 
left join s8   on s8.i   = timeout_signal_index
left join s38  on s38.i  = timeout_signal_index
left join s67  on s67.i  = timeout_signal_index
left join s93  on s93.i  = timeout_signal_index
left join s123 on s123.i = timeout_signal_index
left join s150 on s150.i = timeout_signal_index
where device_index = 22
),
s122 as (
SELECT signal_index i122, signal_name n122, 
s218.i218 i218, s218.n218 n218, 
s218.i8   i8,   s218.n8   n8,
s218.i38  i38,  s218.n38  n38,
s218.i67  i67,  s218.n67  n67,
s218.i93  i93,  s218.n93  n93,
s218.i123 i123, s218.n123 n123,
s218.i150 i150, s218.n150 n150
from signals 
left join s218 on s218.i218 = timeout_signal_index
where device_index = 21
)
SELECT 11900000 + signal_index i119, signal_name n119, timeout_signal_index t119, 
s122.i122, s122.n122, s122.i218, s122.n218, 
s122.i8,   s122.n8,
s122.i38,  s122.n38, 
s122.i67,  s122.n67, 
s122.i93,  s122.n93, 
s122.i123, s122.n123, 
s122.i150, s122.n150
FROM signals
left join s122 on timeout_signal_index = s122.i122
--left join s218 on s122.t122 = s218.i218
where signal_index = 2
order by signal_index asc