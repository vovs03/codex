# 2024-05-27

COLOUR_GREEN=\033[0;32m
COLOUR_RED=\033[0;31m
COLOUR_YELLOW=\033[0;33m
COLOUR_BLUE=\033[0;34m
COLOR_MAGENTA=\033[0;35m
COLOR_MAGENTA_BG=\033[0;45m
COLOR_BLUE_LIGHT=\033[0;94m
COLOR_BLUE_LIGHT_BG=\033[0;104m

# BOLD
COLOR_BLUE_LIGHT_BOLD="\033[1;$(COLOR_BLUE_LIGHT)m"
END_COLOUR=\033[0m

# Reset to main color
NC=\033[0m

# Рекурсивное удаление всех *.class-файлов
.PHONY: cl
cl:
	@scripts/delete_class_files.sh

# https://makefiletutorial.com/#multiple-targets
.PHONY: gm
gm: cle intro_header _mmc _rr

cle:
	clear

intro_header:
	@echo "${COLOR_MAGENTA_BG}  Памятка основных команд  ${NC} 🐙  ${COLOR_MAGENTA}##${NC} [git] ${COLOR_MAGENTA}##${NC}"

# Main Commands
.PHONY: _mmc
_mmc:
	@echo ""
	@echo "${COLOUR_YELLOW}# Создать и переключиться на новую ветку(branch) #${NC}"
	@echo "[${COLOUR_YELLOW}gcb${NC}] = git checkout -b"
	@echo ""
	@echo "[${COLOUR_YELLOW}gcm${NC}] = git checkout master"
	@echo "[${COLOUR_YELLOW}gcd${NC}] = git checkout develop"	

	@echo ""
	@echo "${COLOUR_YELLOW}# Удалить ветку(локально) #${NC}"
	@echo "${COLOUR_YELLOW}#${NC} gb -D branch_name ${COLOUR_YELLOW}#${NC}"	

# Remote repository
.PHONY: _rr
_rr:
	@echo ""
	@echo "${COLOR_BLUE_LIGHT_BG}# Работа с репозиторием(remote) #${NC}"	
	@echo "[${COLOUR_YELLOW}gp${NC}] = git push"
	@echo "[${COLOUR_YELLOW}gl${NC}] = git pull"
	