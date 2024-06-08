# EXAMPLE from running tmuxifier new-session test

# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
#session_root "~/Projects/test"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "test"; then

  # Create a new window inline within session layout definition.
  new_window "test"
  new_window "dev"

  # Load a defined window layout.
  #load_window "example"

  # Select the default active window on session creation.
  select_window "test"
  run_cmd "cd ~/Developer/test/"
  run_cmd "nvim"
  split_h 20
  run_cmd "cd ~/Developer/test/"

  select_window "dev"
  run_cmd "nvim ~/.zshrc"
  split_v 20
  run_cmd "cd ~/Desktop"

  select_window "test"

fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
