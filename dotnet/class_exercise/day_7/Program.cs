namespace Interface
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Bike bike = new Bike();
            bike.drive();

            Car car = new Car();
            car.drive();
        }
    }
}
