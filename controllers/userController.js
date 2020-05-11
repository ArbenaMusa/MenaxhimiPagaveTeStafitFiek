var User = require('../models/user');
// var connection = require('./../config');

class UserController {

    login (req, res) {
        var message = '';

        if (req.method == "POST") {
            var post = req.body;
            var id = post.id;
            var password = post.password;

            // todo check if user exists (is valid) in database
            if (id == "admin" && password == "admin") {
                //session creation
                req.session.userId = id;
                // todo check user's role and store it on a cookie
                res.cookie('role', 'user')
                res.redirect('index');
            } else {
                message = 'Nuk e keni shkruar përdoruesin ose fjalëkalimin e saktë!';
                res.render('login', {title: 'SEMP-Sistemi Elektronik për Menaxhimin e Pagave', message: message});
            }
        }
    }

    logout (req, res) {
        //session destroy
        req.session = null;
        res.clearCookie();
        res.redirect('/login');
    }

    // todo get all user function

    // todo get profile for a specific user function

    // todo add a user

    // todo update a user

    // todo delete a user and its related data
}

module.exports = UserController;
