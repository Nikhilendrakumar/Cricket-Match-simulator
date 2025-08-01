package com.example.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.Entity.Players;

public interface PlayersRepo  extends JpaRepository<Players,Integer>{
	long countByTeam_TeamName(String teamName);
    List<Players> findByTeam_TeamNameIgnoreCase(String teamName);
    @Query("SELECT SUM(p.totalRuns) FROM Players p WHERE p.team.teamName = :teamName")
    Integer sumTotalRunsByTeam(@Param("teamName") String teamName);
	
}
