package com.example.Controller;

import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Entity.Players;
import com.example.Entity.Team;
import com.example.Repository.PlayersRepo;
import com.example.Service.CricketService;
import com.example.dto.Playersdto;

@Controller
public class CricketController {
	@Autowired
	private CricketService service;
	@Autowired
	private PlayersRepo repo;

	@GetMapping("/welcome")
	public String welcome() {
		return "welcome";
	}

	@GetMapping("/register")
	public String getregister(Model m) {

		return "registration";
	}
	

	@PostMapping("/savePlayer")
	public String save(@ModelAttribute Playersdto pdto, Model model) {
		boolean val= service.saveplayer(pdto);
		if(val==true) {

		model.addAttribute("msg", "data saved sucessfully.");
		}
		else {
			model.addAttribute("msg", "Team already has 11 players. Cannot add more.");
		}
		return "registration";
	}
	
	@GetMapping("/viewplayers")
	public String viewplayers(Model model){
		List<Team> viewAll = service.viewAll();
		model.addAttribute("teams",viewAll);
		
		return "viewplayers";
	}
	
	@GetMapping("/choosetoss")
	public String choosetoss() {
		return "choosetoss";
	}

	@GetMapping("/toss")
	public String toss(@RequestParam String s1, @RequestParam String s, Model m) {
	    String res = service.matchtoss(); // Just random Head/Tail
	    String secondTeam = s1.equals("RCB") ? "CSK" : "RCB";

	    String tosswinner;
	    if (res.equalsIgnoreCase(s)) {
	        tosswinner = s1; // user guessed correctly
	    } else {
	        tosswinner = secondTeam; // opponent wins
	    }

	    m.addAttribute("msg", tosswinner + " wins the toss. Choose batting.");
	    m.addAttribute("tosswinner", tosswinner);
	    m.addAttribute("secondteam", secondTeam);
	    return "toss";
	}


		 
		@GetMapping("/startmatch")
	public String startmatch(@RequestParam("tosswinner") String tosswinner,@RequestParam("secondteam") String secondteam,Model m) {
		List<Players> teamPlayers = service.getPlayersByTeam(tosswinner);
		 Collections.shuffle(teamPlayers);
		 List<Players> playingPlayers = teamPlayers.stream()
                 .limit(5)
                 .collect(Collectors.toList());
		 Random random = new Random();
		  for (Players p : playingPlayers) {
		    p.setTotalRuns(random.nextInt(50) + 1); 
		    p.setOvers(random.nextInt(2) + 1); 
		    p.setWicketsTaken(random.nextInt(3));
		    repo.save(p); 
		  }
        m.addAttribute("playingPlayers", playingPlayers);
        m.addAttribute("tosswinner", tosswinner);
        m.addAttribute("secondteam", secondteam);
        m.addAttribute("nextUrl", "/firstinningscompleted?secondteam=" + secondteam);
        m.addAttribute("msg", tosswinner + " starts the game...");

	
		return "startmatch";
		
		}
		
		@GetMapping("/firstinningscompleted")
	    public String firstInningCompleted(@RequestParam("secondteam") String secondteam, Model m) {
	        m.addAttribute("secondteam", secondteam);
	        m.addAttribute("tosswinner", secondteam.equals("RCB") ? "CSK" : "RCB");
	        m.addAttribute("msg", "First Inning Completed");
	        return "firstinningscompleted"; 
	    }
		
		@GetMapping("/viewFirstInningScore")
		public String viewfirstinningscore(@RequestParam("tosswinner") String tosswinner,Model m) {
			System.out.println(tosswinner);
			List<Players> fip=service.getPlayersByTeam(tosswinner);
			m.addAttribute("firstInningscore", fip);
			
			
			return "firstinningscore";
		}
		
		@GetMapping("/startSecondInning")
		public String startSecondInning(@RequestParam("secondteam") String secondteam, Model m) {
			List<Players> players = service.getPlayersByTeam(secondteam);
		    Collections.shuffle(players);
		    List<Players> playingPlayers = players.stream().limit(5).collect(Collectors.toList());

		    m.addAttribute("playingPlayers", playingPlayers);
		    m.addAttribute("msg", secondteam + " starts the 2nd innings...");
		    m.addAttribute("secondteam", secondteam);
		    
		    m.addAttribute("nextUrl", "/secondinningscompleted?secondteam="+ secondteam);
		    return "startmatch";
		}
		
		@GetMapping("/secondinningscompleted")
		public String secondInningsCompleted(
			    @RequestParam("secondteam") String secondteam,
			    Model m) {
			  
			  m.addAttribute("secondteam", secondteam);
		     m.addAttribute("msg", "Second Inning Completed");
		    return "secondinning";
		}
		
		
		@GetMapping("/viewsecondinningscore")
		public String viewsecondinningscore(@RequestParam("secondteam") String secondteam,Model m) {
			System.out.println(secondteam);
			List<Players> sip=service.getPlayersByTeam(secondteam);
			m.addAttribute("secondInningscore", sip);
			m.addAttribute("secondteam", secondteam);
			
			return "secondinningscore";
		}

		@GetMapping("/matchsummary")
		public String gameCompleted(Model m) {
			Integer rcbscore=service.totalscore("RCB");
			Integer cskscore=service.totalscore("CSK");
			String s="";
			if(rcbscore> cskscore) {
				s="RCB won the match";
			}
			else if(rcbscore<cskscore) {
				s="CSK won the match";
			} 
			else {
				s="match is draw";
			}
			m.addAttribute("totalscorercb","Total Score of RCB = "+ rcbscore);
			m.addAttribute("totalscorecsk","Total Score of CSK = "+ cskscore);
			m.addAttribute("results", s);
		    return "gameCompleted";
		}
}
