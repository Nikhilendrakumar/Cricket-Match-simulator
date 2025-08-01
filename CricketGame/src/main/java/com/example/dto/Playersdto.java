package com.example.dto;

import java.util.List;

import com.example.Entity.Players;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Playersdto {
	private String playerName;
	private String teamName;
}
