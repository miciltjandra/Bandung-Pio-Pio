class KMPTools
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

    public int KMP()
    {
        int i, j, m, n;
        int[] fail;

        fail = hitungFail(keyinput);
        m = keyinput.Length;
        n = strinput.Length;
        i = 0;
        j = 0;

        while (i < n)
        {
            if (keyinput[j] == strinput[i])
            {
                if (j == m - 1)
                {
                    return i - m + 1;
                }
                i++;
                j++;
            }
            else if (j > 0)
            {
                j = fail[j - 1];
            }
            else
            {
                i++;
            }
        }
        return -1;
    }

    public int[] hitungFail(string keyinput)
    {
        int[] fail = new int[keyinput.Length];
        int m, j, i;

        fail[0] = 0;
        m = keyinput.Length;
        j = 0;
        i = 1;

        while (i < m)
        {
            if (keyinput[j] == keyinput[i])
            {
                fail[i] = j + 1;
                i++;
                j++;
            }
            else if (j > 0)
            {
                j = fail[j - 1];
            }
            else
            {
                fail[i] = 0;
                i++;
            }
        }
        return fail;
    }

    /*static void Main(string[] args)
    {
        KMPTools K = new KMPTools();
        int pos;
        K.inputString();
        pos = K.KMP();
        Console.WriteLine("INDEX AWAL 0 - SINGLE RESULT");
        Console.Write("Posisi karakter: ");
        Console.WriteLine(pos);
    }*/
}