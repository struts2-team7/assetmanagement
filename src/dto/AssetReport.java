package dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class AssetReport {
	
	private String code;
	private String name;
	private String category;
	private Integer price;
	private Integer startYear;
	private Double depRate;
	
}
