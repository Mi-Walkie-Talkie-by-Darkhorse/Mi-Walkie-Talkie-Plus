package com.tencent.tauth;

/* compiled from: ProGuard */
public interface IUiListener {
    void onCancel();

    void onComplete(Object obj);

    void onError(UiError uiError);
}
