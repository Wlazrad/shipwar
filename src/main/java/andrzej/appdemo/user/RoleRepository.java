package andrzej.appdemo.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * The class responsible for accessing Role table data
 */

@Repository("roleRepository")
public interface RoleRepository extends JpaRepository<Role, Integer>{
	/**
	 * Finds Role object with specific name
	 * @param role the role name
	 * @return Role object
	 */
	public Role findByRole(String role);

}
