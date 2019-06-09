package andrzej.appdemo.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

/**
 * The Role class represents a table in the database that describes
 * the role of the user in the system
 */

@Entity
@Table(name = "role")
public class Role {
	/**
	 * Represents the primary key in the role table
	 */
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "role_id")
	private int id;

	/**
	 * Description of the user's role in the system
	 */
	@Column(name = "role")
	@NotNull
	private String role;

	/**
	 * Returns the role identifier
	 * @return the Role id
	 */
	public int getId() {
		return id;
	}

	/**
	 * Sets the role identifier
	 * @param id the Role id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * Returns the description of the role
	 * @return the description of the role
	 */
	public String getRole() {
		return role;
	}

	/**
	 * Sets the role description
	 * @param role the role description
	 */
	public void setRole(String role) {
		this.role = role;
	}

}
