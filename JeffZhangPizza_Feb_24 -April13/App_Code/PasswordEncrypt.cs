using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//added
using System.Security.Cryptography;
using System.Text;

public class PasswordEncrypt
{
	public PasswordEncrypt()
	{
		
	}

    public static string encryptString(string input) {
        MD5 md5 = new MD5CryptoServiceProvider();
        md5.ComputeHash(ASCIIEncoding.ASCII.GetBytes(input));
        byte[] result = md5.Hash;
        StringBuilder strBuilder = new StringBuilder();
        for (int i = 0; i < result.Length; i++) {
            strBuilder.Append(result[i].ToString("x2"));
        }

            return strBuilder.ToString();
    }
}