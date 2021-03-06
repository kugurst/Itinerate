package itinerate

class SignupController {

    def index() {
    	//1. Get the JSONified version of the current (pending) user's itinerary.
    	def pendingItinerary = null/*some JSON object*/;
    	[itinerary: pendingItinerary]
    }

    def submit_form() {
    	def userId = 0

    	if(params.username != null) {
    		userId = User.createUserByEmailAndUname(params.email, params.username, params.securePwd)			
		} else {
			userId = User.createUserByEmail(params.email, params.securePwd)
		}

		if(userId > 0){
			def user = User.getUserFromId(userId)
			user.iternary = null/* some JSON stuff */
			session.userId = userId
			redirect(controller:'itinerary', action: 'print')
			return
		}
			// notify user that this username has already been used
		else if(userId == -1){
			def errorMessage = "This user exists, try again!"
			redirect(controller:'subscription', action: 'index', params: [errorMessage:errorMessage])
		}
			// notify error occurred
		else{
			def errorMessage = "Please enter a valid username/password"
			redirect(controller:'subscription', action: 'index', params: [errorMessage:errorMessage])
		}
    }
}
