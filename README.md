# 🏏 Fantasy Sports League Database

This project is a **SQL-based database system** designed to manage a fantasy sports league. It supports the management of teams, players, matches, and player performance with scoring. It is ideal for learning **complex data modeling**, **SQL queries**, and **ranking functions**, and for demonstrating how to build a backend structure for fantasy gaming platforms like Dream11 or MPL.

---

## 📁 Project Structure

- `FantasyLeague_DB.sql`: Core SQL script containing:
  - Database creation
  - Table definitions and relationships
  - Sample data insertions
  - Advanced SQL queries using JOINs and RANK functions

---

## 🛠️ Technologies Used

- **MySQL**
- **MySQL Workbench**
- **SQL Queries** (DDL, DML, JOINs, Window functions)

---

## 🧩 Database Schema

The database includes the following tables:

| Table              | Description                            |
|-------------------|----------------------------------------|
| `Players`          | Stores player details like name, team, role |
| `Teams`            | Stores team name and owner            |
| `TeamPlayers`      | Many-to-many relationship between Teams and Players |
| `Matches`          | Match details: date, venue, teams     |
| `PlayerPerformance`| Player stats and fantasy points       |

**Schema Visualization**: 

![447274291-8a8d25f0-64ef-4c51-84d4-c61f29cd9f6f](https://github.com/user-attachments/assets/1db45730-e491-4086-98d5-b89a835c64b5)

[DBDiagram.io link](https://dbdiagram.io/d/FantasyLeague-682e09f0b9f7446da38e5e01)

---

## Outputs!!!
 1) Top Performing Player
 
    ----------------------------------------------------------------------------------------
    
    ![1 Top Performing Player](https://github.com/user-attachments/assets/34aaa25b-ef7f-4974-8ba2-7577d27235ef)

    
    ----------------------------------------------------------------------------------------
 3) Team Rankings
    ----------------------------------------------------------------------------------------
    
    ![2 Team Rankings](https://github.com/user-attachments/assets/f262741e-3673-4277-b628-0db06c4eee89)
    
    ----------------------------------------------------------------------------------------
5) Match- wise Player performance
   ----------------------------------------------------------------------------------------
   
   ![3 Match- wise Player performance](https://github.com/user-attachments/assets/f1c476aa-890d-403b-aa45-6e16a89a26b7)
   
   ----------------------------------------------------------------------------------------
7) Window Function
   ----------------------------------------------------------------------------------------
   
   ![4 Window Function](https://github.com/user-attachments/assets/35aadbec-7264-475f-9371-8fb4aec53a16)
   
   ----------------------------------------------------------------------------------------
   
---

## 🚀 Features

- Register teams and players
- Record matches and player performances
- Track total points for players and teams
- Rank players based on cumulative performance
- Join multiple tables to fetch match-wise player stats

---

## 🔍 Sample Queries

Some queries included in the script:

1. Top 5 players by total points
2. Team-wise total points based on player performance
3. Match-wise player statistics
4. Player ranking using `RANK()` window function

---

## 🧪 How to Use

1. Open **MySQL Workbench**
2. Run the script `FantasyLeague_DB.sql`
3. Explore the schema and execute the provided queries
4. Modify or extend tables and queries as needed

---

## 📈 Skills Demonstrated

- ✅ Complex data modeling with foreign keys and relationships
- ✅ Writing and optimizing SQL queries
- ✅ Using `JOIN`, `GROUP BY`, and `RANK()` functions
- ✅ Handling real-world fantasy league data patterns


---

## 📄 License

This project is for educational purposes. No commercial license implied.

---
