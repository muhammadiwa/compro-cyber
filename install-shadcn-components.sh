#!/bin/bash

# Script to install all Shadcn UI components

# List of all Shadcn UI components
components=(
  "accordion"
  "alert"
  "alert-dialog"
  "aspect-ratio"
  "avatar"
  "badge"
  "breadcrumb"
  "button"
  "calendar"
  "card"
  "carousel"
  "checkbox"
  "collapsible"
  "combobox"
  "command"
  "context-menu"
  "data-table"
  "date-picker"
  "dialog"
  "drawer"
  "dropdown-menu"
  "form"
  "hover-card"
  "input"
  "input-otp"
  "label"
  "menubar"
  "navigation-menu"
  "pagination"
  "popover"
  "progress"
  "radio-group"
  "resizable"
  "scroll-area"
  "select"
  "separator"
  "sheet"
  "skeleton"
  "slider"
  "sonner"
  "switch"
  "tabs"
  "textarea"
  "toast"
  "toggle"
  "toggle-group"
  "tooltip"
)

# Install each component
for component in "${components[@]}"; do
  echo "Installing $component..."
  npx shadcn@latest add "$component" --force
  echo "$component installed"
done

echo "All components installed!"
