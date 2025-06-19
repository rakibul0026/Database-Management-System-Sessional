select student.sid,student.name,student.age,
   Marks.subj,Marks.mark
  From student
outer Join Marks
ON student.sid=Marks.sid
