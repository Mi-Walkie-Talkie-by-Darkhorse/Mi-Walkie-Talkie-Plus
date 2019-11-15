package com.ksyun.ks3.services;

import android.content.Context;
import com.ksyun.ks3.model.acl.b;
import com.ksyun.ks3.services.a.a;
import com.ksyun.ks3.services.a.d;
import com.ksyun.ks3.services.a.f;
import com.ksyun.ks3.services.request.CompleteMultipartUploadRequest;
import com.ksyun.ks3.services.request.InitiateMultipartUploadRequest;
import com.ksyun.ks3.services.request.Ks3HttpRequest;
import com.ksyun.ks3.services.request.ListPartsRequest;
import com.ksyun.ks3.services.request.PutObjectRequest;
import com.ksyun.ks3.services.request.UploadPartRequest;

/* compiled from: Ks3Client */
public class e {
    public b a;
    public b b;
    private f c;
    private String d;
    private g e;
    private Context f;

    public e(b bVar, Context context) {
        this(bVar, f.b(), context);
    }

    public e(b bVar, f fVar, Context context) {
        this.e = new g();
        this.f = null;
        this.b = null;
        this.b = bVar;
        this.c = fVar;
        this.f = context;
    }

    public void a(String str) {
        this.d = str;
    }

    public Ks3HttpRequest a(PutObjectRequest putObjectRequest, com.ksyun.ks3.services.a.e eVar) {
        return a(putObjectRequest, eVar, true);
    }

    private Ks3HttpRequest a(PutObjectRequest putObjectRequest, com.ksyun.ks3.services.a.e eVar, boolean z) {
        return a(this.a, putObjectRequest, eVar, z);
    }

    public void a(InitiateMultipartUploadRequest initiateMultipartUploadRequest, com.ksyun.ks3.services.a.b bVar) {
        a(initiateMultipartUploadRequest, bVar, true);
    }

    private void a(InitiateMultipartUploadRequest initiateMultipartUploadRequest, com.ksyun.ks3.services.a.b bVar, boolean z) {
        a(this.a, initiateMultipartUploadRequest, bVar, z);
    }

    public void a(UploadPartRequest uploadPartRequest, f fVar) {
        a(uploadPartRequest, fVar, true);
    }

    private void a(UploadPartRequest uploadPartRequest, f fVar, boolean z) {
        a(this.a, uploadPartRequest, fVar, z);
    }

    public void a(CompleteMultipartUploadRequest completeMultipartUploadRequest, a aVar) {
        a(completeMultipartUploadRequest, aVar, true);
    }

    private void a(CompleteMultipartUploadRequest completeMultipartUploadRequest, a aVar, boolean z) {
        a(this.a, completeMultipartUploadRequest, aVar, z);
    }

    public void a(ListPartsRequest listPartsRequest, d dVar) {
        a(listPartsRequest, dVar, true);
    }

    private void a(ListPartsRequest listPartsRequest, d dVar, boolean z) {
        a(this.a, listPartsRequest, dVar, z);
    }

    private Ks3HttpRequest a(b bVar, Ks3HttpRequest ks3HttpRequest, com.loopj.android.http.d dVar, boolean z) {
        this.e.a(bVar, ks3HttpRequest, dVar, this.c, this.f, this.d, this.b, Boolean.valueOf(z));
        return ks3HttpRequest;
    }
}
