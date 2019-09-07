/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#193441",     /* after initialization */
	[INPUT] =  "#3E606F",   /* during input */
	[FAILED] = "#91AAB4",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 0;
