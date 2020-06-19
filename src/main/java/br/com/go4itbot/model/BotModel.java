package br.com.go4itbot.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.DecimalMin;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "TB_BOT")
public class BotModel {
	private long id;
	private String name;
	private String welcome_msg;
	private String farewell_msg;
	private int downtime;
	private String default_answer;
	private List<SegmentModel> segments;

	public BotModel() {
		super();
	}
	
	public BotModel(long id, String name, String welcome_msg, String farewell_msg, int downtime, String default_answer,
			List<SegmentModel> segments) {
		super();
		this.id = id;
		this.name = name;
		this.welcome_msg = welcome_msg;
		this.farewell_msg = farewell_msg;
		this.downtime = downtime;
		this.default_answer = default_answer;
		this.segments = segments;
	}


	@Id
	@Column(name = "ID_BOT")
	@GeneratedValue(generator = "BOT_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(allocationSize = 1, name = "BOT_SEQ", sequenceName = "BOT_SEQ")
	public long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	@Column(name = "NAME_BOT")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 40, message = "O nome do bot deve possuir entre 2 a 40 caracteres")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	@Column(name = "WELCOME_MSG")
	@NotNull(message = "A mensagem de boas vindas é obrigatória")
	@Size(min = 10, max = 80, message = "A mensagem de boas vinda deve possuir entre 10 a 80 caracteres")
	public String getWelcome_msg() {
		return welcome_msg;
	}

	public void setWelcome_msg(String welcome_msg) {
		this.welcome_msg = welcome_msg;
	}

	@Column(name = "FAREWELL_MSG")
	@NotNull(message = "A mensagem de despedida é obrigatória")
	@Size(min = 10, max = 80, message = "A mensagem de despedida do bot deve possuir entre 10 a 80 caracteres")
	public String getFarewell_msg() {
		return farewell_msg;
	}

	public void setFarewell_msg(String farewell_msg) {
		this.farewell_msg = farewell_msg;
	}
	
	@Column(name = "DOWNTIME")
	@NotNull(message = "O Tempo de espera é obrigatório")
	@DecimalMin(value = "30", message = "O tempo de espera mínimo é de 30 segundos")
	public int getDowntime() {
		return downtime;
	}

	public void setDowntime(int downtime) {
		this.downtime = downtime;
	}

	
	@Column(name = "DEFAULT_ANSWER")
	@NotNull(message = "A menssagem default é obrigatório")
	@Size(min = 10, max = 80, message = "A mensagem default do bot deve possuir entre 10 a 80 caracteres")
	public String getDefault_answer() {
		return default_answer;
	}

	public void setDefault_answer(String default_answer) {
		this.default_answer = default_answer;
	}
	
	
	@OneToMany(mappedBy="bot")
	public List<SegmentModel> getSegments() {
		return segments;
	}
	
	
	public void setSegments(List<SegmentModel> segments) {
		this.segments = segments;
	}


}
