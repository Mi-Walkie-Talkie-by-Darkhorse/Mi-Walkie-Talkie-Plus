package com.ifengyu.intercom.node.btle;

public class LockAcquireFailException extends GattException {
    private static final long serialVersionUID = 8871729134105363882L;

    public LockAcquireFailException(String str) {
        super(str);
    }
}
