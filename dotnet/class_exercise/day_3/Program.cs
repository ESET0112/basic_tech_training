namespace data_structure_demo1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Student first = new Student(10, "Nilanjan", 27, "1234", "nilanjan@gmail.com");
            Student second = new Student(20, "Rishav", 28, "5678", "rishav@gmail.com");
            Student third = new Student(30, "Brijesh", 26, "8765", "brijesh@gmail.com");

            Dictionary<int, Student> studentDictionary1 = new Dictionary<int, Student>();
            Dictionary<int, Student> studentDictionary2 = new Dictionary<int, Student>();
            Dictionary<int, Student> studentDictionary3 = new Dictionary<int, Student>();

            // Add students to the dictionary
            studentDictionary1.Add(first.student_id, first);
            studentDictionary2.Add(second.student_id, second);
            studentDictionary3.Add(third.student_id, third);

            List<Dictionary<int, Student>> s = new List<Dictionary<int, Student>> { studentDictionary1, studentDictionary2, studentDictionary3 };
            Console.WriteLine("Id\t\t" + "Name\t\t" + "Age\t\t"+ "Contact_no\t\t" + "Emailid\t\t");
            foreach (Dictionary<int, Student> dictionary in s)
            {
                foreach (Student student in dictionary.Values)
                {
                    Console.WriteLine($"{student.student_id}\t\t{student.student_name}\t\t{student.student_age}\t\t{student.contact_no}\t\t{student.emailid}");
                }
            }
        }
    }
}
