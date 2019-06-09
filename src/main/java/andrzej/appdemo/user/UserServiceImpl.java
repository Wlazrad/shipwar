package andrzej.appdemo.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.session.SessionRegistry;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private SessionRegistry sessionRegistry;
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;


    @Override
    public User findUserByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public User findUserByEnemyId(int enemyId){
        return userRepository.findByEnemyId(enemyId);
    }




    @Override
    public void saveUser(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        user.setActive(1);
        Role role = roleRepository.findByRole("ROLE_USER");
        user.setRoles(new HashSet<Role>(Arrays.asList(role)));
        userRepository.save(user);
    }

    @Override
    public void updateUserPassword(String newPassword, String email) {
        userRepository.updateUserPassword(bCryptPasswordEncoder.encode(newPassword), email);
    }

    @Override
    public void updateUserProfile(String newName, String newLastName, String newEmail, int id) {
        userRepository.updateUserProfile(newName, newLastName, newEmail, id);
    }

    @Override
    public List<User> findAll() {
        List<User> userList = userRepository.findAll();
        return userList;
    }

    @Override
    public User findByUserName(String userName) {
        return null;
    }

    @Override
    public User getUserByIdEquals(int id) {
        User user = userRepository.getUserByIdEquals(id);
        return user;
    }

    @Override
    public User findEnemyByGameId(int id, String email){
       return userRepository.findEnemyByGameId(id, email);
    }

    @Override
    public synchronized void updateWarTable(String newTable, int id){
        userRepository.updateWarTable(newTable, id);
    }

    @Override
    public void updateGameId(int gameId, int userId){
        userRepository.updateGameId(gameId, userId);
    }

    @Override
    public List<String> getUsersFromSessionRegistry(){
        return sessionRegistry.getAllPrincipals().stream()
                .filter(u -> !sessionRegistry.getAllSessions(u, false).isEmpty())
                .map(Object::toString)
                .collect(Collectors.toList());
    }

    @Override
    public void updateActivePlayer(int activePlayer, int userId){
        userRepository.updateActivePlayer(activePlayer, userId);
    }

    @Override
    public void updateEnemyPlayer(int enemyId, int userId){
        userRepository.updateEnemyPlayer(enemyId, userId);
    }

}
