---
title: team02
desc: "Team Project: Spring Boot Backend, part 2 (authenticated CRUD)"
assigned: 2024-01-30 00:00
due: 2024-02-07 11:59
github_org: ucsb-cs156-w24
layout: lab
layout: default
parent: lab
num: team02
nav_order: 202
ready: true
num_issues: 42
num_database_tables: 6
num_database_tables_alpha: six
num_top_level_issues: 6
num_issues_per_table: 6
num_issues_per_table_alpha: six
starter: https://github.com/ucsb-cs156-w24/STARTER-team02
demo_deployment: http://team02.dokku-00.cs.ucsb.edu
canvas: https://ucsb.instructure.com/courses/17178/assignments/192316
---

# NOT READY YET
# NOT READY YET
# NOT READY YET
# NOT READY YET
# NOT READY YET
# NOT READY YET
# NOT READY YET
# NOT READY YET
# NOT READY YET

# DO NOT START YET
# DO NOT START YET
# DO NOT START YET
# DO NOT START YET
# DO NOT START YET
# DO NOT START YET
# DO NOT START YET
# DO NOT START YET

Canvas link: <{{page.canvas}}>

{% include drop_down_style.html %}

## What this assignment is about: Database CRUD operations

In this assignment, we will build the backend only for api endpoint that allow CRUD operations (Create, Read, Update, Destroy) for each of six database tables.

The type of database we'll work with in this assignment is called an SQL database (SQL is typically pronounced like the english word "sequel").

For this assignment, we are still dealing directly with the backend via Swagger.

In the next assignment, we'll start looking how how to build a proper front end for the types of things we did in both team01 and team02.

## Repos for team02

Here are the links to the repos for team02

