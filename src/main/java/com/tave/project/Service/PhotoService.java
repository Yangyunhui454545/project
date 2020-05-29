package com.tave.project.Service;

import com.tave.project.domain.entity.AttendanceEntity;
import com.tave.project.domain.repository.AttendanceRepository;
import com.tave.project.dto.AttendanceDto;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@AllArgsConstructor
@Service
public class PhotoService {
    private AttendanceRepository attendanceRepository;
    private static final int BLOCK_PAGE_NUM_COUNT = 4;  // 블럭에 존재하는 페이지 번호 수
    private static final int PAGE_POST_COUNT = 10;       // 한 페이지에 존재하는 게시글 수


    @Transactional
    public List<AttendanceDto> getPhotolist(Integer pageNum) {
        Page<AttendanceEntity> page = attendanceRepository.findAll(PageRequest.of(pageNum - 1, PAGE_POST_COUNT, Sort.by(Sort.Direction.DESC)));

        List<AttendanceEntity> attendanceEntities = page.getContent();
        List<AttendanceDto> attendanceDtoList = new ArrayList<>();

        for (AttendanceEntity attendanceEntity : attendanceEntities) {
            attendanceDtoList.add(this.convertEntityToDto(attendanceEntity));
        }

        return attendanceDtoList;
    }
    @Transactional
    public Long getBoardCount() {
        return attendanceRepository.count();
    }


    @Transactional
    public Long savePhoto(AttendanceDto attendanceDto) {
        return attendanceRepository.save(attendanceDto.toEntity()).getId();
    }

    @Transactional
    public AttendanceDto getPost(Long id) {
        Optional<AttendanceEntity> attendanceEntityWrapper = attendanceRepository.findById(id);
        AttendanceEntity attendanceEntity = attendanceEntityWrapper.get();

        return this.convertEntityToDto(attendanceEntity);
    }
    public Integer[] getPageList(Integer curPageNum) {

        Integer[] pageList = new Integer[BLOCK_PAGE_NUM_COUNT];

        // 총 게시글 갯수
        Double postsTotalCount = Double.valueOf(this.getBoardCount());

        // 총 게시글 기준으로 계산한 마지막 페이지 번호 계산
        Integer totalLastPageNum = (int)(Math.ceil((postsTotalCount/PAGE_POST_COUNT)));

        // 현재 페이지를 기준으로 블럭의 마지막 페이지 번호 계산
        Integer blockLastPageNum = (totalLastPageNum > curPageNum + BLOCK_PAGE_NUM_COUNT)
                ? curPageNum + BLOCK_PAGE_NUM_COUNT
                : totalLastPageNum;

        // 페이지 시작 번호 조정
        curPageNum = (curPageNum <= 3) ? 1 : curPageNum - 2;

        // 페이지 번호 할당
        for (int val = curPageNum, idx = 0; val <= blockLastPageNum; val++, idx++) {
            pageList[idx] = val;
        }
        return pageList;
    }

    private AttendanceDto convertEntityToDto(AttendanceEntity attendanceEntity) {
        return AttendanceDto.builder()
                .id(attendanceEntity.getId())
                .title(attendanceEntity.getTitle())
                .filename(attendanceEntity.getFilename())
                .build();
    }
}
