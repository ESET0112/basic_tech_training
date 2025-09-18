namespace dlms_assignment_2
{
    // OBIS Code class 
    public class ObisCode
    {
        public byte A { get; set; }
        public byte B { get; set; }
        public byte C { get; set; }
        public byte D { get; set; }
        public byte E { get; set; }
        public byte F { get; set; }

        public ObisCode(byte a, byte b, byte c, byte d, byte e, byte f)
        {
            A = a; B = b; C = c; D = d; E = e; F = f;
        }

        public byte[] ToByteArray()
        {
            return new byte[] { A, B, C, D, E, F };
        }

        public override string ToString()
        {
            return $"{A}-{B}:{C}.{D}.{E}.{F}";
        }
    }

    // Meter Object class to store OBIS data
    public class MeterObject
    {
        public ObisCode Obis { get; set; }
        public string Name { get; set; }
        public int Value { get; set; }

        public MeterObject(ObisCode obis, string name, int value)
        {
            Obis = obis;
            Name = name;
            Value = value;
        }
    }

    // DLMS Service class containing your get/set methods
    public static class DlmsService
    {
        private static List<MeterObject> meterObjects = new List<MeterObject>();
        private static int meterObjectCount = 0;

        // Initialize with some example meter objects
        static DlmsService()
        {
            // Add some sample meter objects
            AddMeterObject(new ObisCode(1, 0, 1, 8, 0, 255), "Active Energy Import", 12345);
            AddMeterObject(new ObisCode(1, 0, 2, 8, 0, 255), "Active Energy Export", 6789);
            AddMeterObject(new ObisCode(1, 0, 1, 7, 0, 255), "Active Power", 1500);
        }

        public static void AddMeterObject(ObisCode obis, string name, int value)
        {
            meterObjects.Add(new MeterObject(obis, name, value));
            meterObjectCount++;
        }

        public static void DlmsGet(ObisCode obis)
        {
            byte[] obisBytes = obis.ToByteArray();

            for (int i = 0; i < meterObjectCount; i++)
            {
                if (ObisMatch(obisBytes, meterObjects[i].Obis.ToByteArray()))
                {
                    Console.WriteLine($"[GET] {meterObjects[i].Name} = {meterObjects[i].Value}");
                    return;
                }
            }
            Console.WriteLine("[GET] OBIS not found.");
        }

        public static void DlmsSet(ObisCode obis, int newValue)
        {
            byte[] obisBytes = obis.ToByteArray();

            for (int i = 0; i < meterObjectCount; i++)
            {
                if (ObisMatch(obisBytes, meterObjects[i].Obis.ToByteArray()))
                {
                    meterObjects[i].Value = newValue;
                    Console.WriteLine($"[SET] {meterObjects[i].Name} updated to {newValue}");
                    return;
                }
            }
            Console.WriteLine("[SET] OBIS not found.");
        }

        private static bool ObisMatch(byte[] obis1, byte[] obis2)
        {
            if (obis1.Length != obis2.Length) return false;
            for (int i = 0; i < obis1.Length; i++)
            {
                if (obis1[i] != obis2[i]) return false;
            }
            return true;
        }
    }

    // GET Request APDU builder 
    public class GetRequestApdu
    {
        public static byte[] CreateGetRequest(ObisCode obis, ushort classId, byte attributeId)
        {
            List<byte> apdu = new List<byte>();

            // GET-Request tag
            apdu.Add(0xC0); // GET-Request
            apdu.Add(0x01); // Get-Request-Normal
            // Invoke ID and Priority
            apdu.Add(0x01); // Example: Invoke ID = 1, normal priority

            // Class ID (2 bytes)
            apdu.Add((byte)(classId >> 8)); // High byte
            apdu.Add((byte)(classId & 0xFF)); // Low byte

            // OBIS code
            apdu.AddRange(obis.ToByteArray());

            // Attribute ID
            apdu.Add(attributeId);

            // Access Selector (0 = no selective access)
            apdu.Add(0x00);

            return apdu.ToArray();
        }
    }

    class Program
    {
        static void Main(string[] args)
        {
            // OBIS code for Active Energy Import (1-0:1.8.0.255)
            var obis = new ObisCode(1, 0, 1, 8, 0, 255);
            ushort classId = 3;
            byte attributeId = 2;

            byte[] apdu = GetRequestApdu.CreateGetRequest(obis, classId, attributeId);

            Console.WriteLine("OBIS Code: " + obis);
            Console.WriteLine("GET Request APDU: " + BitConverter.ToString(apdu));
            Console.WriteLine();

            // DLMS get/set methods
            Console.WriteLine("Testing DLMS Get/Set functionality:");

            // Test GET
            DlmsService.DlmsGet(new ObisCode(1, 0, 1, 8, 0, 255)); // Should find
            

            // Test SET
            DlmsService.DlmsSet(new ObisCode(1, 0, 1, 8, 0, 255), 99999); // Update existing
            

            // Verify the change
            DlmsService.DlmsGet(new ObisCode(1, 0, 1, 8, 0, 255)); // Should show updated value
            Console.ReadKey();
        }
    }
}

