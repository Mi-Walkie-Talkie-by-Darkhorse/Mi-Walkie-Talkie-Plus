package com.ifengyu.im.protobuf.base;

import com.ifengyu.im.imservice.support.SequenceNumberMaker;
import com.ifengyu.im.utils.Logger;

public class DefaultHeader extends Header {
    private Logger logger = Logger.getLogger(DefaultHeader.class);

    public DefaultHeader(int i, int i2) {
        setVersion(6);
        setFlag(0);
        setServiceId((short) i);
        setCommandId((short) i2);
        short make = SequenceNumberMaker.getInstance().make();
        setSeqnum(make);
        setReserved(48);
        this.logger.d("packet#construct Default Header -> serviceId:%d, commandId:%d, seqNo:%d", Integer.valueOf(i), Integer.valueOf(i2), Short.valueOf(make));
    }
}
