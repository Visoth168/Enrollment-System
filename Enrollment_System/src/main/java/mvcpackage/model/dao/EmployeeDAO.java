package mvcpackage.model.dao;

import java.sql.*;
import java.util.*;

import mvcpackage.model.bean.Employee;

public class EmployeeDAO {

	//Define instance variables	
	private String DBURL = "jdbc:mysql://localhost:3307/enrollment";
    private String DBUsername = "root";
    private String DBPassword = "";

    private String INSERTEMPSQL = "INSERT INTO subject (description, credit) VALUES " + " (?, ?);";

    private String SELECTEMPID = "select subjectID,description,credit from subject where subjectID =?";
    private String SELECTALLEMPS = "select * from subject";
    private String DELETEEMPSQL = "delete from subject where subjectID = ?;";
    private String UPDATEEMPSQL = "update subject set description = ?,credit= ? where subjectID = ?;";

    //constructor
    public EmployeeDAO() {}

    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(DBURL, DBUsername, DBPassword);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return connection;
    }

    public void insertEmployee(Employee emp) throws SQLException {
        System.out.println(INSERTEMPSQL);
        Connection connection = null; 
    	PreparedStatement preparedStatement = null;
        // try-with-resource statement will auto close the connection.
        try {
        	connection = getConnection(); 
        	preparedStatement = connection.prepareStatement(INSERTEMPSQL);
            preparedStatement.setString(1, emp.getEname());
            preparedStatement.setInt(2, emp.getEage());
            System.out.println(preparedStatement);
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            	printSQLException(e);
        } finally {
        	finallySQLException(connection,preparedStatement,null);
        }
    }

    public Employee selectEmployee(int subjectID) {
    	Employee emp = null;
    	Connection connection = null; 
      	PreparedStatement preparedStatement = null;
      	ResultSet rs=null;
        // Step 1: Establishing a Connection
        try {
        	connection = getConnection();
          // Step 2:Create a statement using connection object
            preparedStatement = connection.prepareStatement(SELECTEMPID);
            preparedStatement.setInt(1, subjectID);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                String description = rs.getString("description");
                int credit = rs.getInt("credit");
                emp = new Employee(subjectID, description, credit);
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        finally {
        	finallySQLException(connection,preparedStatement,rs);
        }
        return emp;
    }

    public List < Employee > selectAllEmployees() {
    	//Employee emp = null;
    	Connection connection = null; 
      	PreparedStatement preparedStatement = null;
      	ResultSet rs=null;
        // using try-with-resources to avoid closing resources (boiler plate code)
        List < Employee > emps = new ArrayList < > ();
        // Step 1: Establishing a Connection
        try { 
        	connection = getConnection();
            // Step 2:Create a statement using connection object
            preparedStatement = connection.prepareStatement(SELECTALLEMPS);
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            rs = preparedStatement.executeQuery();

            // Step 4: Process the ResultSet object.
            while (rs.next()) {
                int subjectID = rs.getInt("subjectID");
                String description = rs.getString("description");
                int credit = rs.getInt("credit");
              
                emps.add(new Employee(subjectID, description, credit));
            }
        } catch (SQLException e) {
            printSQLException(e);
        }
        finally {
        	finallySQLException(connection,preparedStatement,rs);
        }
        return emps;
    }

    public boolean deleteEmployee(int id) throws SQLException {
        boolean empDeleted = false;
        Connection connection = null; 
      	PreparedStatement preparedStatement = null;
      	try {
        	 connection = getConnection(); 
        	 preparedStatement = connection.prepareStatement(DELETEEMPSQL);
        	 preparedStatement.setInt(1, id);
            empDeleted = preparedStatement.executeUpdate() > 0 ? true:false;
        }
        finally {
        	finallySQLException(connection,preparedStatement,null);
        }
        return empDeleted;
    }

    public boolean updateEmployee (Employee emp) throws SQLException {
        boolean empUpdated = false;
        Connection connection = null; 
      	PreparedStatement preparedStatement = null;
      	try {
        	connection = getConnection(); 
        	preparedStatement = connection.prepareStatement(UPDATEEMPSQL);
        	preparedStatement.setString(1, emp.getEname());
        	preparedStatement.setInt(2, emp.getEage());
        	preparedStatement.setInt(3, emp.getEid());

        	empUpdated = preparedStatement.executeUpdate() > 0 ? true:false;
        }
        catch (SQLException e) {
        	printSQLException (e);
        }     
      	finally {
        	finallySQLException(connection,preparedStatement,null);
        }
        return empUpdated;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
    private void finallySQLException(Connection c, PreparedStatement p, ResultSet r){
    	 if (r != null)	{
             try {
                r.close();
             } catch (Exception e) {}
                r = null;
             }
 	
          if (p != null) {
             try {
                p.close();
             } catch (Exception e) {}
                p = null;
             }
 	
          if (c != null) {
             try {
                c.close();
             } catch (Exception e) {
           	  c = null;
             }

          }
    }
}

