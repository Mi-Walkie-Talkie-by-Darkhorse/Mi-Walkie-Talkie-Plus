package com.xiaomi.mistatistic.sdk.controller;

import com.xiaomi.mistatistic.sdk.data.HttpEvent;

public interface HttpEventFilter {
    HttpEvent onEvent(HttpEvent httpEvent);
}
