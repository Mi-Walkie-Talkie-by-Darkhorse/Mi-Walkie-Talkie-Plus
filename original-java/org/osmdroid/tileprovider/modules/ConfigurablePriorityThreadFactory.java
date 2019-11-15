package org.osmdroid.tileprovider.modules;

import java.util.concurrent.ThreadFactory;

public class ConfigurablePriorityThreadFactory implements ThreadFactory {
    private final String mName;
    private final int mPriority;

    public ConfigurablePriorityThreadFactory(int i, String str) {
        this.mPriority = i;
        this.mName = str;
    }

    public Thread newThread(Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setPriority(this.mPriority);
        if (this.mName != null) {
            thread.setName(this.mName);
        }
        return thread;
    }
}
