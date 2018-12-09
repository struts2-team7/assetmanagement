package model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.validator.Max;
import org.hibernate.validator.Min;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name="assets")
public class Asset implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	private String code;
	
	private String name;
	
	private String category;
	
	private String feature;
	
	private Integer price;
	
	@Column(name="startyear")
	private Integer startYear;
	
	@Column(name="usingperson")
	private String usingPerson;
	
	@Min(value=0, message="Tỉ lệ tối thiểu bằng 0")
	@Max(value=100, message="Tỉ lệ tối đa bằng 100")
	@Column(name="dep_rate")
	private Double depRate;
	
	@Column(name="dep_year")
	private Integer depYear;
	
	@ManyToOne
	@JoinColumn(name="country_id")
	private Country country;
	
	@ManyToOne
	@JoinColumn(name="department_id")
	private Department department;
	
	@ManyToOne
	@JoinColumn(name="producer_id")
	private Producer producer;
	
}
