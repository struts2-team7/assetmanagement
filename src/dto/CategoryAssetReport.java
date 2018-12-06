package dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CategoryAssetReport {
	
	private String category;
	private Long quantity;
	private Long totalValue;
	
}
