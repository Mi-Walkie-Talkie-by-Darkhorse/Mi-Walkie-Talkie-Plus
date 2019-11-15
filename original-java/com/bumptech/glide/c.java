package com.bumptech.glide;

import android.annotation.TargetApi;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.support.annotation.Nullable;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.b.a.a.C0013a;
import com.bumptech.glide.load.b.f;
import com.bumptech.glide.load.b.s;
import com.bumptech.glide.load.b.t;
import com.bumptech.glide.load.b.u;
import com.bumptech.glide.load.b.v;
import com.bumptech.glide.load.b.w;
import com.bumptech.glide.load.b.x;
import com.bumptech.glide.load.engine.a.b;
import com.bumptech.glide.load.engine.a.e;
import com.bumptech.glide.load.engine.d.a;
import com.bumptech.glide.load.engine.h;
import com.bumptech.glide.load.resource.a.a.C0018a;
import com.bumptech.glide.load.resource.bitmap.g;
import com.bumptech.glide.load.resource.bitmap.j;
import com.bumptech.glide.load.resource.bitmap.o;
import com.bumptech.glide.load.resource.bitmap.q;
import com.bumptech.glide.load.resource.d.i;
import com.bumptech.glide.manager.d;
import com.bumptech.glide.manager.k;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@TargetApi(14)
/* compiled from: Glide */
public class c implements ComponentCallbacks2 {
    private static volatile c a;
    private static volatile boolean b;
    private final h c;
    private final e d;
    private final com.bumptech.glide.load.engine.b.h e;
    private final a f;
    private final e g;
    private final Registry h;
    private final b i;
    private final k j;
    private final d k;
    private final List<g> l = new ArrayList();
    private MemoryCategory m = MemoryCategory.NORMAL;

    public static c a(Context context) {
        if (a == null) {
            synchronized (c.class) {
                if (a == null) {
                    c(context);
                }
            }
        }
        return a;
    }

    private static void c(Context context) {
        if (b) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        b = true;
        d(context);
        b = false;
    }

