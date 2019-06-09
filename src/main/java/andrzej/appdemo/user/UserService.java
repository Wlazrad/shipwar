package andrzej.appdemo.user;

import java.util.List;

public interface UserService {
	
	public User findUserByEmail(String email);
	public void saveUser(User user);
	public void updateUserPassword(String newPassword, String email);
	public void updateUserProfile(String newName, String newLastName, String newEmail, int id);
	public List<User> findAll();
	User findByUserName(String userName);
	User getUserByIdEquals(int id);

	public User findEnemyByGameId(int id, String email);
	public void updateWarTable(String newTable, int id);
	public void updateGameId(int gameId, int userId);
	public List<String> getUsersFromSessionRegistry();
	public void updateActivePlayer(int activePlayer, int userId);
	public  void updateEnemyPlayer(int enemyId, int userId);
	public User findUserByEnemyId(int enemyId);

}
