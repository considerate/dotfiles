# name: L
function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_mode_prompt --description 'Displays the current mode'
    # Do nothing if not in vi mode
    switch $fish_bind_mode
        case default
            set_color --bold --background red white
            echo '[N]'
        case insert
            set_color --bold --background green white
            echo '[I]'
        case visual
            set_color --bold --background magenta white
            echo '[V]'
    end
    set_color normal
    echo -n ' '
end

function fish_prompt
  set -l blue (set_color blue)
  set -l green (set_color green)
  set -l normal (set_color normal)

  set -l arrow "λ"
  set -l cwd $blue(basename (prompt_pwd))

  if [ (_git_branch_name) ]
    set git_info $green(_git_branch_name)
    set git_info ":$git_info"

    if [ (_is_git_dirty) ]
      set -l dirty "*"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $cwd $git_info $normal ' ' $arrow ' '
end
