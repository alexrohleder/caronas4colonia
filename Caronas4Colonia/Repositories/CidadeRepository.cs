using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Caronas4Colonia.Repositories
{
    public class CidadeRepository : AbstractRepository
    {
        protected override string getTable()
        {
            return "Cidade";
        }
    }
}