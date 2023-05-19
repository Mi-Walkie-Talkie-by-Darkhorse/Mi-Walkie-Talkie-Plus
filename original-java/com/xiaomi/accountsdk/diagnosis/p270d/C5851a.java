package com.xiaomi.accountsdk.diagnosis.p270d;

import android.text.TextUtils;
import android.util.Base64;
import com.xiaomi.infra.galaxy.fds.android.FDSClientConfiguration;
import com.xiaomi.infra.galaxy.fds.android.GalaxyFDSClientImpl;
import com.xiaomi.infra.galaxy.fds.android.auth.SignatureCredential;
import com.xiaomi.infra.galaxy.fds.android.exception.GalaxyFDSClientException;
import com.xiaomi.infra.galaxy.fds.android.model.PutObjectResult;
import java.io.File;

/* renamed from: com.xiaomi.accountsdk.diagnosis.d.a */
/* loaded from: classes2.dex */
public class C5851a {
    /* renamed from: a */
    public static PutObjectResult m4210a(File file, String str) {
        FDSClientConfiguration fDSClientConfiguration = new FDSClientConfiguration();
        if (TextUtils.isEmpty(str)) {
            str = m4209a("G25iajFoZiJzLmFAWR5IWVFfXVkeU19d");
        }
        fDSClientConfiguration.setEndpoint(str);
        fDSClientConfiguration.enableHttps(true);
        fDSClientConfiguration.enableCdnForUpload(false);
        fDSClientConfiguration.setUploadPartSize(5242880);
        fDSClientConfiguration.setCredential(new SignatureCredential(m4209a("OUtaT1NwVAs2RlAEeAcEdQV4"), m4209a("PUtCcHIzdy5ZcDZaamQbUmR+d0QIWGZ0ZwVbeWABfHt8SF9oekJXBA==")));
        try {
            return new GalaxyFDSClientImpl(fDSClientConfiguration).putObject(m4209a("HGlhZ24pcy9z"), file.getName(), file);
        } catch (GalaxyFDSClientException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: a */
    private static String m4209a(String str) {
        return new String(m4208a(Base64.decode(str, 2)));
    }

    /* renamed from: a */
    private static byte[] m4208a(byte[] bArr) {
        byte[] bArr2 = new byte[256];
        for (int i = 0; i < "0xCAFEBABE".getBytes().length; i++) {
            bArr2[i] = "0xCAFEBABE".getBytes()[i % "0xCAFEBABE".getBytes().length];
        }
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            i2 = (i2 + 1) & 255;
            i3 = (i3 + bArr2[i2]) & 255;
            byte b = bArr2[i2];
            bArr2[i2] = bArr2[i3];
            bArr2[i3] = b;
            bArr3[i4] = (byte) (bArr2[(bArr2[i3] + bArr2[i2]) & 255] ^ bArr[i4]);
        }
        return bArr3;
    }
}
