package com.tave.project.domain.repository;

        import com.tave.project.domain.entity.BoardEntity;
        import org.springframework.data.jpa.repository.JpaRepository;
        import org.springframework.stereotype.Repository;

@Repository
public interface BoardRepository extends JpaRepository<BoardEntity, Long> {
}