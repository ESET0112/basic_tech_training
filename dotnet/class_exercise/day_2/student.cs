using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace class_demo
{
    internal class student
    {
        private int student_id;
        public string name;
        int student_age;
        string contact_no;
        string emailid;

        //public void initialize()
        //{
        //    student_id = 10;
        //    name = "abcd";
        //}

        public void showDisplay()
        {
            Console.WriteLine("Displaying object");
            Console.WriteLine(student_id);
            Console.WriteLine(name);
            Console.WriteLine(student_age);
            Console.WriteLine(contact_no);
            Console.WriteLine(emailid);
        }

        public student(int id, string std_name, int age, string contact, string email)    //Parameterized Constructor
        {
            student_id = id;
            name = std_name;
            student_age = age;
            contact_no = contact;
            emailid = email;
        }
        public student() { }   //Default Constructor


    }
}
