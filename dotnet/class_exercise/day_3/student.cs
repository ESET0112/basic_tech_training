using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;

namespace data_structure_demo1
{
    internal class Student
    {
        public int student_id;
        public string student_name;
        public int student_age;
        public string contact_no;
        public string emailid;
        public Student(int id, string std_name, int age, string contact, string email)    //Parameterized Constructor
        {
            student_id = id;
            student_name = std_name;
            student_age = age;
            contact_no = contact;
            emailid = email;
        }
    }
}
