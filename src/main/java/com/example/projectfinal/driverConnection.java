package com.example.projectfinal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class driverConnection {

    public static void main(String[] args) {
        try {

            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/school", "root", "1234" );

            Statement statement = connection.createStatement();

            ResultSet resultSet = statement.executeQuery("select * from student");

//            statement.executeUpdate("insert into student" + "(sno, sname, password)" + "values('4', 'testjava', 'passwordtest')");
            System.out.println("Data Added Successfully");
            while (resultSet.next()) {
                System.out.print(resultSet.getInt("sno") + "    ");
                System.out.print(resultSet.getString("sname") + "   ");
                System.out.println(resultSet.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
