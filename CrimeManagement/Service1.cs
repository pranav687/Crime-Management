using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System;
using System.ServiceModel;

namespace CrimeManagement
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in both code and config file together.
    public class Service1 : IService1
    {
        public string GetData(int value)
        {
            return string.Format("You entered: {0}", value);
        }

        public string AddCriminal(string criminalName, string type, string age, string gender, string address, string complaint, DateTime date)
        {
            SqlConnection _con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Hp\\OneDrive\\Documents\\Crime.mdf;Integrated Security=True;Connect Timeout=30");
            try
            {
                _con.Open();
                using (var cmd = new SqlCommand("INSERT INTO [Criminal] (CriminalName, CrimeType, Age, Gender, CrimeAddress, Complaint, CrimeDate) VALUES (@CriminalName, @CrimeType, @Age, @Gender, @CrimeAddress, @Complaint, @CrimeDate)", _con))
                {
                    cmd.Parameters.AddWithValue("@CriminalName", criminalName);
                    cmd.Parameters.AddWithValue("@CrimeType", type);
                    cmd.Parameters.AddWithValue("@Age", age);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@CrimeAddress", address);
                    cmd.Parameters.AddWithValue("@Complaint", complaint);
                    cmd.Parameters.AddWithValue("@CrimeDate", date);
                    //cmd.Parameters.AddWithValue("@Id", 12);
                 
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception e)
            {
                _con.Close();
           
                return e.ToString();
            }
            string a = "true";
            return a;

        }

        public DataSet SearchItem(int id)
        {
            DataSet ds = new DataSet();
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Hp\\OneDrive\\Documents\\Crime.mdf;Integrated Security=True;Connect Timeout=30");
                string Query = "SELECT * FROM Criminal WHERE Id=@id";

                SqlDataAdapter sda = new SqlDataAdapter(Query, con);
                sda.SelectCommand.Parameters.AddWithValue("@id", id);
                sda.Fill(ds);
            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error:  " + fex);
            }
            return ds;
        }

        public string UpdateItem(string criminalName, string type, string age, string gender, string address, string complaint, DateTime date,int id)
        {
            
            string res = "";
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Hp\\OneDrive\\Documents\\Crime.mdf;Integrated Security=True;Connect Timeout=30");
            
            try
            {
                con.Open();
                using (var com = new SqlCommand("UPDATE Criminal SET CriminalName = @name,CrimeType=@crimetype,Age=@age,Gender=@gender,CrimeAddress=@crimeaddress,Complaint=@complaint,CrimeDate=@date WHERE Id=@id",con))
                {
                    
                    com.Parameters.AddWithValue("@name", criminalName);
                    com.Parameters.AddWithValue("@crimetype", type);
                    com.Parameters.AddWithValue("@age", age);
                    com.Parameters.AddWithValue("@gender", gender);
                    com.Parameters.AddWithValue("@crimeaddress", address);
                    com.Parameters.AddWithValue("@complaint", complaint);
                    com.Parameters.AddWithValue("@date", date);
                    com.Parameters.AddWithValue("@id", id);

                    com.ExecuteNonQuery();
                    res = "Item updated!!";
                   
                    return res;
                }
            }
            catch (Exception e)
            {
                con.Close();
                return e.ToString();
            }
           
         
        }

        public string DeleteItem(int id)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Hp\\OneDrive\\Documents\\Crime.mdf;Integrated Security=True;Connect Timeout=30");
            try
            {
                con.Open();
                using (var com = new SqlCommand("DELETE FROM Criminal WHERE Id=@id", con))
                {
                    com.Parameters.AddWithValue("@id", id);

                    com.ExecuteNonQuery();
                   
                    return "Item deleted!!";
                }
            }
            catch (Exception e)
            {
                con.Close();
                return e.ToString();
            }
        }

        public DataSet getItems()
        {
            DataSet ds = new DataSet();
            try
            {
                SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Hp\\OneDrive\\Documents\\Crime.mdf;Integrated Security=True;Connect Timeout=30");
                string query = "SELECT * from Criminal";
                SqlDataAdapter sda = new SqlDataAdapter(query, con);
                sda.Fill(ds);
            }
            catch (FaultException fex)
            {
                throw new FaultException<string>("Error: " + fex);
            }
            return ds;
        }



    }

}

