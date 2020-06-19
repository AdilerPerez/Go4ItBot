package br.com.go4itbot.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "TB_SEGMENT")
public class SegmentModel {
	private long id;
	private String name;
	private BotModel bot;

	public SegmentModel() {
		super();
	}

	public SegmentModel(long id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	@Id
	@Column(name = "ID_SEG")
	@GeneratedValue(generator = "SEG_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(allocationSize = 1, name = "SEG_SEQ", sequenceName = "SEG_SEQ")
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Column(name = "NAME")
	@NotNull(message = "Nome obrigatório")
	@Size(min = 2, max = 40, message = "O nome do segmento deve possuir entre 2 a 40 caracteres")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "ID_BOT", nullable = true)
	public BotModel getBot() {
		return bot;
	}

	public void setBot(BotModel bot) {
		this.bot = bot;
	}
	
	
	@Override
	public String toString() {
		return name;
	}

}
