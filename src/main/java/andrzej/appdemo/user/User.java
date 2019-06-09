package andrzej.appdemo.user;

import andrzej.appdemo.constants.AppDemoConstants;
import org.springframework.boot.web.servlet.server.Session;
import org.springframework.context.annotation.Scope;
import org.springframework.web.context.WebApplicationContext;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.HashMap;
import java.util.Random;
import java.util.Set;

/**
 * The User class represents a table in the database that describes
 * the user existing in the system
 */
@Entity
@Table(name = "user")
public class User {

    /**
     * Represents the primary key in the user table
     */
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "user_id")
    private int id;
    /**
     * Represents email column in the user table
     */
    @Column(name = "email")
    @NotNull
    private String email;
    /**
     * Represents password column in the user table
     */
    @Column(name = "password")
    @NotNull
    private String password;
    /**
     * Represents name column in the user table
     */
    @Column(name = "name")
    @NotNull
    private String name;
    /**
     * Represents last_name column in the user table
     */
    @Column(name = "last_name")
    @NotNull
    private String lastName;
    /**
     * Represents active column in the user table
     */
    @Column(name = "active")
    @NotNull
    private int active;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;

    @Column(name = "game_Id")
    private int gameId;

    @Column(name = "enemy_id")
    private int enemyId;


    @Transient
    private String operacja;

    @Transient
    private int nrRoli;

    @Transient
    private String newPassword;

    @Transient
    private String[] warTable;

    @Column(name ="db_war_table")
    private String dataBaseWarTable;

    @Column(name ="active_player")
    private int activePlayer;


    public User() {
        warTable = new String[64];
        for (int i = 0; i < warTable.length ; i++) {
            warTable[i] = "0";
        }
        dataBaseWarTable = "0000000000000000000000000000000000000000000000000000000000000000";
    }

    public boolean getShot(String shipPos){
        if(warTable[AppDemoConstants.warTableMap.get(shipPos)].equalsIgnoreCase("1") ){
            warTable[AppDemoConstants.warTableMap.get(shipPos)] = "2";
            setWarTable(warTable);
            return true;
        }else if(warTable[AppDemoConstants.warTableMap.get(shipPos)].equalsIgnoreCase("0")) {
            warTable[AppDemoConstants.warTableMap.get(shipPos)] = "3";
            setWarTable(warTable);
            return false;
        }
        return false;
    }


    //gettery i settery
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() { return name; }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public String getOperacja() {
        return operacja;
    }

    public void setOperacja(String operacja) {
        this.operacja = operacja;
    }

    public int getNrRoli() {
        return nrRoli;
    }

    public void setNrRoli(int nrRoli) {
        this.nrRoli = nrRoli;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public int getGameId() {
        return gameId;
    }

    public void setGameId(int gameId) {
        this.gameId = gameId;
    }

    public synchronized String[] getWarTable() {
        return warTable;
    }

    public synchronized void setWarTable(String[] warTable) {

        this.warTable = warTable;
        if(dataBaseWarTable==null) {
            dataBaseWarTable = "";
            for (int i = 0; i < warTable.length; i++) {

                this.dataBaseWarTable = dataBaseWarTable + warTable[i];
                dataBaseWarTable.trim();
            }
        }else {
            for (int i = 0; i < warTable.length; i++) {
                if (!warTable[i].equals(dataBaseWarTable.charAt(i))){
                    String first = dataBaseWarTable.substring(0, i);
                    String second = dataBaseWarTable.substring(i+1);
                    dataBaseWarTable = first + warTable[i] + second;
                }
            }
        }
    }

    public synchronized void saveStringToWarTable(String stringWarTable){
        for (int i = 0; i <64 ; i++) {
            if(stringWarTable != null) {
                warTable[i] = Character.toString(stringWarTable.charAt(i));
            }
        }
    }

    public synchronized String getDataBaseWarTable() {
        return dataBaseWarTable;
    }

    public synchronized void setDataBaseWarTable(String dataBaseWarTable) {
        this.dataBaseWarTable = dataBaseWarTable;
    }

    public int getActivePlayer() { return activePlayer; }

    public void setActivePlayer(int activePlayer) {
        this.activePlayer = activePlayer;
    }

    public int getEnemyId() {
        return enemyId;
    }

    public void setEnemyId(int enemyId) {
        this.enemyId = enemyId;
    }

}
