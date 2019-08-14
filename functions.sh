# My Custom Functions

#bold=$(tput bold)
#normal=$(tput sgr0)
bold="\033[1m"
normal="\033[0m"

function mf() {
	mf_about;
	mhello_about;
	mtest_about;
	msp_about;
	mlh_about;
}
function mf_about() {
	echo -e "${bold}mf${normal}: My Function List"
}

function mhello() {
	echo "hello!"
}
function mhello_about() {
	echo -e "${bold}mhello${normal}: test that we have properly sourced this functions.sh	\
file inside of .bashrc"
}

function mtest() {
	bash test.sh
}
function mtest_about() {
	echo -e "${bold}mtest${normal}: prove that we can store logic in an *.sh file \
and execute it WITHOUT chmoding it"
}

export msp_ps1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\[\033[00m\]\$ '
function msp() {
	PS1=$msp_ps1
}
function msp_about() {
	echo -e "${bold}msp${normal}: my short prompt, shortens the prompt"
}

function mlh() {
	ls -alh
}
function mlh_about() {
	echo -e "${bold}mlh${normal}: list with details and human readable file size"
}