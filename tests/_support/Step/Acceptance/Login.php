<?php
namespace Step\Acceptance;

use Page\loginElements as loginElement;

class Login extends \WebGuy
{
    protected $_defaults = array(
        'username'          => 'user',
        'email'             => 'user',
        'password'          => 'user',
        'admin_username'    => 'admin',
        'admin_password'    => 'admin'
    );

    public function LoginFrontEnd($customisation = array())
    {
        $config = (object) array_merge($this->_defaults, $customisation);

        $I = $this;
        $I->amOnPage('/');

        $I->amGoingTo('Login as ' . $config->username);

        $I->fillField(loginElement::$username_field, $config->username);
        $I->fillField(loginElement::$password_field, $config->password);
        $I->click(loginElement::$login_button);

        $I->see(sprintf(loginElement::$login_confirm, $config->username));
        $I->dontSee(loginElement::$login_error);
        $I->expect('To be logged in now');

        $I->amOnPage('/');
    }

    public function logoutFrontEnd($customisation = array())
    {
        $config = (object) array_merge($this->_defaults, $customisation);
        
        $I = $this;
        $I->amGoingTo('Logout now');
        $I->click(loginElement::$logout_link);
        $I->see(loginElement::$login_link);
        $I->expect('To be logged out now');
    }

    public function loginAdminEnd($customisation = array())
    {
        $config = (object) array_merge($this->_defaults, $customisation);

        $I = $this;
        $I->amOnPage('/administrator');
        $I->amGoingTo('Login in now');
        $I->fillField(loginElement::$username_field, $config->admin_username);
        $I->fillField(loginElement::$admin_password_field, $config->admin_password);
        $I->click(loginElement::$login_button);

        $I->see(loginElement::$admin_login_config);
        $I->dontSee(loginElement::$login_button);

        $I->expect('To be logged into the admin side now');

    }
}