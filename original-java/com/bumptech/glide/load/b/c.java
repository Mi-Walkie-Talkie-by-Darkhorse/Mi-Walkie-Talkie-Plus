package com.bumptech.glide.load.b;

import android.util.Log;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.e;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* compiled from: ByteBufferEncoder */
public class c implements a<ByteBuffer> {
    public boolean a(ByteBuffer byteBuffer, File file, e eVar) {
        try {
            com.bumptech.glide.util.a.a(byteBuffer, file);
            return true;
        } catch (IOException e) {
            if (!Log.isLoggable("ByteBufferEncoder", 3)) {
                return false;
            }
            Log.d("ByteBufferEncoder", "Failed to write data", e);
            return false;
        }
    }
}
