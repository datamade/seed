package gov.doe.seed.shiro

class User {
	static auditable = true
	
	String username
    String passwordHash
    
    static hasMany = [ roles: Role, permissions: String ]

    static constraints = {
        username(nullable: false, blank: false, unique: true)
    }
}
