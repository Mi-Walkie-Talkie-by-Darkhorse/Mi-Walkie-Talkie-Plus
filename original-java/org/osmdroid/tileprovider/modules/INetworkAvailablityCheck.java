package org.osmdroid.tileprovider.modules;

public interface INetworkAvailablityCheck {
    boolean getCellularDataNetworkAvailable();

    boolean getNetworkAvailable();

    boolean getRouteToPathExists(int i);

    boolean getWiFiNetworkAvailable();
}
