package org.bouncycastle.asn1.eac;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.util.Enumeration;
import java.util.Hashtable;

public class Flags {
    int value = 0;

    private class StringJoiner {
        boolean First = true;
        StringBuffer b = new StringBuffer();
        String mSeparator;

        public StringJoiner(String str) {
            this.mSeparator = str;
        }

        public void add(String str) {
            if (this.First) {
                this.First = false;
            } else {
                this.b.append(this.mSeparator);
            }
            this.b.append(str);
        }

        public String toString() {
            return this.b.toString();
        }
    }

    public Flags() {
    }

    public Flags(int i) {
        this.value = i;
    }

    /* access modifiers changed from: 0000 */
    public String decode(Hashtable hashtable) {
        StringJoiner stringJoiner = new StringJoiner(Token.SEPARATOR);
        Enumeration keys = hashtable.keys();
        while (keys.hasMoreElements()) {
            Integer num = (Integer) keys.nextElement();
            if (isSet(num.intValue())) {
                stringJoiner.add((String) hashtable.get(num));
            }
        }
        return stringJoiner.toString();
    }

    public int getFlags() {
        return this.value;
    }

    public boolean isSet(int i) {
        return (this.value & i) != 0;
    }

    public void set(int i) {
        this.value |= i;
    }
}
