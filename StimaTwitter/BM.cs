using System;

class BMTools
{
    string strinput;
    string keyinput;

    public void inputString(string str, string key)
    {
        //strinput = Console.ReadLine();
        //keyinput = Console.ReadLine();
        strinput = str;
        keyinput = key;
        strinput = strinput.ToLower();
        keyinput = keyinput.ToLower();
    }

    public int searchChar(char ch)
    {
        int i;
        for (i = (keyinput.Length - 1); i > -1; i--)
        {
            if (ch == keyinput[i])
            {
                return keyinput.Length - i - 1;
            }
        }
        return keyinput.Length;
    }

    public int BM()
    {
        //Console.WriteLine("INDEX AWAL 0");
        int i, j, k, geser;
        i = keyinput.Length - 1;
        j = keyinput.Length - 1;
        k = i;
        int hasil;
        bool found;
        found = false;
        hasil = -1;
        while ((k < strinput.Length) && (!found))
        {
            if ((strinput[i] == keyinput[j]) && (j >= 0))
            {
                i--;
                j--;
                if (j == -1)
                {
                    //Console.Write("Posisi karakter kata: ");
                    found = true;
                    hasil = i + 1;
                    geser = keyinput.Length;
                    i = k + geser;
                    k = i;
                    j = keyinput.Length - 1;
                }
            }
            else
            {
                geser = searchChar(strinput[i]);
                i = k + geser;
                k = i;
                j = keyinput.Length - 1;
            }
        }
        return hasil;
    }

    /*static void Main()
    {
        BMTools B = new BMTools();
        B.inputString();
        int a = B.BM();
        Console.WriteLine(a);
    }*/
}
