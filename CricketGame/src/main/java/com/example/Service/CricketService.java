package com.example.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.example.Entity.Players;
import com.example.Entity.Team;
import com.example.Repository.PlayersRepo;
import com.example.Repository.TeamRepo;
import com.example.dto.Playersdto;

@Service
public class CricketService {
	@Autowired
	private PlayersRepo repo;
	@Autowired
	private TeamRepo trepo;

	public boolean saveplayer(Playersdto pdto) {
		// Try to find the team by name
	    Team team = trepo.findByTeamName(pdto.getTeamName());
	    
	    if (team == null) {
	        // If team does not exist, create it
	        team = new Team();
	        team.setTeamName(pdto.getTeamName());
	        trepo.save(team);	        
	    }

	    // Check how many players are already in this team
	    long count = repo.countByTeam_TeamName(pdto.getTeamName());
	    System.out.println("count is: " + count);

	    if (count < 11) {
	        Players p = new Players();
	        p.setPlayerName(pdto.getPlayerName());
	        p.setTotalRuns(0);
	        p.setOvers(0);
	        p.setWicketsTaken(0);

	        //  Link player to team
	        p.setTeam(team);

	        //  Save player (JPA will link them)
	        repo.save(p);

	        //  If you want bidirectional, add player to team list too
	        if (team.getPlayers() == null) {
	            team.setPlayers(new ArrayList<>());
	        }
	        team.getPlayers().add(p);

	        // Save team
	        trepo.save(team);

	        return true;
	    }

	    return false;
	}
     public List<Team> viewAll(){
	 return trepo.findAll();
}


	public String matchtoss() {
		
		int toss = new Random().nextInt(2); // 0 or 1
	    String tossResult = toss == 0 ? "Head" : "Tail";


       return tossResult;
	}
	public List<Players> getPlayersByTeam(String tosswinner) {
		List<Players> teamplayers = repo.findByTeam_TeamNameIgnoreCase(tosswinner);
		
		
		return teamplayers;
	}
	public Integer totalscore(String s) {
		Integer sumTotalRunsByTeam = repo.sumTotalRunsByTeam(s);
		return sumTotalRunsByTeam != null ? sumTotalRunsByTeam : 0;
	}

}