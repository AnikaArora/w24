---
desc: "Deploying a Spring Boot/React/OAuth/Postgres app on Dokku"
description: "Deploying a Spring Boot/React/OAuth/Postgres app on Dokku"
assigned: 2024-01-18 14:00
due: 2024-01-25 23:59
github_org: ucsb-cs156-w24
num: jpa03
title: jpa03
nav_order: 103
ready: true
starter: https://github.com/ucsb-cs156-w24/STARTER-jpa03
layout: default
parent: lab
teams_url: https://bit.ly/cs156-w24-teams
example_running_app: https://jpa03-staff.dokku-00.cs.ucsb.edu/
office_hours_page: https://ucsb-cs156.github.io/w24/office-hours
software_install_url: https://ucsb-cs156.github.io/w24/info/software.html
---

For due date: see the jpa03 entry on Canvas: <https://ucsb.instructure.com/courses/17178/assignments/192309>

# Instructions for jpa03

If you run into problems, let us know on the `#jpa03-help` channel on the slack.

{% include drop_down_style.html %}

This is an **individual** lab on the topic of deploying
Java web apps that use OAuth and Databases, using Dokku.

You may cooperate with one or more pair partners from your team to help in debugging and understanding the lab, but each person should complete the lab separately for themselves.

## Goal

By the end of this lab, you'll have deployed your own copy of the starter code repo (<{{page.starter}}>) on both localhost
and Dokku.

This app is a full-stack web app with:

