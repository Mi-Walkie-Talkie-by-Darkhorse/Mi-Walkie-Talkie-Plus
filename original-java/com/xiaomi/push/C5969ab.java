package com.xiaomi.push;

import java.io.File;
import java.io.FileFilter;

/* renamed from: com.xiaomi.push.ab */
/* loaded from: classes2.dex */
class C5969ab implements FileFilter {
    @Override // java.io.FileFilter
    public boolean accept(File file) {
        return file.isDirectory();
    }
}