    private static void d(Context context) {
        List<com.bumptech.glide.b.c> list;
        Context applicationContext = context.getApplicationContext();
        a i2 = i();
        List emptyList = Collections.emptyList();
        if (i2 == null || i2.c()) {
            list = new com.bumptech.glide.b.e(applicationContext).a();
        } else {
            list = emptyList;
        }
        if (i2 != null && !i2.a().isEmpty()) {
            Set a2 = i2.a();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.bumptech.glide.b.c cVar = (com.bumptech.glide.b.c) it.next();
                if (a2.contains(cVar.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + cVar);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            for (com.bumptech.glide.b.c cVar2 : list) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + cVar2.getClass());
            }
        }
        d a3 = new d().a(i2 != null ? i2.b() : null);
        for (com.bumptech.glide.b.c a4 : list) {
            a4.a(applicationContext, a3);
        }
        if (i2 != null) {
            i2.a(applicationContext, a3);
        }
        c a5 = a3.a(applicationContext);
        for (com.bumptech.glide.b.c a6 : list) {
            a6.a(applicationContext, a5, a5.h);
        }
        if (i2 != null) {
            i2.a(applicationContext, a5, a5.h);
        }
        context.getApplicationContext().registerComponentCallbacks(a5);
        a = a5;
    }

    @Nullable
    private static a i() {
        try {
            return (a) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").newInstance();
        } catch (ClassNotFoundException e2) {
            if (Log.isLoggable("Glide", 5)) {
                Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
            }
            return null;
        } catch (InstantiationException e3) {
            throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
        } catch (IllegalAccessException e4) {
            throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e4);
        }
    }

    @TargetApi(14)
    c(Context context, h hVar, com.bumptech.glide.load.engine.b.h hVar2, e eVar, b bVar, k kVar, d dVar, int i2, com.bumptech.glide.request.d dVar2, Map<Class<?>, h<?, ?>> map) {
        this.c = hVar;
        this.d = eVar;
        this.i = bVar;
        this.e = hVar2;
        this.j = kVar;
        this.k = dVar;
        this.f = new a(hVar2, eVar, (DecodeFormat) dVar2.k().a(com.bumptech.glide.load.resource.bitmap.k.a));
        Resources resources = context.getResources();
        this.h = new Registry();
        this.h.a((ImageHeaderParser) new j());
        com.bumptech.glide.load.resource.bitmap.k kVar2 = new com.bumptech.glide.load.resource.bitmap.k(this.h.a(), resources.getDisplayMetrics(), eVar, bVar);
        com.bumptech.glide.load.resource.d.a aVar = new com.bumptech.glide.load.resource.d.a(context, this.h.a(), eVar, bVar);
        this.h.a(ByteBuffer.class, (com.bumptech.glide.load.a<Data>) new com.bumptech.glide.load.b.c<Data>()).a(InputStream.class, (com.bumptech.glide.load.a<Data>) new t<Data>(bVar)).a("Bitmap", ByteBuffer.class, Bitmap.class, new g(kVar2)).a("Bitmap", InputStream.class, Bitmap.class, new o(kVar2, bVar)).a("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new q(eVar)).a(Bitmap.class, (com.bumptech.glide.load.g<TResource>) new com.bumptech.glide.load.resource.bitmap.d<TResource>()).a("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, eVar, new g(kVar2))).a("BitmapDrawable", InputStream.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, eVar, new o(kVar2, bVar))).a("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new com.bumptech.glide.load.resource.bitmap.a(resources, eVar, new q(eVar))).a(BitmapDrawable.class, (com.bumptech.glide.load.g<TResource>) new com.bumptech.glide.load.resource.bitmap.b<TResource>(eVar, new com.bumptech.glide.load.resource.bitmap.d())).a("Gif", InputStream.class, com.bumptech.glide.load.resource.d.c.class, new i(this.h.a(), aVar, bVar)).a("Gif", ByteBuffer.class, com.bumptech.glide.load.resource.d.c.class, aVar).a(com.bumptech.glide.load.resource.d.c.class, (com.bumptech.glide.load.g<TResource>) new com.bumptech.glide.load.resource.d.d<TResource>()).a(GifDecoder.class, GifDecoder.class, (com.bumptech.glide.load.b.o<Model, Data>) new v.a<Model,Data>()).a("Bitmap", GifDecoder.class, Bitmap.class, new com.bumptech.glide.load.resource.d.h(eVar)).a((com.bumptech.glide.load.a.c.a) new C0018a()).a(File.class, ByteBuffer.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.d.b<Model,Data>()).a(File.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new f.e<Model,Data>()).a(File.class, File.class, (com.bumptech.glide.load.f<Data, TResource>) new com.bumptech.glide.load.resource.c.a<Data,TResource>()).a(File.class, ParcelFileDescriptor.class, (com.bumptech.glide.load.b.o<Model, Data>) new f.b<Model,Data>()).a(File.class, File.class, (com.bumptech.glide.load.b.o<Model, Data>) new v.a<Model,Data>()).a((com.bumptech.glide.load.a.c.a) new com.bumptech.glide.load.a.i.a(bVar)).a(Integer.TYPE, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new s.b<Model,Data>(resources)).a(Integer.TYPE, ParcelFileDescriptor.class, (com.bumptech.glide.load.b.o<Model, Data>) new s.a<Model,Data>(resources)).a(Integer.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new s.b<Model,Data>(resources)).a(Integer.class, ParcelFileDescriptor.class, (com.bumptech.glide.load.b.o<Model, Data>) new s.a<Model,Data>(resources)).a(String.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.e.c<Model,Data>()).a(String.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new u.b<Model,Data>()).a(String.class, ParcelFileDescriptor.class, (com.bumptech.glide.load.b.o<Model, Data>) new u.a<Model,Data>()).a(Uri.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.a.b.a<Model,Data>()).a(Uri.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.a.c<Model,Data>(context.getAssets())).a(Uri.class, ParcelFileDescriptor.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.a.b<Model,Data>(context.getAssets())).a(Uri.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.a.c.a<Model,Data>(context)).a(Uri.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.a.d.a<Model,Data>(context)).a(Uri.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.w.c<Model,Data>(context.getContentResolver())).a(Uri.class, ParcelFileDescriptor.class, (com.bumptech.glide.load.b.o<Model, Data>) new w.a<Model,Data>(context.getContentResolver())).a(Uri.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new x.a<Model,Data>()).a(URL.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.a.e.a<Model,Data>()).a(Uri.class, File.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.k.a<Model,Data>(context)).a(com.bumptech.glide.load.b.g.class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new C0013a<Model,Data>()).a(byte[].class, ByteBuffer.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.b.a<Model,Data>()).a(byte[].class, InputStream.class, (com.bumptech.glide.load.b.o<Model, Data>) new com.bumptech.glide.load.b.b.d<Model,Data>()).a(Bitmap.class, BitmapDrawable.class, (com.bumptech.glide.load.resource.e.d<TResource, Transcode>) new com.bumptech.glide.load.resource.e.b<TResource,Transcode>(resources, eVar)).a(Bitmap.class, byte[].class, (com.bumptech.glide.load.resource.e.d<TResource, Transcode>) new com.bumptech.glide.load.resource.e.a<TResource,Transcode>()).a(com.bumptech.glide.load.resource.d.c.class, byte[].class, (com.bumptech.glide.load.resource.e.d<TResource, Transcode>) new com.bumptech.glide.load.resource.e.c<TResource,Transcode>());
        Context context2 = context;
        this.g = new e(context2, this.h, new com.bumptech.glide.request.a.e(), dVar2, map, hVar, i2);
    }

    public e a() {
        return this.d;
    }

    public b b() {
        return this.i;
    }

    public Context c() {
        return this.g.getBaseContext();
    }

    /* access modifiers changed from: 0000 */
    public d d() {
        return this.k;
    }

    /* access modifiers changed from: 0000 */
    public e e() {
        return this.g;
    }

    public void f() {
        com.bumptech.glide.util.i.a();
        this.e.a();
        this.d.a();
        this.i.a();
    }

    public void a(int i2) {
        com.bumptech.glide.util.i.a();
        this.e.a(i2);
        this.d.a(i2);
        this.i.a(i2);
    }

    public k g() {
        return this.j;
    }

    private static k e(@Nullable Context context) {
        com.bumptech.glide.util.h.a(context, "You cannot start a load on a not yet attached View or a  Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return a(context).g();
    }

    public static g b(Context context) {
        return e(context).a(context);
    }

    public static g a(FragmentActivity fragmentActivity) {
        return e(fragmentActivity).a(fragmentActivity);
    }

    public static g a(View view) {
        return e(view.getContext()).a(view);
    }

    public Registry h() {
        return this.h;
    }

    /* access modifiers changed from: 0000 */
    public void a(com.bumptech.glide.request.a.h<?> hVar) {
        synchronized (this.l) {
            for (g b2 : this.l) {
                if (b2.b(hVar)) {
                    return;
                }
            }
            throw new IllegalStateException("Failed to remove target from managers");
        }
    }

    /* access modifiers changed from: 0000 */
    public void a(g gVar) {
        synchronized (this.l) {
            if (this.l.contains(gVar)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.l.add(gVar);
        }
    }

    /* access modifiers changed from: 0000 */
    public void b(g gVar) {
        synchronized (this.l) {
            if (!this.l.contains(gVar)) {
                throw new IllegalStateException("Cannot register not yet registered manager");
            }
            this.l.remove(gVar);
        }
    }

    public void onTrimMemory(int i2) {
        a(i2);
    }

    public void onConfigurationChanged(Configuration configuration) {
    }

    public void onLowMemory() {
        f();
    }
}
