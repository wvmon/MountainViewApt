using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ApartmentSite.Models
{
    [MetadataType(typeof(TenantMetadata))]
    public partial class Tenant
    {
    }

    [MetadataType(typeof(ApartmentMetadata))]
    public partial class Apartment
    {
    }

    [MetadataType(typeof(ContractMetadata))]
    public partial class Contract
    {
    }
}