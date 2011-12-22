import com.blog.security.Role
import com.blog.security.User
import com.blog.security.UserRole

class BootStrap {

    def init = { servletContext ->
		
		def bloggerRole = new Role(authority: 'ROLE_BLOGGER').save(flush: true)
		def commenterRole = new Role(authority: 'ROLE_COMMENTER').save(flush: true)
  
		def blogUser = new User(username: 'blogger', enabled: true, password: '1234abcd')
		blogUser.save(flush: true)

		def commenterUser = new User(username: 'commenter', enabled: true, password: '1234abcd')
		commenterUser.save(flush: true)
  
		UserRole.create blogUser, bloggerRole, true
		UserRole.create commenterUser, commenterRole, true
		
    }
    def destroy = {
    }
}
