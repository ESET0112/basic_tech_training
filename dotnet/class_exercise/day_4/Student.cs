using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace data_structure_2
{
    internal class Student
    {
        public int id;
        public string name;
        public int marks;

        public Student()
        {

        }
        public Student(int s_id, string s_name, int s_marks)
        {
            id = s_id;
            name = s_name;
            marks = s_marks;
        }
    }
}
