package com.tave.project.Service;


import com.tave.project.member.Member;

public interface IMemberService {
    void memberRegister(Member member);
    Member memberSearch(Member member);
    Member memberModify(Member member);
    int memberRemove(Member member);
}