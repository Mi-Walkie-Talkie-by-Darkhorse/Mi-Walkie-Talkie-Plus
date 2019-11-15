package com.ifengyu.im.utils;

import android.util.Log;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public class Logger {
    private static Logger inst;
    private static int logLevel = 2;
    private Lock lock = new ReentrantLock();
    private String tagName = "MoGuLogger";

    private Logger() {
    }

    public static synchronized Logger getLogger(Class<?> cls) {
        Logger logger;
        synchronized (Logger.class) {
            if (inst == null) {
                inst = new Logger();
            }
            logger = inst;
        }
        return logger;
    }

    private String getFunctionName() {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace == null) {
            return null;
        }
        for (StackTraceElement stackTraceElement : stackTrace) {
            if (!stackTraceElement.isNativeMethod() && !stackTraceElement.getClassName().equals(Thread.class.getName()) && !stackTraceElement.getClassName().equals(getClass().getName())) {
                return "[" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + "]";
            }
        }
        return null;
    }

    private String createMessage(String str) {
        String functionName = getFunctionName();
        long id = Thread.currentThread().getId();
        String format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss:SSS").format(new Date());
        if (functionName != null) {
            str = functionName + " - " + String.valueOf(id) + " - " + str;
        }
        return format + " - " + str;
    }

    public void i(String str, Object... objArr) {
        if (logLevel <= 4) {
            this.lock.lock();
            try {
                Log.i(this.tagName, createMessage(getInputString(str, objArr)));
            } finally {
                this.lock.unlock();
            }
        }
    }

    public void v(String str, Object... objArr) {
        if (logLevel <= 2) {
            this.lock.lock();
            try {
                Log.v(this.tagName, createMessage(getInputString(str, objArr)));
            } finally {
                this.lock.unlock();
            }
        }
    }

    public void d(String str, Object... objArr) {
        if (logLevel <= 3) {
            this.lock.lock();
            try {
                Log.d(this.tagName, createMessage(getInputString(str, objArr)));
            } finally {
                this.lock.unlock();
            }
        }
    }

    public void e(String str, Object... objArr) {
        if (logLevel <= 6) {
            this.lock.lock();
            try {
                Log.e(this.tagName, createMessage(getInputString(str, objArr)));
            } finally {
                this.lock.unlock();
            }
        }
    }

    private String getInputString(String str, Object... objArr) {
        if (str == null) {
            return "null log format";
        }
        return String.format(str, objArr);
    }

    public void error(Exception exc) {
        if (logLevel <= 6) {
            StringBuffer stringBuffer = new StringBuffer();
            this.lock.lock();
            try {
                String functionName = getFunctionName();
                StackTraceElement[] stackTrace = exc.getStackTrace();
                if (functionName != null) {
                    stringBuffer.append(functionName + " - " + exc + "\r\n");
                } else {
                    stringBuffer.append(exc + "\r\n");
                }
                if (stackTrace != null && stackTrace.length > 0) {
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        if (stackTraceElement != null) {
                            stringBuffer.append("[ " + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + " ]\r\n");
                        }
                    }
                }
                Log.e(this.tagName, stringBuffer.toString());
            } finally {
                this.lock.unlock();
            }
        }
    }

    public void w(String str, Object... objArr) {
        if (logLevel <= 5) {
            this.lock.lock();
            try {
                Log.w(this.tagName, createMessage(getInputString(str, objArr)));
            } finally {
                this.lock.unlock();
            }
        }
    }

    public void setLevel(int i) {
        this.lock.lock();
        try {
            logLevel = i;
        } finally {
            this.lock.unlock();
        }
    }
}
