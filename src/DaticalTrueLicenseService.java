package liquibase.license.pro;

import liquibase.license.LicenseInstallResult;
import liquibase.license.LicenseService;
import liquibase.license.Location;

public class DaticalTrueLicenseService implements LicenseService {

    @Override
    public int getPriority() {
        return Integer.MAX_VALUE;
    }

    @Override
    public boolean licenseIsInstalled() {
        return true;
    }

    @Override
    public boolean licenseIsValid(String subject) {
        return true;
    }

    @Override
    public String getLicenseInfo() {
        return "Puls Liquibase Commercial";
    }

    @Override
    public LicenseInstallResult installLicense(Location... locations) {
        return new LicenseInstallResult(0);
    }

    @Override
    public void disable() {
    }

    @Override
    public boolean licenseIsAboutToExpire() {
        return false;
    }

    @Override
    public int daysTilExpiration() {
        return Integer.MAX_VALUE;
    }
}
