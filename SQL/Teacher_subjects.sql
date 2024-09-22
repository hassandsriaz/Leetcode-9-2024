-- Rutime: 445ms | Beats: 92.18% (Depending on Connection) 
select teacher_id, count(distinct(subject_id))as cnt from teacher group by teacher_id