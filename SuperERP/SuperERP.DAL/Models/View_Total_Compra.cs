using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuperERP.Models
{
    public class View_Total_Compra
    {
        [Key]
        public int id_Compra { get; set; }
        public double total { get; set; }
    }
}
