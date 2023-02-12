# TV Maze app

Application for listing TV series, using the API provided by the TVMaze
website

# TO DEBUG

- Install fvm: https://fvm.app/docs/getting_started/installation/

- run `fvm use 3.3.10` to install flutter
- run `fvm flutter pub get` to download dependencies
- restart vscode at repository
- run `fvm flutter run --debug` to debug the code
- or go to run & debug in vscode and select debug mode.

## APP FEATURES

- ~~List all series using paging scheme~~
- ~~Search series by name~~
  - ~~Show name and poster image~~

- ~~Series details page:~~
  - ~~Name~~
  - ~~Poster~~
  - ~~Days and time during which the series airs~~ (UI can be improved)
  - ~~Genres~~ (UI can be improved)
  - ~~Summary~~
  - ~~Lis of episodes separed by season~~

- ~~Episode details page:~~(UI can be improved)
  - ~~Name~~
  - ~~Number~~
  - ~~Season~~
  - ~~Summary~~
  - ~~Image (can be null)~~

- Pin number to secure application
- Fingerprint, faceID or touchID
- Save series as favorites list (started, not working)
- Delete a series from the favorites (started, not working)
- Browse their favorites series in alphabetical order
- Search their favorites series by name (started, not working)
- People search by listing name and image of the person

- Person page:
  - Name
  - Image
  - Series participated, with a link to the series details

## APP BONUS FEATURES

- User profile
- Onboarding
- Settings
  - Language
  - Theme (dark and light)

## CODE BONUS

- Unit test
- Golden test

## CRITERIAS

- Focus on UI/UX
- Clean Code/SOLID/Clean Arch
- Focus on the original scope first
- Unit test and golden test is a plus
- Extra features is a plus

## DELIVERABLES

- Generate the application
- Put it on distribution folder
- Share the repository link
- Indicate bonus tasks completed
- Create README.md with instructions to run and debug the code

# NEXT STEPS

## ARCHITECTURE IMPROVEMENTS

- Change navigation: from GetX to GoRoute
- Use Injectable and GetIt to control dependencies and allow mock on repositories and services
- Use BLoC as robust state manager (working features)

## UX IMPROVEMENTS

- Improve dark theme and light theme by setting up all theme data parameters
- Add BottomNavigationBar to allow see all series, favorites series and profile
- Improve transition animation between pages