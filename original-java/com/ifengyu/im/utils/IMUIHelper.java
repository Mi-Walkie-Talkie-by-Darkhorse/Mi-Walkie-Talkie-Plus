package com.ifengyu.im.utils;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.ifengyu.im.DB.entity.DepartmentEntity;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.R;
import com.ifengyu.im.imservice.entity.SearchElement;
import com.ifengyu.im.imservice.event.LoginEvent;
import com.ifengyu.im.imservice.event.SocketEvent;
import com.ifengyu.im.utils.pinyin.PinYin.PinYinElement;
import org.apache.http.HttpHost;
import org.bouncycastle.crypto.tls.CipherSuite;

public class IMUIHelper {

    public interface dialogCallback {
        void callback();
    }

    public static int getLoginErrorTip(LoginEvent loginEvent) {
        switch (loginEvent) {
            case LOGIN_AUTH_FAILED:
                return R.string.login_error_general_failed;
            case LOGIN_INNER_FAILED:
                return R.string.login_error_unexpected;
            default:
                return R.string.login_error_unexpected;
        }
    }

    public static int getSocketErrorTip(SocketEvent socketEvent) {
        switch (socketEvent) {
            case CONNECT_MSG_SERVER_FAILED:
                return R.string.connect_msg_server_failed;
            case REQ_MSG_SERVER_ADDRS_FAILED:
                return R.string.req_msg_server_addrs_failed;
            default:
                return R.string.login_error_unexpected;
        }
    }

    public static void callPhone(Context context, String str) {
        if (context != null && str != null && !str.isEmpty()) {
            context.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + str)));
        }
    }

    public static void setTextHilighted(TextView textView, String str, SearchElement searchElement) {
        textView.setText(str);
        if (textView != null && !TextUtils.isEmpty(str) && searchElement != null) {
            int i = searchElement.startIndex;
            int i2 = searchElement.endIndex;
            if (i >= 0 && i2 <= str.length()) {
                int rgb = Color.rgb(69, 192, 26);
                textView.setText(str, BufferType.SPANNABLE);
                ((Spannable) textView.getText()).setSpan(new ForegroundColorSpan(rgb), i, i2, 33);
            }
        }
    }

    public static String getRealAvatarUrl(String str) {
        if (str.toLowerCase().contains(HttpHost.DEFAULT_SCHEME_NAME)) {
            return str;
        }
        if (str.trim().isEmpty()) {
            return "";
        }
        return "" + str;
    }

    public static boolean handleDepartmentSearch(String str, DepartmentEntity departmentEntity) {
        if (TextUtils.isEmpty(str) || departmentEntity == null) {
            return false;
        }
        departmentEntity.getSearchElement().reset();
        if (handleTokenFirstCharsSearch(str, departmentEntity.getPinyinElement(), departmentEntity.getSearchElement()) || handleTokenPinyinFullSearch(str, departmentEntity.getPinyinElement(), departmentEntity.getSearchElement()) || handleNameSearch(departmentEntity.getDepartName(), str, departmentEntity.getSearchElement())) {
            return true;
        }
        return false;
    }

    public static boolean handleGroupSearch(String str, GroupEntity groupEntity) {
        if (TextUtils.isEmpty(str) || groupEntity == null) {
            return false;
        }
        groupEntity.getSearchElement().reset();
        if (handleTokenFirstCharsSearch(str, groupEntity.getPinyinElement(), groupEntity.getSearchElement()) || handleTokenPinyinFullSearch(str, groupEntity.getPinyinElement(), groupEntity.getSearchElement()) || handleNameSearch(groupEntity.getMainName(), str, groupEntity.getSearchElement())) {
            return true;
        }
        return false;
    }

    public static boolean handleContactSearch(String str, UserEntity userEntity) {
        if (TextUtils.isEmpty(str) || userEntity == null) {
            return false;
        }
        userEntity.getSearchElement().reset();
        if (handleTokenFirstCharsSearch(str, userEntity.getPinyinElement(), userEntity.getSearchElement()) || handleTokenPinyinFullSearch(str, userEntity.getPinyinElement(), userEntity.getSearchElement()) || handleNameSearch(userEntity.getMainName(), str, userEntity.getSearchElement())) {
            return true;
        }
        return false;
    }

    public static boolean handleNameSearch(String str, String str2, SearchElement searchElement) {
        int indexOf = str.indexOf(str2);
        if (indexOf == -1) {
            return false;
        }
        searchElement.startIndex = indexOf;
        searchElement.endIndex = indexOf + str2.length();
        return true;
    }

    public static boolean handleTokenFirstCharsSearch(String str, PinYinElement pinYinElement, SearchElement searchElement) {
        return handleNameSearch(pinYinElement.tokenFirstChars, str.toUpperCase(), searchElement);
    }

    public static boolean handleTokenPinyinFullSearch(String str, PinYinElement pinYinElement, SearchElement searchElement) {
        int i;
        int i2;
        String str2;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        String upperCase = str.toUpperCase();
        searchElement.reset();
        int size = pinYinElement.tokenPinyinList.size();
        int i3 = 0;
        int i4 = -1;
        int i5 = -1;
        while (true) {
            if (i3 >= size) {
                i = i4;
                i2 = i5;
                break;
            }
            String str3 = (String) pinYinElement.tokenPinyinList.get(i3);
            int length = str3.length();
            int length2 = upperCase.length();
            int min = Math.min(length2, length);
            if (str3.startsWith(upperCase.substring(0, min))) {
                if (i5 == -1) {
                    i2 = i3;
                } else {
                    i2 = i5;
                }
                i = i3 + 1;
                if (length2 <= length) {
                    upperCase = "";
                    break;
                }
                str2 = upperCase.substring(min, length2);
            } else {
                i = i4;
                i2 = i5;
                str2 = upperCase;
            }
            i3++;
            upperCase = str2;
            i5 = i2;
            i4 = i;
        }
        if (!upperCase.isEmpty()) {
            return false;
        }
        if (i2 < 0 || i <= 0) {
            return false;
        }
        searchElement.startIndex = i2;
        searchElement.endIndex = i;
        return true;
    }

    public static void setViewTouchHightlighted(final View view) {
        if (view != null) {
            view.setOnTouchListener(new OnTouchListener() {
                public boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 0) {
                        view.setBackgroundColor(Color.rgb(1, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA384, 244));
                    } else if (motionEvent.getAction() == 1) {
                        view.setBackgroundColor(Color.rgb(255, 255, 255));
                    }
                    return false;
                }
            });
        }
    }
}