* A front-end built in React (under the directory `./frontend`)
* A back-end built in Spring Boot (the code for this is under the directory `./src`, plus the `pom.xml` at the top level
* OAuth integration; this allows the app to have a "login/logout" feature based on Google Accounts (e.g. your UCSB Google Account)
* A SQL database, which runs using H2 (an in-memory database) on localhost, and using Postgres when running on Dokku.
* Automatic generation of javadoc and storybook web pages for both
  the production code (`main` branch) and all branches that have
  open pull requests targetting the `main` branch.

This app is not intended as a coherent app to solve a real-world problem,
but as a code base that demonstrates many of the techniques you
would need in such an app.   The legacy code apps that we'll work
with in this course have a similar structure.

Here is an example of this app, up and running.  Try logging in with your UCSB Google Credentials:

* <{{page.example_running_app}}>

If the menu looks like this, click on the hamburger icon (☰) to expose the Login button:

<img width="799" alt="image" src="https://user-images.githubusercontent.com/1119017/235781737-648575ec-c095-4ecf-a218-12ec579d4d19.png">

It should then look like this, and you shoudl be able to login:

<img width="732" alt="image" src="https://user-images.githubusercontent.com/1119017/235782012-7775743c-1880-4960-b99a-3417055f850e.png">

Once you are logged in, you'll see a navigation bar like this one:

<img width="1208" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/c6acd005-85fb-4907-b65e-cce203a61294">


None of the menus will do much of anything.  It turns out that the application is
a shell of an application that:

* allows users to login and logout using a Google account
* allows the developer to configure some users as "admins"
* allows admin users to see who has logged in to the app in the past (by storing
  each login in a database)

However, we need those basic functions as a basis to build more complex functions,
and every student in the class needs to know how to configure and deploy an app on
Dokku.  The configuration has several parts:

* Setting up SSL (https) for your dokku app
* Configuring Google OAuth (this can be tested on localhost first)
* Setting up the dokku app
* Connecting it to a Github repo
* Configuring https
* Configuring a postgres database on Dokku

So, let's get started.

## Preliminaries

You'll need an environment where you can test this lab out on localhost before deploying.

* The best choice is your own laptop if you have one available
* The best known alternative is using Github Codespaces
* CSIL is not a good choice; you'll probably exceed your disk or file quota if you try.

For working on your own machine, you'll need the following:

* Java 17
* Maven
* git
* Heroku CLI
* nvm (Node Version Manager) to select Node 16.20.0
* npm 9.x

See guides for installing these on your machine at this link:

* <{{page.software_install_url}}>


## Step 1: Understanding what we are trying to do

## What are we trying to accomplish in this lab?

This lab, similar to `jpa02` has little to no programming.
The point of the lab is to walk you through the steps you need to
take to deploy full-stack Spring Boot/React apps on Dokku, configuring them for Google OAuth (for logins) and a Postgres database.

There are quite a few configuration steps that are needed,
and we want to get you used to those before we start
introducing the coding challenges as well.

## Step 2: Create your repo

There should already be a repo for you under the course organization
with a name in this format:

* <tt>https://github.com/{{page.github_org}}/{{page.num}}-<i>githubid</i></tt>

where <tt><i>github</i></tt> is your github id.

If not, create one for yourself following that naming convention;
it should initially be public, and empty (no `README`, license or
`.gitignore`.)

Clone that repo somewhere and cd into it.

Then add this remote:

<tt>git remote add starter {{page.starter}}</tt>

That sets up `starter` as a remote with the code from this github repo:
* <{{page.starter}}>

Then do:

```
git checkout -b main
git pull starter main
git push origin main
```

## Step 3: Configure Actions and Github Pages

Next, find the `Actions` tab on your repo.  It should look like one of the images below

<table>
<thead>
<tr>
<th>
If GitHub Actions are not yet enabled:
</th>
<th>
If GitHub Actions are already enabled:
</th>
</tr>
</thead>
<tbody>
<tr>
<td>
<img width="476" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/a7d67508-1a03-4215-a1de-e63bc58cddd0">
</td>
<td>
<img width="984" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/1a60521f-474d-4bbd-a8eb-3c0c66dc134f">
</td>
</tr>
</tbody>
</table>

If it looks like the one on the left, click the green button that says "Enable Actions on this Repository".

Next, visit the file [`docs/github-pages.md`](https://github.com/ucsb-cs156-w24/STARTER-jpa03/blob/main/docs/github-pages.md) on GitHub and read what it says to do to configure the documentation for your repo on Github Pages.

## Step 4: Configure your app for localhost as documented in the README.md

Before we start configuring your app, let's take just a moment to learn what OAuth is

## About OAuth

OAuth is a protocol that allows you to delegate the login/logout
functionality (user authentication) to a third party such as
Google, Facebook, GitHub, Twitter, etc.  If you've ever used
a website that allows you to "Login with Google", "Login With Facebook", or "Login with Github" then chances are good that app was built using OAuth.

Indeed, you've already encountered an examples of GitHub OAuth earlier in the course when you used your GitHub account to log into the <https://ucsb-cs-github-linker.herokuapp.com>

When implementing a website that can store information and making it available on the public internet it's important to *secure the site;* otherwise, bad actors may fill your database with unsavory material.

One choice is to implemnent our own username/password authentication, but I want to strongly caution you: if you take on the responsibility of storing passwords, you are assuming a lot of risk.  The problem is that people reuse passwords, so even if you think that your site isn't that important, the problem is that the passwords you are storing might be the same ones folks are using for other sensitive apps.

Using OAuth sidesteps this issue:
* Your app never actually sees the password the user enters; it is entered on a page that is hosted by Google (or Facebook, or Github, or whoever is providing the OAuth service.)
* The user doesn't need to come up with a new username or password; they can use one they already have.

Implementing OAuth can be tricky at first, but once you get the hang of it, it's far easier than everything you would need to do to really work with usernames/passwords securely and safely.

## Steps to Configure your app

The next step is to read through the [`README.md`]({{page.starter}}/blob/main/README.md) and configure your app as indicated there.

As shown in the [`README.md`]({{page.starter}}/blob/main/README.md), these steps include the following.  Each of these is documented in files linked to from the [`README.md`]({{page.starter}}/blob/main/README.md) file so we won't repeat those here; we'll just link to them.

1. [Configuring GitHub Pages for the documentation]({{page.starter}}/tree/main#configuring-github-pages-for-the-documentation)
2. [Getting Started on localhost](https://github.com/{{page.starter}}/tree/main#getting-started-on-localhost), which includes:
   - Setting up Google OAuth credentials
   - Entering those credential in the `.env` file
   - Learning how to run the backend and frontend in separate windows



## The `.env` file  should *not* be committed to GitHub

I already made this point, but I really, really want to emphasize it.

One of the values in the `.env` file is called a client *secret* for a reason.

If it leaks, it can be used for nefarious purposes to compromise the security of your account; so don't let it leak!

Never, ever, commit those to GitHub, and try to only share them in DMs on Slack (not in public channels).

Security starts with making smart choices about how to handle credentials and tokens. The stakes get higher when you start being trusted with credentials and tokens at an employer, so learning how to handle these with care now is a part of developing good developer habits.

The staff reserve the right to deduct points if we find that you have committed your `.env` file to GitHub.


## Green check ✅, not red X ❌

Once you've completed your setup, GitHub Actions should be running on the main branch with
a green check, not a red X.  If there are problems there,
address those as best you can before submitting.

# Step 5: Configure your app to run on Dokku

The steps to get your app up and running on Dokku are documented here:

* [Getting Started on Dokku](https://github.com/ucsb-cs156-s23/STARTER-jpa03/tree/main#getting-started-on-dokku)

These include:
- Setting up SSL (https) for your dokku app
- Creating the dokku app
- Creating the postgres database and linking it to your app
- Setting up the needed environment variables with `dokku config:set app-name VARIABLE=VALUE`

Once you have your app up and running try logging in with OAuth, and store things in the database.

## What if it doesn't work?

If it doesn't work:

* Check on the Slack channel <tt>#help-{{page.num}}</tt> to see if there are any known issues.
* Ask folks on your own team for help first on your team's slack channel.
* Post a specific question on the <tt>#help-{{page.num}}</tt> slack channel—note what you were trying to do, what you expected, and what happened instead.  Screenshots or copy/pasted console output is helpful!
* Come to office hours (posted here: <{{page.office_hours_pages}}>)
* Ask during class on `#help-lecture-discussion`


## Step 6: Add link to running app to your README.md file

At the top of your README.md, you'll find this:

<img width="500" alt="image" src="https://user-images.githubusercontent.com/1119017/235758700-20b3d8cf-d0dc-4182-8e6d-5e6ef551956a.png">

Follow these instructions; i.e. put in the link to your running app on Dokku, and
remove the comment so that afterwards it looks something like this (but with your actual Dokku link,
not the example value shown here).

<img width="500" alt="image" src="https://user-images.githubusercontent.com/1119017/235759017-e48fdcf6-abb7-40e7-8ae8-71173113d4cd.png">


## Step 7: Submit on Canvas

Here's a checklist to look over before submitting on Canvas:

1. On the main page for the repo: is the app "green on CI"? i.e. does the `main` branch have a green check for the Github Actions scripts?
2. On the main page for the repo: is there a link to the apps Github Pages site on the main page for the repo?  (i.e. the site whose URL is something like `https://ucsb-cs156-w24.github.io/jpa03-cgaucho`)?
3. Does the Github Pages site link take you to a page with links to
   javadoc and storybook?
4. Do those javadoc and storybook links work?
5. In the README.md file: is there a link to the running app?
6. Does OAuth work on the running app, i.e. can I log in with my Google login?
7. Did you remember to add the staff(see emails in the rubric below), your teammates, and yourself to the `ADMIN_EMAILS` variable in your `config:set` on dokku?
8. Did you deploy a database? If so, for Admin users, the Users menu should show who has logged in recently (it uses the database to do this.)
If so, then you are ready to submit on Canvas.

* Submit the link to *your repo*, not the link to your running app.

## Grading Rubric:

* (10 pts) Basic Logistics
  * There is a repo with the correct name in the correct organization with the starter code for this lab
  * There is a post on Canvas for this assignment that has the correct content
* (10 pts) There is a running web app at <tt>https://{{page.num}}-<i>githubid</i>.dokku-xx.cs.ucsb.edu</tt>
* (10 pts) README has a link to your running web app.
* (20 pts) Running web app has the ability to login with OAuth through a Google Account.
* (10 pts) The `ADMIN_EMAILS` variable is set to include all staff emails (see list below) plus your own email.
  - The correct setting is shown below, except with your email in place of `youremail`
  - `ADMIN_EMAILS=youremail@ucsb.edu,scottpchow@ucsb.edu,andrewpeng@ucsb.edu,anika_arora@ucsb.edu,sangitakunapuli@ucsb.edu,ihoffman@ucsb.edu,whuang602@ucsb.edu,aasish@ucsb.edu`
* (20 pts) Github Pages are set up correctly including:
  - The link on your main repo page is set to the running Github Pages
  - That link shows the correct content
* (20 pts) GitHub Actions runs correctly and there is a green check (not a red X) on your main branch

Note that the Rubric above is subject to change, but if it does:

* You'll be notified during a class meeting
* You'll have an additional week from the date of the announced change to get your repo in shape with the new requirements.


# Instructor Resources


<details markdown="1">
<summary>
Click the triangle for a list of tasks the instructor should do prior releasing this lab.
</summary>

* Create jpa03 repos using the <https://ucsb-cs-github-linker.herokuapp.com>
* Set up starter code in the course organization, and update links
* Create a Canvas assignment for jpa03
* Make sure the app <{{page.example_running_app}}> is up and running, and is sync'd with the starter code:

  i.e, on dokku-00 for example, do:
  ```
  dokku git:sync jpa03-staff https://github.com/ucsb-cs156-w24/STARTER-jpa03 main
  dokku ps:rebuild jpa03-staff
  ```
* Proofread the instructions in this file, and request that the staff (TAs/LAs do also)
* Consider assigning at least one TA/LA (preferably the one with the least prior experience with the course) to complete the lab in it's entirety to debug the starter code and instructions
* Be sure that the organization settings are set like this, in, for example, <https://github.com/organizations/ucsb-cs156-w24/settings/actions>

  This is needed so that the github actions scripts have write access to the directory.

  <img width="943" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/de8c9efe-7bcd-48a1-97d5-0c0aa68a68db">


  This setting is probabaly also a good idea:

  <img width="972" alt="image" src="https://github.com/ucsb-cs156/f23/assets/1119017/99fead23-d9d0-4373-a435-466c5ef9e752">


</details>


