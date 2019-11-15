package com.bumptech.glide.load.b;

import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: FileLoader */
public class f<Data> implements n<File, Data> {
    private final d<Data> a;

    /* compiled from: FileLoader */
    public static class a<Data> implements o<File, Data> {
        private final d<Data> a;

        public a(d<Data> dVar) {
            this.a = dVar;
        }

        public final n<File, Data> a(r rVar) {
            return new f(this.a);
        }
    }

    /* compiled from: FileLoader */
    public static class b extends a<ParcelFileDescriptor> {
        public b() {
            super(new d<ParcelFileDescriptor>() {
                /* renamed from: a */
                public ParcelFileDescriptor b(File file) throws FileNotFoundException {
                    return ParcelFileDescriptor.open(file, 268435456);
                }

                public void a(ParcelFileDescriptor parcelFileDescriptor) throws IOException {
                    parcelFileDescriptor.close();
                }

                public Class<ParcelFileDescriptor> a() {
                    return ParcelFileDescriptor.class;
                }
            });
        }
    }

    /* compiled from: FileLoader */
    private static class c<Data> implements com.bumptech.glide.load.a.b<Data> {
        private final File a;
        private final d<Data> b;
        private Data c;

        public c(File file, d<Data> dVar) {
            this.a = file;
            this.b = dVar;
        }

        public void a(Priority priority, com.bumptech.glide.load.a.b.a<? super Data> aVar) {
            try {
                this.c = this.b.b(this.a);
                aVar.a(this.c);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e);
                }
                aVar.a((Exception) e);
            }
        }

        public void a() {
            if (this.c != null) {
                try {
                    this.b.a(this.c);
                } catch (IOException e) {
                }
            }
        }

        public void b() {
        }

        @NonNull
        public Class<Data> d() {
            return this.b.a();
        }

        @NonNull
        public DataSource c() {
            return DataSource.LOCAL;
        }
    }

    /* compiled from: FileLoader */
    public interface d<Data> {
        Class<Data> a();

        void a(Data data) throws IOException;

        Data b(File file) throws FileNotFoundException;
    }

    /* compiled from: FileLoader */
    public static class e extends a<InputStream> {
        public e() {
            super(new d<InputStream>() {
                /* renamed from: a */
                public InputStream b(File file) throws FileNotFoundException {
                    return new FileInputStream(file);
                }

                public void a(InputStream inputStream) throws IOException {
                    inputStream.close();
                }

                public Class<InputStream> a() {
                    return InputStream.class;
                }
            });
        }
    }

    public f(d<Data> dVar) {
        this.a = dVar;
    }

    public com.bumptech.glide.load.b.n.a<Data> a(File file, int i, int i2, com.bumptech.glide.load.e eVar) {
        return new com.bumptech.glide.load.b.n.a<>(new com.bumptech.glide.d.b(file), new c(file, this.a));
    }

    public boolean a(File file) {
        return true;
    }
}
