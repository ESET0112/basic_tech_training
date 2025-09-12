using System;

namespace ConsoleApp2
{
    internal class Program
    {
        
        static void Main(string[] args)
        {
            


            void add_book(ref string book_title,ref string book_author,ref int book_price, ref int book_quantity)
            {
                Console.Write("Enter book title:");
                book_title = Console.ReadLine();
                Console.Write("Enter author:");
                book_author = Console.ReadLine();
                Console.Write("Enter price:");
                book_price = Convert.ToInt32(Console.ReadLine());
                Console.Write("Enter quantity:");
                book_quantity = Convert.ToInt32(Console.ReadLine());

                Console.WriteLine("Book added successfully.");
            }

            void sell_book(ref int book_quantity)
            {
                string sell_book_title,customer;
                int sell_book_price, sell_book_quantity;
                Console.Write("Enter book title to sell: ");
                sell_book_title = Console.ReadLine();
                Console.Write("Enter quantity to sell: ");
                sell_book_quantity = Convert.ToInt32(Console.ReadLine());
                if (sell_book_quantity > book_quantity || sell_book_quantity<1)
                {
                    Console.WriteLine("\nQuantity requested not possible!! ");
                    return;
                }
                else
                {
                    book_quantity -= sell_book_quantity;
                }
                    Console.Write("Enter Customer Name: ");
                customer = Console.ReadLine();


                Console.Write("Sold "+ sell_book_quantity+ "copies of "+ sell_book_title+ "to "+ customer);
            }

            void view_book(ref string book_title, ref string book_author,ref int book_price,ref int book_quantity)
            {
                Console.WriteLine("--- Book Inventory --- ");

                Console.WriteLine("\nTitle \t\tAuthor \t\tPrice \t\tQuantity");
                Console.WriteLine(book_title + "\t\t" + book_author + "\t\t" + book_price + "\t\t"+ book_quantity);
            }



            void sales_report(ref string book_title, ref string customer,ref int book_price,ref int book_quantity)
            {
                Console.WriteLine("---Sale Report--- ");

                Console.WriteLine("\nCustomer Name\t\tBook\t\tQuantity Purchased\t\tAmount");
                Console.WriteLine(customer + "\t\t" + book_title + "\t\t" + book_quantity + "\t\t" + book_price);
            }


            string book_title="", book_author="", customer="";
            int book_price = 0, book_quantity = 0;
            int exit = 0;

            while (true)
            {
                Console.WriteLine("\n====== BOOK SHOP MENU ======");
                Console.WriteLine("1. Add Book");
                Console.WriteLine("2. Sell Book");
                Console.WriteLine("3. View Books");
                Console.WriteLine("4. View Sales Report");
                Console.WriteLine("5. Exit");
                Console.WriteLine("============================");
                Console.WriteLine("Enter your choice: ");
                int choice = Convert.ToInt32(Console.ReadLine());

                switch (choice)
                {
                    case 1:
                        add_book(ref book_title,ref book_author,ref book_price, ref book_quantity);
                        break;

                    case 2:
                        sell_book(ref book_quantity);
                        break;

                    case 3:
                        view_book(ref book_title,ref book_author, ref book_price, ref book_quantity);
                        break;
                    case 4:
                        sales_report( ref customer, ref book_title, ref book_quantity, ref book_price);
                        break;

                    case 5:
                        Console.WriteLine("Thank You");
                        return;

                    default:
                        Console.WriteLine("Please put correct input");
                        break;
                }
            }
        }
    }
}
