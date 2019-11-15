package com.ifengyu.im.imservice.manager;

import android.app.Activity;
import java.util.Stack;

public class IMStackManager {
    private static Stack<Activity> mActivityStack;
    private static IMStackManager mInstance;

    public static IMStackManager getStackManager() {
        if (mInstance == null) {
            mInstance = new IMStackManager();
        }
        return mInstance;
    }

    public void popActivity(Activity activity) {
        if (activity != null) {
            activity.finish();
            mActivityStack.remove(activity);
        }
    }

    public Activity currentActivity() {
        if (mActivityStack == null || mActivityStack.size() == 0) {
            return null;
        }
        return (Activity) mActivityStack.lastElement();
    }

    public void pushActivity(Activity activity) {
        if (mActivityStack == null) {
            mActivityStack = new Stack<>();
        }
        mActivityStack.add(activity);
    }

    public void popTopActivitys(Class cls) {
        while (true) {
            Activity currentActivity = currentActivity();
            if (currentActivity != null && !currentActivity.getClass().equals(cls)) {
                popActivity(currentActivity);
            } else {
                return;
            }
        }
    }

    public void popAllActivitys() {
        while (true) {
            Activity currentActivity = currentActivity();
            if (currentActivity != null) {
                popActivity(currentActivity);
            } else {
                return;
            }
        }
    }
}
