package us.avenue.cognito
import android.content.Context
import com.amazonaws.cognito.clientcontext.data.UserContextDataProvider
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserPool
import com.amazonaws.regions.Regions

class CognitoAvenue {
    companion object {
        @JvmStatic
        fun getUserContextData(context: Context, username: String, userPoolId: String, clientId: String): String {
            val provider: UserContextDataProvider = UserContextDataProvider.getInstance()
            return provider.getEncodedContextData(context, username, userPoolId, clientId)
        }
    }

}