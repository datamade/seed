import org.apache.shiro.SecurityUtils

def loggedIn = { ->
    SecurityUtils.subject.authenticated
}
def loggedOut = { ->
    !(SecurityUtils.subject.authenticated)
}
def isAdmin = { ->
    SecurityUtils.subject.hasRole('ADMIN')
}
 
navigation = {
	user {
		login controller: "auth", action: "index", titleText: "Log in", visible: loggedOut
		logout controller: "auth", action: "signOut", titleText: "Log out", visible: loggedIn
	}
	admin {
		dbconsole titleText: "Database Console", visible: isAdmin
	}
}
