package com.example.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "Cricketplayers")
public class Players {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "player_seq")
	@SequenceGenerator(name = "player_seq", sequenceName = "player_sequence", allocationSize = 1)
	@Column(length = 4)
	private Integer id;
	@Column(length = 20)
	private String playerName;
	@Column(length = 3)
	private Integer totalRuns;
	@Column(length = 2)
	private Integer overs;
	@Column(length = 2)
	private Integer wicketsTaken;
	@ManyToOne
	@JoinColumn(name = "team_id")
	private Team team;
	@Override
    public String toString() {
        return "Player{id=" + id + ", name='" + playerName + "'}";
        // DO NOT include team here!
    }

}