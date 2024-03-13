class LoginPage < SitePrism::Page
    set_url ''
    element :inputUsername, :id, "user-name"
    element :inputPassword, :id, "password"
    element :buttonSubmit, :id, "login-button"

    def userLogin(user, password)
        inputUsername.set (user)
        inputPassword.set (password)
        buttonSubmit.click
    end

end