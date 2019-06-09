package andrzej.appdemo.user;

import org.hibernate.sql.Update;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Repository;

@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Integer> {

    public User findByEmail(String email);

    public User findByEnemyId(Integer enemyId);

    @Modifying
    @Query("UPDATE User u SET u.password = :newPassword WHERE u.email= :email")
    public void updateUserPassword(@Param("newPassword") String password, @Param("email") String email);

    @Modifying
    @Query("UPDATE User u SET u.name = :newName, u.lastName = :newLastName, u.email = :newEmail WHERE u.id= :id")
    public void updateUserProfile(@Param("newName") String newName, @Param("newLastName") String newLastName,
                                  @Param("newEmail") String newEmail, @Param("id") Integer id);


    @Query(value = "SELECT *FROM user u WHERE user_id =:id", nativeQuery = true)
    User getUserByIdEquals(@Param("id") int id);

    @Query(value = "SELECT * FROM user u WHERE game_Id =:game_Id AND email <>:email LIMIT 1", nativeQuery = true)
    User findEnemyByGameId(@Param("game_Id") int gameId, @Param("email") String email);

    @Modifying
    @Query("UPDATE User u SET u.dataBaseWarTable = :newTable WHERE u.id= :id")
    public void updateWarTable(@Param("newTable") String newTable, @Param("id") Integer id);

    @Modifying
    @Query("UPDATE User u SET u.gameId = :game_Id WHERE u.id= :id")
    public void updateGameId(@Param("game_Id") int gameId, @Param("id") int id);

    @Modifying
    @Query("UPDATE User u SET u.activePlayer = :activePlayer WHERE u.id= :id")
    public void updateActivePlayer(@Param("activePlayer") int activePlayer, @Param("id") int id);

    @Modifying
    @Query("UPDATE User u SET u.enemyId = :enemyId WHERE u.id= :id")
    public void updateEnemyPlayer(@Param("enemyId") int enemyId, @Param("id") int id);

}



