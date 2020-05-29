package com.tave.project.dto;

import com.tave.project.domain.entity.AttendanceEntity;
import lombok.*;

@Getter
@Setter
@ToString
@NoArgsConstructor

public class AttendanceDto {
    private Long id;
    private String writer;
    private String title;
    private String filename;

    public AttendanceEntity toEntity(){
        AttendanceEntity attendanceEntity = AttendanceEntity.builder()
                .id(id)
                .title(title)
                .filename(filename)
                .build();
        return attendanceEntity;
    }

    @Builder
    public AttendanceDto(Long id, String title, String filename, String writer) {
        this.id = id;
        this.title = title;
        this.filename = filename;
    }
}
