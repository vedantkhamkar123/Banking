using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bankved
{
    public partial class Default : System.Web.UI.Page
    {
        private static string accountNumber;
        private static string accountHolderName;
        private static decimal balance;
        protected void btnCreateAccount_Click(object sender, EventArgs e)
        {
            accountNumber = txtAccountNumber.Text;
            accountHolderName = txtAccountHolderName.Text;
            balance = Convert.ToDecimal(txtBalance.Text);

            lblResult.Text = "Account created successfully!";
        }

        protected void btnDeposit_Click(object sender, EventArgs e)
        {
            decimal depositAmount = Convert.ToDecimal(txtDepositAmount.Text);
            balance += depositAmount;

            lblResult.Text = String.Format("Successfully deposited {0:C}. New Balance: {1:C}.", depositAmount, balance);
        }
        protected void btnWithdraw_Click(object sender, EventArgs e)
        {
            decimal withdrawAmount = Convert.ToDecimal(txtWithdrawAmount.Text);

            if (withdrawAmount <= balance)
            {
                balance -= withdrawAmount;

                lblResult.Text = String.Format("Successfully withdrew {0:C}. New Balance: {1:C}.", withdrawAmount, balance);
            }
            else
            {
                lblResult.Text = "Insufficient balance.";
            }
        }

        protected void btnViewDetails_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(accountNumber))
            {
                lblResult.Text = String.Format("Account Number: {0}<br />" +
                                               "Account Holder: {1}<br />" +
                                               "Balance: {2:C}", accountNumber, accountHolderName, balance);
            }
            else
            {
                lblResult.Text = "No account found. Please create an account first.";
            }
        }
    }
}