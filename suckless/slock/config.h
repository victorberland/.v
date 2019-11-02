/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#1B0F1C",     /* after initialization */
	[INPUT] =  "#2C2330",   /* during input */
	[FAILED] = "#1B1A1C",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 0;
