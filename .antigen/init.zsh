#-- START ZCACHE GENERATED FILE
#-- GENERATED: Tue Aug 22 11:11:37 PM WEST 2023
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/home/hugens/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/hugens/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/hugens/.antigen/bundles/zsh-users/zsh-autosuggestions) path+=(/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib /home/hugens/.antigen/bundles/zsh-users/zsh-syntax-highlighting /home/hugens/.antigen/bundles/zsh-users/zsh-autosuggestions)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/home/hugens/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh" ]]; then
  ZSH="/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh"; ZSH_CACHE_DIR="/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/cache/"
fi
#--- BUNDLES BEGIN
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh';
source '/home/hugens/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/home/hugens/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/themes/bira.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git lib plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git themes/bira.zsh-theme theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/bzr.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/clipboard.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/cli.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/compfix.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/completion.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/correction.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/diagnostics.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/directories.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/functions.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/git.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/grep.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/history.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/key-bindings.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/misc.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/nvm.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/prompt_info_functions.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/spectrum.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/termsupport.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/theme-and-appearance.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/lib/vcs_info.zsh' '/home/hugens/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/home/hugens/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/home/hugens/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/home/hugens/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/themes/bira.zsh-theme' '/home/hugens/.antigen/bundles/robbyrussell/oh-my-zsh/themes/bira.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
