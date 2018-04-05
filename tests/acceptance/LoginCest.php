<?php

use Page\LoginElements as LoginElements;

class LoginCest
{
    protected $settings;

    protected function _inject()
    {
        $config = \Codeception\Configuration::config();
        $acceptanceSettings = \Codeception\Configuration::suiteSettings('acceptance', $config);

        $this->settings = $acceptanceSettings;
    }

    public function _before(\Step\Acceptance\Login $I)
    {
        $I->deleteEmails();

    }

    public function _after(\Step\Acceptance\Login $I)
    {

    }

    public function LoginFrontEnd(\Step\Acceptance\Login $I, \Codeception\Scenario $scenario)
    {
        $I->LoginFrontEnd();

        $I->wait(2);

        $I->LogoutFrontEnd();
    }

    public function LoginAdminEnd(\Step\Acceptance\Login $I, \Codeception\Scenario $scenario)
    {
        $I->LoginAdminEnd();

        $I->wait(2);

        $I->LogoutAdminEnd();
    }

}