| 5pm | 6pm | 7pm|
|-----|-----|----|
|[{{page.title}}-{{site.qxx}}-5pm-1](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-5pm-1)|[{{page.title}}-{{site.qxx}}-6pm-1](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-6pm-1)|[{{page.title}}-{{site.qxx}}-7pm-1](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-7pm-1)|
|[{{page.title}}-{{site.qxx}}-5pm-2](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-5pm-2)|[{{page.title}}-{{site.qxx}}-6pm-2](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-6pm-2)|[{{page.title}}-{{site.qxx}}-7pm-2](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-7pm-2)|
|[{{page.title}}-{{site.qxx}}-5pm-3](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-5pm-3)|[{{page.title}}-{{site.qxx}}-6pm-3](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-6pm-3)|[{{page.title}}-{{site.qxx}}-7pm-3](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-7pm-3)|
|[{{page.title}}-{{site.qxx}}-5pm-4](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-5pm-4)|[{{page.title}}-{{site.qxx}}-6pm-4](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-6pm-4)|[{{page.title}}-{{site.qxx}}-7pm-4](https://github.com/ucsb-cs156-{{site.qxx}}/{{page.title}}-{{site.qxx}}-7pm-4)|

## Project boards (also called Kanban boards):

| 5pm | 6pm | 7pm|
|-----|-----|----|
| [{{page.title}}-{{site.qxx}}-5pm-1](https://github.com/orgs/{{page.github_org}}/projects/14) |[{{page.title}}-{{site.qxx}}-6pm-1](https://github.com/orgs/{{page.github_org}}/projects/18) | [{{page.title}}-{{site.qxx}}-7pm-1](https://github.com/orgs/{{page.github_org}}/projects/22) |
| [{{page.title}}-{{site.qxx}}-5pm-2](https://github.com/orgs/{{page.github_org}}/projects/15)|[{{page.title}}-{{site.qxx}}-6pm-2](https://github.com/orgs/{{page.github_org}}/projects/19)| [{{page.title}}-{{site.qxx}}-7pm-2](https://github.com/orgs/{{page.github_org}}/projects/23)|
| [{{page.title}}-{{site.qxx}}-5pm-3](https://github.com/orgs/{{page.github_org}}/projects/16)|[{{page.title}}-{{site.qxx}}-6pm-3](https://github.com/orgs/{{page.github_org}}/projects/20)| [{{page.title}}-{{site.qxx}}-7pm-3](https://github.com/orgs/{{page.github_org}}/projects/24)|
| [{{page.title}}-{{site.qxx}}-5pm-4](https://github.com/orgs/{{page.github_org}}/projects/17) |[{{page.title}}-{{site.qxx}}-6pm-4](https://github.com/orgs/{{page.github_org}}/projects/21) | [{{page.title}}-{{site.qxx}}-7pm-4](https://github.com/orgs/{{page.github_org}}/projects/25) |

For team02, the Kanban board is populated by the staff before you start using the Github Actions workflow [`99-team02.yml`](
{{page.starter}}/blob/main/.github/workflows/99-team02.yml); if your Kanban is not yet populated,
please check in with the staff.


## Work on your own laptop, not CSIL

You should be working with a Java/Javascript setup on your
own laptop by this point, not on CSIL.

For advice on what to install, see:
* <https://ucsb-cs156.github.io/{{site.qxx}}/info/software.html>

If this presents a difficulty, please contact the instructor ASAP so that some arrangement can be made for your situation.


## Big Picture: what is team02 all about?

We'll be working to create six database tables:

* Articles: for example, blog posts, newspaper articles, etc.
* UCSB Dining Commons Menu Items: food/beverage items offered by UCSB Dining Halls
* Menu Item Reviews: reviews of food/beverage items offered by UCSB Dining Halls
* Help Requests: requests for help, e.g. those on the `#help-lecture-discussion` channel of the course slack
* Recommendation Requests: e.g. requests for letters of rec for grad school, scholarships, jobs
* UCSB Organizations: student orgs at UCSB

There is more information on each of these tables in the assignment.

Then, we'll add API endpoints that allow you to create, read, update and destroy records in each of these database tables.


<details markdown="1">
<summary>
Click the triangle to see more detail about what that looks like on Swagger.
</summary>

### CRUD operations on Swagger

Here's what the CRUD operations look like for the two example database tables in the starter code:

<img width="684" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/4710aff0-bfc4-4f31-ba51-3c8e7801fd9e">

Once you set up your team's `team02` deployment on dokku, you should be able to try this out:
* To create a new record, use the `POST` endpoint
* To see the new record you created, use either of the `GET` endpoints
* To modify a record, use the `PUT` endpoint.
* To delete a record, use the `DELETE` endpoint.

You are encouraged to try these out on the example database tables before starting to work on your own, so that you understand
how the database is supposed to work.

</details>

## The Kanban board contents

You should see {{page.num_issues}} issues on the board in the ToDo column when you start.  From a high-level standpoint, you'll be resolving all of the issues on the Kanban board, which are divided into two types:

* There are {{page.num_top_level_issues}} issues that pertain to the whole project; these are for the entire team to divide up (so about one per person, though the team can divide those up any way they see fit.)
* There are also {{page.num_issues_per_table_alpha}} issues for each of the {{page.num_database_tables_alpha}} database tables: for example, there are {{page.num_issues_per_table_alpha}}  issues that pertain to the `UCSBDiningCommonsMenuItems` table.   Typically, each team member will choose one database table (e.g. `Articles` and then complete  all {{page.num_issues_per_table_alpha}} of the issues pertaining to `Articles`.

### Set up Tasks

These appear only once on the board for the entire team; there are a total of {{page.num_top_level_issues}} of them.

| Task |
|------|
| Adjusting the `README.md` with a list of who is working on which table |
| Setting up Github Pages |
| Setting up a Repo with prod deployment on Dokku |
| Setting up a Repo with qa deployment on Dokku |
| Adjusting the links in the README.md for the dokku deployments |
| Submitting the final project on Canvas (this is the *last* thing the team will do) |

### Coding Tasks

These are done by each team member for their database table, so each of these {{page.num_issues_per_table}} issues appears
once for each of the {{page.num_database_tables}} database tables.

| Task | Coding? |
|------|--------|
| Setting up a personal dokku dev instance (no coding) | None: config only |
| Setting up the database table (`@Entity` and `@Repository` class) (code under `/src/main/java`) and setup database migration files (under `src/main/resources/db/migration/changes`)| Under `src/main/java` and `src/main/resources/db/migration/changes`|
| Setting up the POST operation (which creates one database row) and a GET operation to get all rows in the database |  Under `src/main/java` and `src/test/java` |
| Setting up an GET operation to get a single row by its id |  Under `src/main/java` and `src/test/java` |
| Setting up a DELETE operation (to delete a single row by its id) |  Under `src/main/java` and `src/test/java` |
| Setting up a PUT operation (to update a single row by its id) |  Under `src/main/java` and `src/test/java` |

There is more detail both in the instructions below and on the issues themselves about how to proceed.


## It's still a *team* project.

Having said that, it is still the responsibility of the *entire team* to get all the issues for all  {{page.num_database_tables_alpha}}  of the tables completed. So, even if/when you are "finished with the {{page.num_issues_per_table_alpha}} issues for your table", please *still stay in class* and help others on your team, do code reviews, and generally see where you can be helpful.

The time/effort you invest now in helping to build the capacity of your team will pay off later.

* If other members of your team are sincerely putting in effort with an intention to work for the team, but don't have as much coding experience as you, helping those members out is both in your personal best interest, and the best interest of the team.  It is something you can talk about at job interviews; for employers, this is a highly valued trait.
* On the other hand, if there are members of your team that are not really showing up, not following through, etc. *this is the time* to call attention to it, not in a mean or hostile way, but in a supportive, but honest way.  You are encouraged to do as much as you can with friendly but candid discussions inside your team first.  Messages on the team slack channel can be helpful here.   If that doesn't help, then call this to the attention of your team mentor (i.e. the TA/LA assigned to your team, click [here](https://docs.google.com/spreadsheets/d/1FuUEiL3ZhZc-O70A0kCkykuRFE7wwyHovZHYwDctMlc/edit#gid=239376035), and or the instructor via DMs on Slack.
* If you want to have a private 1-1 chat, that's good too, but please start with a Slack message so that we can keep track of who is telling us what; with twelve teams (and sometimes 36 or more teams over the course of an academic year) it gets difficult to remember who we talked to about what.


## What you'll do: Process

From a process standpoint, this project works the same as team01:

Here's how that will play out in detail:
1. To start, each of you should clone your team's `team02-teamname` repo, which should already have a Kanban board set up for it.
2. On the team's Kanban board, there should be two types of issues:
   * Ones that are global to the entire team (setup tasks)
   * Ones that pertain to a particular database table
4. First, divide up the set up tasks among the members of the team, and assign each of those to a team member.   Leave them in the "to do" column, though, until you actually start working on the issue.
5. Then, divide up the six database tables among the team members.  I suggest that you do this on your team slack channel in a single post, and then "pin" that post to your channel.

   That post might look something like this:

   ```
   Adam:  Articles
   Brianna: Menu Item Reviews
   Chris:  Help Requests
   Danny: Recommendation Requests
   Erin: UCSB Organizations
   Fay: UCSB Dining Commons Menu Items
   ```

   At this point, whomever was assigned the issue to add the table to the README with the team assignments should be able to get that done.

6. Now look on the Kanban board.  You should find that there are six issues on the Kanban board for your specific database table:

   You should find all of the stories for your database item, and assign them to yourself; but drag *only one* into the In Progress column (and if you are already assigned to one of the set up tasks, don't even drag that one yet!

   Typically, you should be assigned to only one item at a time in the In Progress column.  The exception is if you drag an item to In Progress, make some progress on it, and then need to stop working on it for a while because you are blocked, or something else urgently needs your attention.  But that should be the exception, not the normal way of doing things.

8. Now work on your issues as you did in team01; dragging them to "In Review" once they are ready for code review, and to "Done" when they are merged.  Also work on the setup task to which you were assigned.
9. While the project is underway, **every time class meets, you'll start with a standup meeting**.

   While it is optional, many teams also find it helpful to schedule a few standups on slack/zoom or in person outside of class on days the class doesn't meet (one or more of: Fri, Sat, Sun, Mon).

   When all issues are finished, complete the "Submit on Canvas" issue. It may contain a checklist of things to review as you submit.


# Getting started

To get started:

* Clone your team's team02
* Add the <{{page.starter}}> repo as a remote called starter
  <p>
  <tt>git remote add starter {{page.starter}} </tt>
  </p>
  This is in case there are updates to the starter code that you need to pull from by doing:
  ```
  git pull starter main
  git push origin main
  ```
* Then you are ready to start by making your first branch, something like `Chris-RecRequestTable`
  ```
  git checkout -b Chris-ReqRequestTable
  ```

Also: set up your dev deployment on dokku (see the issue: "(your-database-table) - Create personal dokku dev deployment"

# More details on team02

The rest of the material below is extra background/explanation to help you understand the assignment.

In this team project, our starter code has a frontend and backend, however we are still focusing only on the backend part.  The frontend is a minimal frontend that provides *only a place for us to login with our Google account* so that we can authenticate before doing CRUD operations.

We are focusing on learning these new Spring Boot backend concepts:

* Creating SQL database tables using `@Entity` and `@Repository`
* Creating a `database migration` file for Liquibase migration
* Using the Lombok annotations: `@Data`, `@NoArgsConstructor`, `@Builder`, etc.
* Implementing controller routes for CRUD operations (Created, Read, Update, Destroy)
* Writing unit tests for controller CRUD operations, including the use of:
  - Spring `MockMvc`
  - Mockito methods for creating mocks of repositories and services (`when`, `verify)
  - the idea of "dependency injection"

In addition, we'll practice further with a few concepts that we touched on in `jpa03`, but may not have fully fleshed out:
- Set up of the documentation via Github Pages
- Working with feature branches, issues, a Kanban board, pull requests, and GitHub actions scripts
- Working with code coverage and mutation testing

## The two database tables in the starting code

Your starter code at <{{page.starter}}> provides Spring Boot code with the ability to do CRUD operations on two database tables:

* `UCSBDates`
* `UCSBDiningCommons`

These tables are set up to be parallel with the data that is available through two public APIs that are provided by UCSB and documented at
<https://developer.ucsb.edu> (though the format is slightly alterered for this assignment.)

The `UCSBDates` tables has four columns, is indexed by a numeric `@Id` field (`private long id;`) and is intended to store data like that shown here:

```json
[
  {
    "id": 1,
    "quarterYYYYQ": "20234",
    "name": "firstDayOfClasses",
    "localDateTime":  "2023-09-28T00:00:00"
  },
  {
    "id": 2,
    "quarterYYYYQ": "20234",
    "name": "lastDayOfClasses",
    "localDateTime":  "2023-12-08T00:00:00"
  }
]
```

The `UCSBDiningCommons` table has six columns, is indexed by a string `@Id` field (`private String code`) and is intended to store data like that shown here:

```json
[
  {
    "name": "Carrillo",
    "code": "carrillo",
    "hasSackMeal": false,
    "hasTakeOutMeal": false,
    "hasDiningCam": true,
    "latitude": 34.409953,
    "longitude": -119.85277
  },
  {
    "name": "Ortega",
    "code": "ortega",
    "hasSackMeal": true,
    "hasTakeOutMeal": true,
    "hasDiningCam": true,
    "latitude": 34.410987,
    "longitude": -119.84709
  }
]
```

## Your task: add CRUD for additional database tables

You'll be adding CRUD operations for six additional database tables; one per team member:

Here are the six tables you'll be adding (one per person).

On the Kanban board, you'll find five issues for each of these tables:

* Add database table (the `@Entity` and `@Repository` classes, no test classes)
* Add `GET` endpoint to list all database records, and a `POST`  endpoint to create new database records, plus tests (this, and all of the rest, are done in the Controller and Controller test classes)
* Add `GET` endpoint to get a single database row by its id. (plus tests)
* Add `PUT` endpoint to update a single database row by its id. (plus tests)
* Add `DELETE` endpoint to delete a single database row by its id. (plus tests)

You should choose one of these database tables, and then assign yourself the five issues that pertain to that database table.

As you look over these, note that some of them use an *autogenerated `Long`* as the `@Id` field, while others use a different field
already in the data.  That may not make any sense to you right now, but there is an explanation immediately following the list of database tables.
We'll also go over this in lecture.

### (1) UCSB Dining Commons Menu Item

<details markdown="1">

<summary>
For details on the UCSB Dining Commons Menu database table, click the triangle
</summary>

The `UCSBDiningCommonsMenuItems` table will use an autogenerated `Long` as its `id` field, and will have these additional columns:

* `String diningCommonsCode`
* `String name`
* `String station`

Here are some sample values:

| id | diningCommonsCode | name | station |
|----|-------------------|------|---------|
| 1  | ortega            | Baked Pesto Pasta with Chicken | Entree Specials |
| 2  | ortega            | Tofu Banh Mi Sandwich (v)  | Entree Specials |
| 3  | ortega            | Chicken Caesar Salad  | Entrees |
| 5  | portola            | Cream of Broccoli Soup (v) | Greens & Grains |

</details>

### (2) UCSB Organization

<details markdown="1">
<summary>
For details on the UCSB Organization database table click the triangle
</summary>


The `UCSBOrganizations` table will use the `orgCode` field (a String) as its `@Id` field, and will have these columns:

* String orgCode
* String orgTranslationShort
* String orgTranslation
* boolean inactive

Here are some sample values:

| orgCode | orgTranslationShort | orgTranslation | inactive |
|----|-------------------|------|---------|
| ZPR | ZETA PHI RHO | ZETA PHI RHO | false |
| SKY | SKYDIVING CLUB | SKYDIVING CLUB AT UCSB | false |
| OSLI | STUDENT LIFE | OFFICE OF STUDENT LIFE | false |
| KRC | KOREAN RADIO CL | KOREAN RADIO CLUB | false |

</details>


### (3) Recommendation Request

<details markdown="1">
<summary>
For details on the Recommendation request database table click the triangle
</summary>


The `RecommendationRequests` table will use an autogenerated  `Long` as its `@Id` field, and will have these additional fields:

* String requesterEmail
* String professorEmail
* String explanation
* LocalDateTime dateRequested
* LocalDateTime dateNeeded
* boolean done


Here are some sample values:

| id | requesterEmail | professorEmail | explanation | dateRequested | dateNeeded | done |
|-|-|-|-|-|-|-|
| 1 | cgaucho@ucsb.edu | phtcon@ucsb.edu | BS/MS program | 2022-04-20 | 2022-05-01 | false |
| 2 | ldelplaya@ucsb.edu | richert@ucsb.edu | PhD CS Stanford | 2022-05-20 | 2022-11-15 | false |
| 3 | ldelplaya@ucsb.edu | phtcon@ucsb.edu | PhD CS Stanford | 2022-05-20 | 2022-11-15 | false |
| 4 | alu@ucsb.edu | phtcon@ucsb.edu | PhD CE Cal Tech | 2022-05-20 | 2022-11-15 | false |

</details>


### (4) Menu Item Review

<details markdown="1">
<summary>
For details on the Menu Item Review database table click the triangle
</summary>


The `MenuItemReviews` table will use an autogenerated  `Long` as its `@Id` field, and will have these additional fields:

* Long itemId (the id in the `UCSBDiningCommonsMenuItems` table of a menu item)
* String reviewerEmail (the email of the reviewer)
* int stars (0 to 5 stars)
* LocalDateTime dateReviewed
* String comments

**Pay attention to this important detail** because students doing this table often get this wrong: there are two id values: `id` and `itemId`.
* The
`id` value uniquely identifies a review.  For example:
  * "I love the apple pie; so tasty!" might be a review with id `47`
  * "I hate the apple pie; tastes like cardboard" might be a review with id `53`
* The `itemId` is different. It identifies what item is being reviewed.  It refers to the id in *a different table*, i.e. the `UCSBDiningCommonsMenuItems` table.

For example, if that other table (`UCSBDiningCommonsMenuItems`) has an entry for the Apple Pie at Ortega like this:
```json
{
  "id": 7,
  "diningCommonsCode": "ortega",
  "name": "Apple Pie",
  "station" : "Desserts"
}
```

then this table, the `MenuItemReviews` table might have include these two entries:
```json
[
  {
    "id": 47,
    "itemId": 7,
    "reviewerEmail" : "cgaucho@ucsb.edu",
    "stars": 5,
    "comments": "I love the Apple Pie"
  },
  {
    "id": 53,
    "itemId": 7,
    "reviewerEmail" : "ldelplaya@ucsb.edu",
    "stars": 0,
    "comments": "I hate the Apple Pie"
  },
]
```

Here are some sample values:

| id | itemId | reviewerEmail | stars | dateReviewed | comments |
|-|-|-|-|-|-|
| 1 | 27 | cgaucho@ucsb.edu | 3 | 2022-04-20 | bland af but edible I guess |
| 2 | 29 | cgaucho@ucsb.edu | 5 | 2022-04-20 | best veggie pizza ever |
| 3 | 29 | ldelplaya@ucsb.edu | 0 | 2022-04-21 | not tryna get food poisoning, but if I were this would do it|

</details>


### (5) Help Request

<details markdown="1">

<summary>
For details on the Help Request database table click the triangle
</summary>


The `HelpRequests` table will use an autogenerated `Long` as its `@Id` field, and will have these additional fields:

* String requesterEmail
* String teamId
* String tableOrBreakoutRoom
* LocalDateTime requestTime
* String explanation
* boolean solved


Here are some sample values:

| id |  requesterEmail | teamId | tableOrBreakoutRoom | requestTime | explanation | solved  |
|-|-|-|-|-|-|-|
| 1 | cgaucho@ucsb.edu | s22-5pm-3 | 7 | 2022-04-20T17:35 | Need help with Swagger-ui | false |
| 2 | ldelplaya@ucsb.edu | s22-6pm-3 | 11 | 2022-04-20T18:31 | Dokku problems | false |
| 3 | pdg@ucsb.edu | s22-6pm-4 | 13 | 2022-04-21T14:15 | Merge conflict  | false |

</details>


### (6)  Articles

<details markdown="1">

<summary>
For details on the Articles database table click the triangle
</summary>


The `Articles` table will use an autogenerated `Long` as its `@Id` field, and will have these additional fields:

* String title
* String url
* String explanation
* String email (of person that submitted it)
* LocalDateTime dateAdded


Here are some sample values:

| id | title | url | explanation | email | dateAdded |
|-|-|-|-|-|-|
| 1 | Using testing-playground with React Testing Library | https://dev.to/katieraby/using-testing-playground-with-react-testing-library-26j7 | Helpful when we get to front end development | phtcon@ucsb.edu | 2022-04-20 |
| 2 | Handy Spring Utility Classes | https://twitter.com/maciejwalkowiak/status/1511736828369719300?t=gGXpmBH4y4eY9OBSUInZEg&s=09 | A lot of really useful classes are built into Spring | phtcon@ucsb.edu | 2022-04-19|

</details>


## Adding a database table

To add an SQL database table in Spring Boot, you typically add two files:

* A Java class that is annotated with `@Entity`; each instance of this class represents a single row in the database table.  Name should be a singular noun.  Add the file in the same directory/package as the other `@Entity` classes.
* A Java class that is annotated with `@Repository`; each instance of this class represents a database table.  Name should be the Entity name followed by `Repository`. Add the file in the same directory/package as the other `@Repository` classes.

In addition, you'll need to add a `database migration` file in order to create the table in the database. This is done by adding a file in the directory `src/main/resources/db/migration/changes` that describes the changes to the database.

There is more information in the sections below as well as on the Kanban Board issues themselves to guide you through the process.

### What is an `@Entity` class?

Every database table starts with an `@Entity class that defines what one row of the table contains.

For the most part think of it as a "plain old java object" that just has the basic features of a class:
* private data members for each field (column)
* getters, setters, constructor, `toString`, `hashCode`, and `equals` (we use the `@Data` annotation of Lombok to generate these automatically)

We typically use singular nouns for the entity class, e.g. `UCSBDate`, `UCSBDiningCommons`


### Two types of id values for an `@Entity` class

In Spring, each `@Entity` class has a *primary key* marked with the annotation `@Id`.

This value must be unique in the database table; no two rows can have the same primary key.

There are two strategies for dealing with this requirement:

1. Autogenerated ids, which start at `1` and then increment automatically.   The `UCSBDate` entity in the starter code is an example.  The code looks liek this:

   ```
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private long id;
   ```

   As an aside: you may wonder what happens when we run out of numbers.  Since these `id` numbers are typically stored in a 64-bit Java `Long`, the maximum number is: `9,223,372,036,854,775,807L`.
   * If you stored 1 Million records per second, 24 hours a day, 7 days a week, it would take you [292 thousand years](https://www.google.com/search?q=9%2C223%2C372%2C036%2C854%2C775%2C807+%2F+1000000+%2F+60+%2F+60+%2F+24+%2F+365&rlz=1C5CHFA_enUS888US889&sxsrf=APq-WBtGUMS1ceirZg3u9OrjxeaktzoWaw%3A1643567397963&ei=Jdn2Yen0Oc3EkPIP3du9gA4&ved=0ahUKEwipm63Xjdr1AhVNIkQIHd1tD-AQ4dUDCA4&uact=5&oq=9%2C223%2C372%2C036%2C854%2C775%2C807+%2F+1000000+%2F+60+%2F+60+%2F+24+%2F+365&gs_lcp=Cgdnd3Mtd2l6EANKBAhBGAFKBAhGGABQ4w1Y9A9gxxZoAXAAeACAAZcBiAGYA5IBAzAuM5gBAKABAcABAQ&sclient=gws-wiz) to cycle through this many id numbers.
   * That's also over 18,000 records for every square meter on the face of the planet earth.  Not sure what database table needs that many records.


2. Using a value already in the data that is inherently unique.  For example, we might use perm number as an id field for a table of students.

   The `UCSBDiningCommons` entity in the sample code shows an example, where the `code` field is guaranteed to be unique; no two dining commons
   will have the same `code` value:

   ```
   @Id
   private String code;
   ```

### The `@Entity` class in more detail

<details markdown="1">
<summary markdown="1">
Click the triangle for more details on creating an `@Entity` class
</summary>

For example of `@Entity` classes, consult these files in the starter code:

* [UCSBDate.java](https://github.com/{{page.github_org}}/STARTER-team02/blob/main/src/main/java/edu/ucsb/cs156/example/entities/UCSBDate.java)
* [UCSBDiningCommons.java](https://github.com/{{page.github_org}}/STARTER-team02/blob/main/src/main/java/edu/ucsb/cs156/example/entities/UCSBDiningCommons.java)


You'll see that these files have a particular structure, with these annotations:

UCSBDate.java:

```
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity(name = "ucsbdates")
public class UCSBDate {
```

UCSBDiningCommons.java:

```
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity(name = "ucsbdiningcommons")
public class UCSBDiningCommons {
```

What do these annotations do?

* `@Data` is an annotation from a package called [Lombok](https://projectlombok.org/).  Lombok automatically generates code for some of the tedious things
   that can be automated: getters, setters, `toString`, `hashCode` and `equals`.  It also implements a constructor for all "required arguments", though that one is not always very convenient to use if we have lots of fields.
* `@AllArgsConstructor` and `@NoArgsConstructor` are additional [Lombok](https://projectlombok.org/) annotations that define additional constructors for us.  The  `@NoArgsConstructor` is particularly important, since it's a requirement of many pieces of Java Software that classes implement a no-args constructor (it's part of what it means to be a *Java Bean*.)
* `@Builder` create a class and some methods that make it easy to build objects with a syntax like this:
  ```
  UCSBDiningCommons commons = UCSBDiningCommons.builder()
        .name("Carrillo")
        .code("carrillo")
        .hasSackMeal(false)
        .hasTakeOutMeal(false)
        .hasDiningCam(true)
        .latitude(34.409953)
        .longitude(-119.85277)
        .build();
  ```
* `@Entity(name = "ucsbdiningcommons")` is the annotation that says this will be a row in a database table; the parameter sets the name of the table.  We typically use all lowercase plural nouns here, with no hyphens or underscores.

With these annotations in place, it's a simple matter of defining private fields for each of the columns in the database table.

</details>


### What is a `@Repository` class?

A second part of setting up a database table in Spring is creating a `@Repository` class.

Note: do not confuse this use of the english word "repository" with the concept of a "repository
in Git/Github.  The english word "repository" means "a container in which things are stored", and, regrettably, it was chosen, separately, by both the authors of git and the authors of Spring, to mean two very different kinds of collections.

In Spring, a `@Repository` class is an abstraction for the database table itself, i.e. an instance of a `@Repository` class represents the entire table of data (all of the rows and columns).

We typically name a Repository class with a name such as `___Repository` where the blank is filled in with the name of the `@Entity`, e.g. instances of an `@Entity` class named `UCSBDate` would be stored in a `UCSBDateRepository`.

It is important to understand that when you set up an `@Repository` class, the types that you pass to `CRUDRepository` as shown below must match the type of the `@Entity` and the type of the `@Id` field, as in these examples:

1. `UCSBDateRepository` uses `CrudRepository<UCSBDate, Long>` because the `@Id` field of `UCSBDate` is a `Long`:

    ```
    @Repository
    public interface UCSBDateRepository extends CrudRepository<UCSBDate, Long> {
    ...
    ```

2. `UCSBDiningCommonsRepository` uses `CrudRepository<UCSBDate, String>` because the `@Id` field of `UCSBDiningCommons` is a `String`:

    ```
    @Repository
    public interface UCSBDiningCommonsRepository extends CrudRepository<UCSBDiningCommons, String> {
    ...
    ```

As you look over your database table description above, take note of which of these applies to you.  It's important to choose the correct kind of code as your model when creating your own `@Entity`, `@Repository` and `Controller (@RestController)` classes:

* Choose `UCSBDate` as your example to follow when the id field is going to be an integer, e.g. in the cases of `UCSBDiningCommonsMenuItems`,  `RecommendationRequests`, `MenuItemReviews`, `HelpRequests`, `Articles`
* Choose `UCSBDiningCommons` when the id field is going to be a unique string that's part of the data, e.g. in the cases of `UCSBOrganizations`.

### The `@Repository` class in more detail

<details markdown="1">
<summary markdown="1">
Click the triangle for more details on creating an `@Repository` class
</summary>

For the repository class, see the examples:

* [UCSBDateRepository](https://github.com/{{page.github_org}}/STARTER-team02/blob/main/src/main/java/edu/ucsb/cs156/example/repositories/UCSBDateRepository.java)
* [UCSBDiningCommonsRepository](https://github.com/{{page.github_org}}/STARTER-team02/blob/main/src/main/java/edu/ucsb/cs156/example/repositories/UCSBDiningCommonsRepository.java)


Note that these are both `interface` files and not classes.

Normally, if you  create an `interface`, you also need to create a  class that implements that interface.

However, Spring Boot will *automatically generate the code for you*.

In addition, if you need certain kinds of queries, you can specify methods in your interface to implement those queries.

The rules for translating method naming conventions into
generated code are complicated: we will not go over all of them in lecture, and you are not expected to memorize or learn them all, and
*you probably won't need that for this assignment* (though you may need to know it later in the course.)

In any case, if/when you do need to understand that, here is some documentation is here to help get you started: <https://docs.spring.io/spring-data/jdbc/docs/current/reference/html/#jdbc.query-methods>

</details>

### What is a `Database Migration` file?

The third part of setting up your new table is a creating a *database migration file*.

In Liquibase, a migration file describes how a change should be applied to a given table. It is used on live databases where the data cannot be erased between versions and need to be under continuous integration.

* Each file contains multiple `changeSets`.
* Each change set has an `id` such as `Articles-1`.  The `id` is typically the name of the `@Entity` class followed by a number; these numbers just start at 1 and increase with each change set. , -the number of the `changeSet` in the file, Example: Articles-1.
* In addition to that each `changeSet` has an `author`, some `preconditions` and most important, a list of `changes`.

### The `Database Migration` file in more detail

<details markdown="1">
<summary markdown="1">
Click the triangle for more details on creating an `Database Migration` file
</summary>

For the Database Migration files, see the examples:

* [UCSBDate](https://github.com/ucsb-cs156-w24/STARTER-team02/blob/main/src/main/resources/db/migration/changes/UCSBDates.json)
* [UCSBDiningCommons](https://github.com/ucsb-cs156-w24/STARTER-team02/blob/main/src/main/resources/db/migration/changes/UCSBDiningCommons.json)

We describe the database changes in the `changes` section of the files linked to above.

Here's the code for one of those, namely the database migration for file `UCSBDates`:

```json
  {
    "databaseChangeLog": [
      {
        "changeSet": {
          "id": "UCSBDates-1",
          "author": "MattP",
          "preConditions": [
            {
              "onFail": "MARK_RAN"
            },
            {
              "not": [
                {
                  "tableExists": {
                    "tableName": "UCSBDATES"
                  }
                }
              ]
            }
          ],
          "changes": [
            {
              "createTable": {
                "columns": [
                  {
                    "column": {
                      "autoIncrement": true,
                      "constraints": {
                        "primaryKey": true,
                        "primaryKeyName": "CONSTRAINT_5"
                      },
                      "name": "ID",
                      "type": "BIGINT"
                    }
                  },
                  {
                    "column": {
                      "name": "LOCAL_DATE_TIME",
                      "type": "TIMESTAMP"
                    }
                  },
                  {
                    "column": {
                      "name": "NAME",
                      "type": "VARCHAR(255)"
                    }
                  },
                  {
                    "column": {
                      "name": "QUARTERYYYYQ",
                      "type": "VARCHAR(255)"
                    }
                  }
                ],
                "tableName": "UCSBDATES"
              }
            }
          ]
        }
      }
    ]
  }
```

The file is a JSON file that contains a single object with a single attribute `databaseChangeLog` which is an array of `changeSet` objects. These `changeSet` objects describe the sets of `changes` that need to be made to the database, as well as any `preConditions` that decide whether or not to apply the `changeSet`.

It is important that the `tableName` attribute of the `change` matches the `@Entity(name = YOURTABLENAME)` that you provided during the creation of the `@Entity` Class.

From this point forward, any time you make a change to the original entity you must add a new `changeSet` to the `databaseChangeLog` array with a new `id` value. The `changes` section of the `changeSet` will describe the changes that need to be made to the database in order to match the new `@Entity` class.

All changes described in these files will be applied everytime you start the app with `mvn spring-boot:run`. However if the changes were already applied they will not be applied again.

For more information on Liquibase you can visit <https://ucsb-cs156.github.io/topics/liquibase/>

Note that these files only describe the creation of a table, however on the real world you will most likely be describing changes like adding a new column or deleting an existing table etc. for all possible changes you can make to the database using the changes sets you can see <https://docs.liquibase.com/change-types/home.html>

Also you might find it useful to know the commands described in the [Liquibase doc](https://github.com/ucsb-cs156-w24/STARTER-team02/blob/main/docs/liquibase.md). They will allow you to check and apply the changes that will happen to the database outside of just building the app

</details>


# More Hints

We may add more hints about working with the team02 code as we discover what
problems studnets run into.

In the meantime, use the `#help-team02` channel to ask questions.

# A note about open source

Note that this assignment is open source.

The repos are public *on purpose*.
* You are encouraged to consult with one another within and across teams where it helps
  your learning.
* That does not mean that you can cheat by just copying code from another team.
* You are *not* permitted to just look at another team's code, even though you "can".
* It does mean that you should try to solve the problems as best you can, but you may
  consult with members of other teams as you work.  In that context, you may look at
  other team's code.

This isn't hard.   You all *know* when you are are looking at other team's work to
try to learn, versus when you are just looking at it as a shortcut to learning.

I'm trusting you to do the right thing.   This is practice for when, later on, you are
all working on different assignments.


# Details: Controller methods and tests

The examples for the Controllers and Controller Tests are in these files:

* Controllers:
  - [UCSBDatesController.java](https://github.com/{{page.github_org}}/STARTER-team02/blob/main/src/main/java/edu/ucsb/cs156/example/controllers/UCSBDatesController.java)
  - [UCSBDiningCommonsController.java](https://github.com/{{page.github_org}}/STARTER-team02/blob/main/src/main/java/edu/ucsb/cs156/example/controllers/UCSBDiningCommonsController.java)
* Controller Tests:
  - [UCSBDatesControllerTests.java](https://github.com/{{page.github_org}}/STARTER-team02/blob/main/src/test/java/edu/ucsb/cs156/example/controllers/UCSBDatesControllerTests.java)
  - [UCSBDiningCommonsControllerTests.java](https://github.com/{{page.github_org}}/STARTER-team02/blob/main/src/test/java/edu/ucsb/cs156/example/controllers/UCSBDiningCommonsControllerTests.java)

You should be able to find the code you need for each of the methods, and use it as a model to create the code for your database table.

If you need additional guidance, ask on the `#help-team02` channel, and we'll try to steer you in the right direction.

# When you are done

When all branches are merged to main, all tasks on Kanban board in the done column, please submit on Canvas.

There is no Gradescope autograder for team02; it will be graded manually.

# Instructor Resources


<details markdown="1">
<summary>
Click the triangle for a list of tasks the instructor should do prior releasing this lab.
</summary>

* Create team02 repos using the <https://ucsb-cs-github-linker.herokuapp.com>

  <img width="465" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/434dceb9-77a3-4ce6-9c28-a5faf4e0be1d">

* Set up starter code in the course organization, and update links
* Create a Canvas assignment for team01
* Create projects for all of the groups. You can find a script for this here:
  * <https://github.com/{{page.github_org}}/project-creator/blob/main/scripts/team02-projects.sh>
  You will probably need to make a new copy of that repo for this quarter in this
  quarter's organization and update the scripts.
* After running the script, there are three aspects of setting up the projects that
  are manual:
  * set view to board
  * change team access to admin
  * add "In Review" column
* Make sure the app <{{page.demo_deployment}}> is up and running, and is sync'd with the starter code:

  i.e, on dokku-00 for example, do:

  <pre>
  dokku git:sync team01 https://github.com/{{page.github_org}}/PRIVATE-team01 main
  dokku ps:rebuild team01
  </pre>

* Proofread the instructions in this file, and request that the staff (TAs/LAs do also)
* Consider assigning at least one TA/LA (preferably the one with the least prior experience with the course) to complete the lab in it's entirety to debug the starter code and instructions
* Be sure that the organization settings are set like this, in, for example, <https://github.com/organizations/{{page.github_org}}/settings/actions>

  This is needed so that the github actions scripts have write access to the directory.

  <img width="943" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/de8c9efe-7bcd-48a1-97d5-0c0aa68a68db">


  This setting is probabaly also a good idea:

  <img width="972" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/99fead23-d9d0-4373-a435-466c5ef9e752">


</details>

