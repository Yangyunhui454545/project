package com.tave.project.domain.entity;

import lombok.AccessLevel;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

import javax.persistence.*;
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Getter
@Entity
@Table(name = "attendance")
public class AttendanceEntity {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;


    @Column(length = 100, nullable = false)
    private String title;

    @Column(columnDefinition = "TEXT", nullable = false)
    private String filename;

    @Builder
    public AttendanceEntity(Long id, String title, String filename, String writer) {
        this.id = id;
        this.title = title;
        this.filename = filename;
    }
}