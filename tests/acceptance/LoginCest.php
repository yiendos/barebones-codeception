<?php

//declare your helpers here
use Page\LoginElements as LoginElements;

class LoginCest
{
    protected $siteurl;

    protected $edit_data;

    protected function _inject()
    {
        $config = \Codeception\Configuration::config();
        $apiSettings = \Codeception\Configuration::suiteSettings('acceptance', $config);

        $this->settings = $apiSettings;
    }

    public function _before(\Step\Acceptance\Login $I)
    {
        $I->deleteEmails();

    }

    public function _after(\Step\Acceptance\Login $I)
    {
        $I->logoutFrontEnd();

    }

    public function LoginFrontEnd(\Step\Acceptance\Login $I)
    {
        $I->LoginFrontEnd();

        $I->wait(2);
    }

    public function LoginAdminEnd(\Step\Acceptance\Login $I)
    {
        $I->loginAdminEnd();

        $I->wait(2);
    }
}
