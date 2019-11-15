package org.osmdroid.config;

public class Configuration {
    private static IConfigurationProvider ref;

    public static synchronized IConfigurationProvider getInstance() {
        IConfigurationProvider iConfigurationProvider;
        synchronized (Configuration.class) {
            if (ref == null) {
                ref = new DefaultConfigurationProvider();
            }
            iConfigurationProvider = ref;
        }
        return iConfigurationProvider;
    }

    public static void setConfigurationProvider(IConfigurationProvider iConfigurationProvider) {
        ref = iConfigurationProvider;
    }
}
