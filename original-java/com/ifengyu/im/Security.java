package com.ifengyu.im;

public class Security {
    private static Security m_pInstance;

    public native byte[] DecryptMsg(String str);

    public native byte[] EncryptMsg(String str);

    public native byte[] EncryptPass(String str);

    static {
        System.loadLibrary("security");
    }

    public static Security getInstance() {
        Security security;
        synchronized (Security.class) {
            if (m_pInstance == null) {
                m_pInstance = new Security();
            }
            security = m_pInstance;
        }
        return security;
    }
}
