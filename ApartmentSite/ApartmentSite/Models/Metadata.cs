using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ApartmentSite.Models
{
    public class TenantMetadata
    {
        [StringLength(50,MinimumLength =2,ErrorMessage ="Last Name must be between 2 and 50 characters.")]
        [Display(Name = "Last Name")]
        [Required]
        public string LastName;

        [StringLength(50, MinimumLength = 2, ErrorMessage = "First Name must be between 2 and 50 characters.")]
        [Display(Name = "First Name")]
        [Required]
        public string FirstName;

       // [RegularExpression(@"(((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}) | (0-9){10}", ErrorMessage = "Invalid Phone Number. Please include Area Code.")]
        [Range (1000000000, 9999999999, ErrorMessage = "Invalid phone number. You must include the area code.")]
        public int Phone;

        [StringLength(50)]
        [EmailAddress(ErrorMessage = "Invalid Email")]
        [Required]
        public string Email;
    }

    public class ApartmentMetadata
    {
        [StringLength(50, MinimumLength = 5, ErrorMessage = "Apt Address must be between 5 and 50 characters.")]
        [Display(Name = "Apt Address")]
        [Required]
        public string AptAddress;

        [Range(100, 2000, ErrorMessage = "Sq Footage must be between 100 and 2000.")]
        [Display(Name = "Sq Footage")]
        [Required]
        public int SqFootage;

        [Range(0, 200, ErrorMessage = "Utility Fee must be between 0 and 200.")]
        [Display(Name = "Monthly Utility Fee")]
        public float MonthUtilityFee;

        [Range(0, 20, ErrorMessage = "Parking Fee must be between 0 and 20.")]
        [Display(Name = "Monthly Parking Fee")]
        public float MonthParkfee;

        [Display(Name = "Last Cleaning Date")]
        public DateTime LastCleanDate;

        [Display(Name = "Vacant")]
        public int IsVacant;
    }

    partial class ContractMetadata
    {
        [Display(Name = "Start Date")]
        public DateTime StartDate;

        [Display(Name = "End Date")]
        public DateTime EndDate;

        [Display(Name = "Monthly Rent")]
        public float MonthlyRent;
    }
}
