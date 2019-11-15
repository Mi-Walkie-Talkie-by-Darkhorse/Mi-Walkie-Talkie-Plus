package com.ifengyu.im.utils.pinyin;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.xiaomi.mipush.sdk.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PinYin {

    public static class PinYinElement {
        public String pinyin;
        public String tokenFirstChars = "";
        public List<String> tokenPinyinList = new ArrayList();

        public String toString() {
            StringBuilder sb = new StringBuilder("PinYinElement [pinyin=" + this.pinyin + ", firstChars=" + this.tokenFirstChars + "]");
            StringBuilder sb2 = new StringBuilder("tokenPinyinList:");
            for (String append : this.tokenPinyinList) {
                sb2.append(append).append(Constants.ACCEPT_TIME_SEPARATOR_SP);
            }
            return sb.append(sb2).toString();
        }

        public void clear() {
            this.tokenFirstChars = "";
            this.tokenPinyinList.clear();
            this.pinyin = null;
        }
    }

    public static void getPinYin(String str, PinYinElement pinYinElement) {
        ArrayList arrayList = HanziToPinyin3.getInstance().get(str);
        StringBuilder sb = new StringBuilder();
        pinYinElement.clear();
        if (arrayList != null && arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Token token = (Token) it.next();
                if (2 == token.type) {
                    sb.append(token.target);
                    pinYinElement.tokenPinyinList.add(token.target);
                    pinYinElement.tokenFirstChars += token.target.substring(0, 1);
                } else {
                    sb.append(token.source);
                    for (int i = 0; i < token.source.length(); i++) {
                        String upperCase = token.source.substring(i, i + 1).toUpperCase();
                        pinYinElement.tokenPinyinList.add(upperCase);
                        pinYinElement.tokenFirstChars += upperCase;
                    }
                }
            }
        }
        String upperCase2 = sb.toString().toUpperCase();
        if (!upperCase2.isEmpty()) {
            char charAt = upperCase2.charAt(0);
            if (charAt < 'A' || charAt > 'Z') {
                upperCase2 = "#" + upperCase2;
            }
        }
        pinYinElement.pinyin = upperCase2;
    }
}
