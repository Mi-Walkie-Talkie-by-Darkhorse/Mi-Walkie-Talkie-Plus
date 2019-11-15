package com.amap.api.col.sl;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/* compiled from: StatisticsPubDataStrategy */
public final class ej extends ek {
    public ej() {
    }

    public ej(ek ekVar) {
        super(ekVar);
    }

    /* access modifiers changed from: protected */
    public final byte[] a(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(new SimpleDateFormat("yyyyMMdd HHmmss").format(new Date()));
        stringBuffer.append(Token.SEPARATOR);
        stringBuffer.append(UUID.randomUUID().toString());
        stringBuffer.append(Token.SEPARATOR);
        if (stringBuffer.length() != 53) {
            return new byte[0];
        }
        byte[] a = ca.a(stringBuffer.toString());
        byte[] bArr2 = new byte[(a.length + bArr.length)];
        System.arraycopy(a, 0, bArr2, 0, a.length);
        System.arraycopy(bArr, 0, bArr2, a.length, bArr.length);
        return bArr2;
    }
}
