package com.mi.milinkforgame.sdk.base.data;

import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.IOException;
import java.io.Writer;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class SafeStringQueue implements Iterable<String> {
    private static final String TAG = SafeStringQueue.class.getSimpleName();
    private ConcurrentLinkedQueue<String> bufferQueue;
    private AtomicInteger bufferSize;

    public SafeStringQueue() {
        this.bufferQueue = null;
        this.bufferSize = null;
        this.bufferQueue = new ConcurrentLinkedQueue<>();
        this.bufferSize = new AtomicInteger(0);
    }

    public int addToBuffer(String str) {
        int length = str.length();
        this.bufferQueue.add(str);
        return this.bufferSize.addAndGet(length);
    }

    public void writeAndFlush(Writer writer, char[] cArr) throws IOException {
        if (writer != null && cArr != null && cArr.length != 0) {
            int length = cArr.length;
            try {
                Iterator it = iterator();
                int i = 0;
                int i2 = length;
                while (it.hasNext()) {
                    String str = (String) it.next();
                    int length2 = str.length();
                    int i3 = i;
                    int i4 = 0;
                    while (length2 > 0) {
                        int i5 = i2 > length2 ? length2 : i2;
                        str.getChars(i4, i4 + i5, cArr, i3);
                        int i6 = i2 - i5;
                        int i7 = i3 + i5;
                        length2 -= i5;
                        int i8 = i5 + i4;
                        if (i6 == 0) {
                            writer.write(cArr, 0, length);
                            i3 = 0;
                            i2 = length;
                            i4 = i8;
                        } else {
                            i3 = i7;
                            i4 = i8;
                            i2 = i6;
                        }
                    }
                    i = i3;
                }
                if (i > 0) {
                    writer.write(cArr, 0, i);
                }
                writer.flush();
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    }

    public int getBufferSize() {
        return this.bufferSize.get();
    }

    public void clear() {
        this.bufferQueue.clear();
        this.bufferSize.set(0);
    }

    public Iterator<String> iterator() {
        return this.bufferQueue.iterator();
    }
}
