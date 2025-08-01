package com.example.Repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.example.Entity.Players;
import com.example.Entity.Team;

public interface TeamRepo  extends JpaRepository<Team,Integer>{
	
	Team findByTeamName(String teamName);
	
	
}
