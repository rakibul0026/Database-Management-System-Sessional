select student.sid,student.name,student.age,
   Marks.subj,Marks.mark
  From student
Right Join Marks
ON student.sid=Marks.sid
