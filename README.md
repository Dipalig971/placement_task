# placement_task

A Flutter Todo App that allows users to manage their tasks efficiently with a clean and interactive UI. The app supports dynamic theme switching (light/dark mode), persistent view preferences (List/Grid View), and a feature to bookmark todos. It integrates data fetching from a public API (https://jsonplaceholder.typicode.com/todos) and leverages GetX for state management.

## Features

### Fetch Todos from API:

- Todos are dynamically fetched from a public API (https://jsonplaceholder.typicode.com/todos).
- Displays both completed and pending todos with distinct colors for easy differentiation.

### Toggle List/Grid View:

- Users can switch between List View and Grid View for displaying todos.
- The view preference is saved using SharedPreferences for a persistent experience across app launches.

### Bookmark Todos:

- Users can bookmark important todos using the bookmark icon.
- Bookmarked todos are stored locally using SharedPreferences and displayed on a separate Saved Todos Screen.
- Users can also remove todos from the saved list.

## Dynamic Light/Dark Theme:

- Toggle between light and dark themes using a button in the app bar.
- The theme preference is saved using SharedPreferences and automatically applied when the app is reopened.

## Saved Todos Screen:

- View a list of all bookmarked todos.
- Users can remove todos from the saved list easily.

## User-Friendly UI:

- Clean and responsive design with Material Design principles.
- Different colors for completed (green) and pending (red) todos.

## State Management:

- Uses GetX for reactive state management, ensuring smooth and dynamic UI updates.

## Persistent Data:

- Light/Dark Theme, List/Grid View preference, and bookmarked todos are saved locally using SharedPreferences.

## ScreenShot

<img src="https://github.com/user-attachments/assets/d7c57ab9-46f7-4715-9d9a-def7fb5e5021" width=240>
<img src="https://github.com/user-attachments/assets/32e5ac9e-7381-447a-acaa-2bcef74083ef" width=240>
<img src="https://github.com/user-attachments/assets/e35b2474-2e0f-4451-8464-861ba4694f9b" width=240>
<img src="https://github.com/user-attachments/assets/fdeabfaa-0902-4a7a-bf46-7ce80da63be4" width=240>

## Video

https://github.com/user-attachments/assets/61cb35cf-6fc3-47dd-9d86-d0dbfefd1a64



