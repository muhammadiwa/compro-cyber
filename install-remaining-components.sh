#!/bin/bash

# Script to install all Shadcn UI components

# List of all Shadcn UI components
components=(
  "avatar"
  "badge"
  "breadcrumb"
  "calendar"
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
  "hover-card"
  "input"
  "input-otp"
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

# Install each component with automatic force flag for React 19
for component in "${components[@]}"; do
  echo "====================================="
  echo "Installing $component..."
  echo "====================================="
  # Using --yes to automatically answer prompts with default values
  echo "1" | npx shadcn@latest add $component
  
  # Check if installation was successful
  if [ $? -eq 0 ]; then
    echo "✅ $component installed successfully"
  else
    echo "❌ Failed to install $component, continuing with next component"
  fi
  
  # Small delay to prevent rate limiting or issues
  sleep 1
done

echo "All components installation completed!"
