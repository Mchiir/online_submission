package rca.home;

import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "students")
public class Student {
    @Id
    UUID student_id;
    String name;
}
