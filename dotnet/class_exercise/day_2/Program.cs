namespace class_demo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            //student first = new student();
            student first = new student(10, "abcd", 25, "1234", "abcd@gmail.com");
            //first.initialize();
            first.showDisplay();
            first.name = "Nilanjan";
            first.showDisplay();
            
           
        }
    }
}
