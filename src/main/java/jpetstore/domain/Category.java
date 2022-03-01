package jpetstore.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Setter
@ToString
@Entity
@Table(name = "category")
public class Category
{
	@Id
	@Column(name = "catid")
	private String categoryId;

	@Column
	private String name;

	@Column(name = "descn")
	private String description;

//	public String getCategoryId() {
//		return categoryId;
//	}
//
//	public void setCategoryId(String categoryId) {
//		this.categoryId = categoryId;
//	}
//
//	public String getName() {
//		return name;
//	}
//
//	public void setName(String name) {
//		this.name = name;
//	}
//
//	public String getDescription() {
//		return description;
//	}
//
//	public void setDescription(String description) {
//		this.description = description;
//	}
//
//	@Override
//	public String toString() {
//		return "Category{" +
//				"categoryId='" + categoryId + '\'' +
//				", name='" + name + '\'' +
//				", description='" + description + '\'' +
//				'}';
//	}
}
