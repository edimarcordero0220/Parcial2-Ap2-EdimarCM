using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Parcial2_Ap2_EdimarCM
{
    public class Validar
    {
        public static int TOINT(string num)
        {
            int numero = 0;
            int.TryParse(num, out numero);
            return numero;
        }

        public int String(string texto)
        {
            int numero = 0;
            int.TryParse(texto, out numero);
            return numero;
        }
    }
}