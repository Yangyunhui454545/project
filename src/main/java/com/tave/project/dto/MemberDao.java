package com.tave.project.dto;

import com.tave.project.member.Member;
import org.springframework.stereotype.Repository;

import java.sql.*;

@Repository
public class MemberDao implements com.tave.project.dto.IMemberDao {

    private String driver = "com.mysql.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/sqldb?serverTimezone=UTC";
    private String userid = "root";
    private String userpw = "1234";

    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    @Override
    public int memberInsert(Member member) {

        int result = 0;

        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, userid, userpw);
            String sql = "INSERT INTO register(memId, memPw, Phone) values(?,?,?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getMemId());
            pstmt.setString(2, member.getMemPw());
            pstmt.setString(3, member.getPhone());
            result = pstmt.executeUpdate();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return result;

    }

    @Override
    public Member memberSelect(Member member) {

        Member mem = null;

        try {

            Class.forName(driver);
            conn = DriverManager.getConnection(url, userid, userpw);
            String sql = "SELECT * FROM register WHERE memId = ? AND memPw = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getMemId());
            pstmt.setString(2, member.getMemPw());
            rs = pstmt.executeQuery();

            while (rs.next()) {
                String memId = rs.getString("memid");
                String memPw = rs.getString("mempw");
                String Phone = rs.getString("Phone");
                int num = rs.getInt("num");

                mem = new Member();
                mem.setMemId(memId);
                mem.setMemPw(memPw);
                mem.setPhone(Phone);
                mem.setNum(num);
            }

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(rs != null) rs.close();
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return mem;

    }

    @Override
    public int memberUpdate(Member member) {

        int result = 0;

        try {

            Class.forName(driver);
            conn = DriverManager.getConnection(url, userid, userpw);
            String sql = "UPDATE register SET memPw = ?, Phone = ? WHERE memId = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getMemPw());
            pstmt.setString(2, member.getPhone());
            pstmt.setString(3, member.getMemId());
            result = pstmt.executeUpdate();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return result;

    }

    @Override
    public int memberDelete(Member member) {

        int result = 0;

        try {

            Class.forName(driver);
            conn = DriverManager.getConnection(url, userid, userpw);
            String sql = "DELETE register WHERE memId = ? AND memPw = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, member.getMemId());
            pstmt.setString(2, member.getMemPw());
            result = pstmt.executeUpdate();

        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if(pstmt != null) pstmt.close();
                if(conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return result;

    }

}