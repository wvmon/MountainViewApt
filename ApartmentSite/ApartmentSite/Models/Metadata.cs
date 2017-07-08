using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace ApartmentSite.Models
{
    // Validation and Display Formatting is all in one location.
    public class TenantMetadata
    {
        [StringLength(50, MinimumLength = 2, ErrorMessage = "First Name must be between 2 and 50 characters.")]
        [RegularExpression(@"^[A-Z]+[a-zA-Z''-'\s]*$", ErrorMessage = "First Name must begin with a capital letter and only contain letters and spaces.")]
        [Display(Name = "First Name")]
        [Required]
        public string FirstName;

        [StringLength(50, MinimumLength = 2, ErrorMessage = "Last Name must be between 2 and 50 characters.")]
        [RegularExpression(@"^[A-Z]+[a-zA-Z''-'\s]*$", ErrorMessage = "Last Name must begin with a capital letter and only contain letters and spaces.")]
        [Display(Name = "Last Name")]
        [Required]
        public string LastName;

        [RegularExpression("^[01]?[- .]?(\\([2-9]\\d{2}\\)|[2-9]\\d{2})[- .]?\\d{3}[- .]?\\d{4}$", ErrorMessage = "Invalid Phone Number. Area Code is required.")]
        [Display(Name = "Phone #")]
        [Required]
        public string Phone;

        [StringLength(50)]
        [EmailAddress(ErrorMessage = "Invalid Email Address.")]
        [Required]
        public string Email;
    }

    public class ApartmentMetadata
    {
        [StringLength(50, MinimumLength = 3, ErrorMessage = "Apt Address must be between 3 and 50 characters.")]
        [Display(Name = "Apt Address")]
        [Required]
        public string AptAddress;

        [Range(100, 2000, ErrorMessage = "Sq Footage must be between 100 and 2000.")]
        [Display(Name = "Sq Footage")]
        [Required]
        public Nullable<int> SqFootage;

        [Range(0, 200, ErrorMessage = "Utility Fee must be between 0 and 200.")]
        [Display(Name = "Monthly Utility Fee")]
        [DataType(DataType.Currency)]
        public Nullable<double> MonthUtilityFee;

        [Range(0, 20, ErrorMessage = "Parking Fee must be between 0 and 20.")]
        [Display(Name = "Monthly Parking Fee")]
        [DataType(DataType.Currency)]
        public Nullable<double> MonthParkfee;

        [Display(Name = "Last Cleaning Date")]
        [DataType(DataType.Date)]
        public Nullable<System.DateTime> LastCleanDate;

        [Display(Name = "Vacant")]
        public bool IsVacant;
    }

    partial class ContractMetadata
    {
        [Display(Name = "Start Date")]
        [DataType(DataType.Date)]
        [Required]
        public Nullable<System.DateTime> StartDate;

        [Display(Name = "End Date")]
        [DataType(DataType.Date)]
        [Required]
        public Nullable<System.DateTime> EndDate;

        [Display(Name = "Monthly Rent")]
        [Required]
        [DataType(DataType.Currency)]
        public Nullable<double> MonthlyRent;
    }
}