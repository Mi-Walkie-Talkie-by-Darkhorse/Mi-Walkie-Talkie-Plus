package com.mi.milinkforgame.sdk.client;

public class MiLinkException extends Throwable {
    private static final long serialVersionUID = 112893821983L;

    public MiLinkException(int i, String str) {
        super(String.format("errCode:%d errMsg:%s", new Object[]{Integer.valueOf(i), str}));
    }
}
