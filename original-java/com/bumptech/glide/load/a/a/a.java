package com.bumptech.glide.load.a.a;

import java.io.File;

/* compiled from: FileService */
class a {
    a() {
    }

    public boolean a(File file) {
        return file.exists();
    }

    public long b(File file) {
        return file.length();
    }

    public File a(String str) {
        return new File(str);
    }
}
