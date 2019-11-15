package com.liulishuo.filedownloader.b;

import android.util.SparseArray;
import com.liulishuo.filedownloader.b.a.C0043a;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: NoDatabaseImpl */
public class b implements a {
    final SparseArray<FileDownloadModel> a = new SparseArray<>();
    final SparseArray<List<com.liulishuo.filedownloader.model.a>> b = new SparseArray<>();

    /* compiled from: NoDatabaseImpl */
    class a implements C0043a {
        a() {
        }

        public Iterator<FileDownloadModel> iterator() {
            return new C0044b();
        }

        public void a() {
        }

        public void a(FileDownloadModel fileDownloadModel) {
        }

        public void b(FileDownloadModel fileDownloadModel) {
        }

        public void a(int i, FileDownloadModel fileDownloadModel) {
        }
    }

    /* renamed from: com.liulishuo.filedownloader.b.b$b reason: collision with other inner class name */
    /* compiled from: NoDatabaseImpl */
    class C0044b implements Iterator<FileDownloadModel> {
        C0044b() {
        }

        public boolean hasNext() {
            return false;
        }

        /* renamed from: a */
        public FileDownloadModel next() {
            return null;
        }

        public void remove() {
        }
    }

    public void a(int i) {
    }

    public FileDownloadModel b(int i) {
        return (FileDownloadModel) this.a.get(i);
    }

    public List<com.liulishuo.filedownloader.model.a> c(int i) {
        ArrayList arrayList = new ArrayList();
        List list = (List) this.b.get(i);
        if (list != null) {
            arrayList.addAll(list);
        }
        return arrayList;
    }

    public void d(int i) {
        this.b.remove(i);
    }

    public void a(com.liulishuo.filedownloader.model.a aVar) {
        int a2 = aVar.a();
        List list = (List) this.b.get(a2);
        if (list == null) {
            list = new ArrayList();
            this.b.put(a2, list);
        }
        list.add(aVar);
    }

    public void a(int i, int i2, long j) {
        List<com.liulishuo.filedownloader.model.a> list = (List) this.b.get(i);
        if (list != null) {
            for (com.liulishuo.filedownloader.model.a aVar : list) {
                if (aVar.b() == i2) {
                    aVar.b(j);
                    return;
                }
            }
        }
    }

    public void a(int i, int i2) {
    }

    public void b(FileDownloadModel fileDownloadModel) {
        this.a.put(fileDownloadModel.a(), fileDownloadModel);
    }

    public void a(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            d.d(this, "update but model == null!", new Object[0]);
        } else if (b(fileDownloadModel.a()) != null) {
            this.a.remove(fileDownloadModel.a());
            this.a.put(fileDownloadModel.a(), fileDownloadModel);
        } else {
            b(fileDownloadModel);
        }
    }

    public boolean e(int i) {
        this.a.remove(i);
        return true;
    }

    public void a() {
        this.a.clear();
    }

    public void a(int i, String str, long j, long j2, int i2) {
    }

    public void a(int i, long j, String str, String str2) {
    }

    public void a(int i, long j) {
    }

    public void a(int i, Throwable th, long j) {
    }

    public void a(int i, Throwable th) {
    }

    public void b(int i, long j) {
        e(i);
    }

    public void c(int i, long j) {
    }

    public void f(int i) {
    }

    public C0043a b() {
        return new a();
    }
}
