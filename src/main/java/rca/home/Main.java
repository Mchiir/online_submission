package rca.home;

import org.hibernate.Session;
import org.hibernate.Transaction;

public class Main {
    public static void main(String[] args) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Transaction transaction = session.beginTransaction();
            System.out.println("Hibernate working OK.");
        } catch (Exception e) {
            System.out.println("Error with Hibernate: " + e.getMessage());
        }
    }

    public static boolean SaveStudent(Student student) {
        if(student == null) {
            return false;
        }

        try (Session session = HibernateUtil.getSessionFactory().openSession()) {
            Transaction transaction = session.beginTransaction();
            session.persist(student);
            transaction.commit();
            return true;
        } catch (Exception e) {
            System.out.println("Error creating student: " + e.getMessage());
            return false;
        }
    }
}