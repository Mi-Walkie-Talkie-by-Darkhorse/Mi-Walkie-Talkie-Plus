package org.jboss.netty.util.internal.jzlib;

import android.support.v4.app.FragmentTransaction;
import com.ifengyu.im.protobuf.IMBaseDefine.MessageCmdID;
import com.ifengyu.im.protobuf.IMBaseDefine.SwitchServiceCmdID;
import com.mi.milinkforgame.sdk.data.Error;
import org.apache.http.HttpStatus;
import org.bouncycastle.crypto.tls.CipherSuite;
import org.bouncycastle.math.Primes;

final class InfTree {
    static final int BMAX = 15;
    static final int[] cpdext = {0, 0, 0, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 12, 12, 13, 13};
    static final int[] cpdist = {1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, 257, 385, 513, MessageCmdID.CID_MSG_DATA_VALUE, 1025, SwitchServiceCmdID.CID_SWITCH_P2P_CMD_VALUE, 2049, 3073, FragmentTransaction.TRANSIT_FRAGMENT_OPEN, 6145, 8193, 12289, 16385, 24577};
    static final int[] cplens = {3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59, 67, 83, 99, 115, 131, 163, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256, 227, 258, 0, 0};
    static final int[] cplext = {0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 0, 112, 112};
    static final int fixed_bd = 5;
    static final int fixed_bl = 9;
    static final int[] fixed_td = {80, 5, 1, 87, 5, 257, 83, 5, 17, 91, 5, FragmentTransaction.TRANSIT_FRAGMENT_OPEN, 81, 5, 5, 89, 5, 1025, 85, 5, 65, 93, 5, 16385, 80, 5, 3, 88, 5, 513, 84, 5, 33, 92, 5, 8193, 82, 5, 9, 90, 5, 2049, 86, 5, 129, 192, 5, 24577, 80, 5, 2, 87, 5, 385, 83, 5, 25, 91, 5, 6145, 81, 5, 7, 89, 5, SwitchServiceCmdID.CID_SWITCH_P2P_CMD_VALUE, 85, 5, 97, 93, 5, 24577, 80, 5, 4, 88, 5, MessageCmdID.CID_MSG_DATA_VALUE, 84, 5, 49, 92, 5, 12289, 82, 5, 13, 90, 5, 3073, 86, 5, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, 192, 5, 24577};
    static final int[] fixed_tl = {96, 7, 256, 0, 8, 80, 0, 8, 16, 84, 8, 115, 82, 7, 31, 0, 8, 112, 0, 8, 48, 0, 9, 192, 80, 7, 10, 0, 8, 96, 0, 8, 32, 0, 9, 160, 0, 8, 0, 0, 8, 128, 0, 8, 64, 0, 9, 224, 80, 7, 6, 0, 8, 88, 0, 8, 24, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA, 83, 7, 59, 0, 8, 120, 0, 8, 56, 0, 9, 208, 81, 7, 17, 0, 8, 104, 0, 8, 40, 0, 9, CipherSuite.TLS_PSK_WITH_NULL_SHA256, 0, 8, 8, 0, 8, 136, 0, 8, 72, 0, 9, 240, 80, 7, 4, 0, 8, 84, 0, 8, 20, 85, 8, 227, 83, 7, 43, 0, 8, Error.E_REG_WRONG_TOKEN, 0, 8, 52, 0, 9, 200, 81, 7, 13, 0, 8, 100, 0, 8, 36, 0, 9, CipherSuite.TLS_PSK_WITH_AES_128_GCM_SHA256, 0, 8, 4, 0, 8, 132, 0, 8, 68, 0, 9, 232, 80, 7, 8, 0, 8, 92, 0, 8, 28, 0, 9, CipherSuite.TLS_DH_RSA_WITH_SEED_CBC_SHA, 84, 7, 83, 0, 8, 124, 0, 8, 60, 0, 9, 216, 82, 7, 23, 0, 8, 108, 0, 8, 44, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA256, 0, 8, 12, 0, 8, 140, 0, 8, 76, 0, 9, 248, 80, 7, 3, 0, 8, 82, 0, 8, 18, 85, 8, 163, 83, 7, 35, 0, 8, 114, 0, 8, 50, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA256, 81, 7, 11, 0, 8, 98, 0, 8, 34, 0, 9, CipherSuite.TLS_DH_DSS_WITH_AES_128_GCM_SHA256, 0, 8, 2, 0, 8, 130, 0, 8, 66, 0, 9, 228, 80, 7, 7, 0, 8, 90, 0, 8, 26, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA, 84, 7, 67, 0, 8, 122, 0, 8, 58, 0, 9, 212, 82, 7, 19, 0, 8, 106, 0, 8, 42, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA256, 0, 8, 10, 0, 8, 138, 0, 8, 74, 0, 9, 244, 80, 7, 5, 0, 8, 86, 0, 8, 22, 192, 8, 0, 83, 7, 51, 0, 8, 118, 0, 8, 54, 0, 9, HttpStatus.SC_NO_CONTENT, 81, 7, 15, 0, 8, 102, 0, 8, 38, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_128_GCM_SHA256, 0, 8, 6, 0, 8, 134, 0, 8, 70, 0, 9, 236, 80, 7, 9, 0, 8, 94, 0, 8, 30, 0, 9, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, 84, 7, 99, 0, 8, 126, 0, 8, 62, 0, 9, 220, 82, 7, 27, 0, 8, 110, 0, 8, 46, 0, 9, 188, 0, 8, 14, 0, 8, CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 0, 8, 78, 0, 9, 252, 96, 7, 256, 0, 8, 81, 0, 8, 17, 85, 8, 131, 82, 7, 31, 0, 8, 113, 0, 8, 49, 0, 9, CipherSuite.TLS_DH_RSA_WITH_CAMELLIA_256_CBC_SHA256, 80, 7, 10, 0, 8, 97, 0, 8, 33, 0, 9, 162, 0, 8, 1, 0, 8, 129, 0, 8, 65, 0, 9, 226, 80, 7, 6, 0, 8, 89, 0, 8, 25, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_RC4_128_SHA, 83, 7, 59, 0, 8, 121, 0, 8, 57, 0, 9, 210, 81, 7, 17, 0, 8, 105, 0, 8, 41, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_128_CBC_SHA256, 0, 8, 9, 0, 8, 137, 0, 8, 73, 0, 9, 242, 80, 7, 4, 0, 8, 85, 0, 8, 21, 80, 8, 258, 83, 7, 43, 0, 8, Error.E_REG_SESSION_GET_FAILED, 0, 8, 53, 0, 9, HttpStatus.SC_ACCEPTED, 81, 7, 13, 0, 8, 101, 0, 8, 37, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_128_GCM_SHA256, 0, 8, 5, 0, 8, 133, 0, 8, 69, 0, 9, 234, 80, 7, 8, 0, 8, 93, 0, 8, 29, 0, 9, 154, 84, 7, 83, 0, 8, 125, 0, 8, 61, 0, 9, 218, 82, 7, 23, 0, 8, 109, 0, 8, 45, 0, 9, CipherSuite.TLS_RSA_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 13, 0, 8, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA, 0, 8, 77, 0, 9, 250, 80, 7, 3, 0, 8, 83, 0, 8, 19, 85, 8, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256, 83, 7, 35, 0, 8, 115, 0, 8, 51, 0, 9, 198, 81, 7, 11, 0, 8, 99, 0, 8, 35, 0, 9, CipherSuite.TLS_DH_anon_WITH_AES_128_GCM_SHA256, 0, 8, 3, 0, 8, 131, 0, 8, 67, 0, 9, 230, 80, 7, 7, 0, 8, 91, 0, 8, 27, 0, 9, CipherSuite.TLS_RSA_WITH_SEED_CBC_SHA, 84, 7, 67, 0, 8, 123, 0, 8, 59, 0, 9, 214, 82, 7, 19, 0, 8, 107, 0, 8, 43, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_128_CBC_SHA256, 0, 8, 11, 0, 8, 139, 0, 8, 75, 0, 9, 246, 80, 7, 5, 0, 8, 87, 0, 8, 23, 192, 8, 0, 83, 7, 51, 0, 8, 119, 0, 8, 55, 0, 9, HttpStatus.SC_PARTIAL_CONTENT, 81, 7, 15, 0, 8, 103, 0, 8, 39, 0, 9, CipherSuite.TLS_PSK_WITH_AES_128_CBC_SHA256, 0, 8, 7, 0, 8, 135, 0, 8, 71, 0, 9, 238, 80, 7, 9, 0, 8, 95, 0, 8, 31, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_AES_128_GCM_SHA256, 84, 7, 99, 0, 8, 127, 0, 8, 63, 0, 9, 222, 82, 7, 27, 0, 8, 111, 0, 8, 47, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 15, 0, 8, CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, 0, 8, 79, 0, 9, 254, 96, 7, 256, 0, 8, 80, 0, 8, 16, 84, 8, 115, 82, 7, 31, 0, 8, 112, 0, 8, 48, 0, 9, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_256_CBC_SHA256, 80, 7, 10, 0, 8, 96, 0, 8, 32, 0, 9, 161, 0, 8, 0, 0, 8, 128, 0, 8, 64, 0, 9, 225, 80, 7, 6, 0, 8, 88, 0, 8, 24, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA, 83, 7, 59, 0, 8, 120, 0, 8, 56, 0, 9, 209, 81, 7, 17, 0, 8, 104, 0, 8, 40, 0, 9, CipherSuite.TLS_PSK_WITH_NULL_SHA384, 0, 8, 8, 0, 8, 136, 0, 8, 72, 0, 9, 241, 80, 7, 4, 0, 8, 84, 0, 8, 20, 85, 8, 227, 83, 7, 43, 0, 8, Error.E_REG_WRONG_TOKEN, 0, 8, 52, 0, 9, HttpStatus.SC_CREATED, 81, 7, 13, 0, 8, 100, 0, 8, 36, 0, 9, CipherSuite.TLS_PSK_WITH_AES_256_GCM_SHA384, 0, 8, 4, 0, 8, 132, 0, 8, 68, 0, 9, 233, 80, 7, 8, 0, 8, 92, 0, 8, 28, 0, 9, CipherSuite.TLS_DHE_DSS_WITH_SEED_CBC_SHA, 84, 7, 83, 0, 8, 124, 0, 8, 60, 0, 9, 217, 82, 7, 23, 0, 8, 108, 0, 8, 44, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_NULL_SHA384, 0, 8, 12, 0, 8, 140, 0, 8, 76, 0, 9, 249, 80, 7, 3, 0, 8, 82, 0, 8, 18, 85, 8, 163, 83, 7, 35, 0, 8, 114, 0, 8, 50, 0, 9, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_256_CBC_SHA256, 81, 7, 11, 0, 8, 98, 0, 8, 34, 0, 9, CipherSuite.TLS_DH_DSS_WITH_AES_256_GCM_SHA384, 0, 8, 2, 0, 8, 130, 0, 8, 66, 0, 9, 229, 80, 7, 7, 0, 8, 90, 0, 8, 26, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA, 84, 7, 67, 0, 8, 122, 0, 8, 58, 0, 9, 213, 82, 7, 19, 0, 8, 106, 0, 8, 42, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_NULL_SHA384, 0, 8, 10, 0, 8, 138, 0, 8, 74, 0, 9, 245, 80, 7, 5, 0, 8, 86, 0, 8, 22, 192, 8, 0, 83, 7, 51, 0, 8, 118, 0, 8, 54, 0, 9, HttpStatus.SC_RESET_CONTENT, 81, 7, 15, 0, 8, 102, 0, 8, 38, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_256_GCM_SHA384, 0, 8, 6, 0, 8, 134, 0, 8, 70, 0, 9, 237, 80, 7, 9, 0, 8, 94, 0, 8, 30, 0, 9, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, 84, 7, 99, 0, 8, 126, 0, 8, 62, 0, 9, 221, 82, 7, 27, 0, 8, 110, 0, 8, 46, 0, 9, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 14, 0, 8, CipherSuite.TLS_DHE_PSK_WITH_RC4_128_SHA, 0, 8, 78, 0, 9, 253, 96, 7, 256, 0, 8, 81, 0, 8, 17, 85, 8, 131, 82, 7, 31, 0, 8, 113, 0, 8, 49, 0, 9, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256, 80, 7, 10, 0, 8, 97, 0, 8, 33, 0, 9, 163, 0, 8, 1, 0, 8, 129, 0, 8, 65, 0, 9, 227, 80, 7, 6, 0, 8, 89, 0, 8, 25, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_3DES_EDE_CBC_SHA, 83, 7, 59, 0, 8, 121, 0, 8, 57, 0, 9, Primes.SMALL_FACTOR_LIMIT, 81, 7, 17, 0, 8, 105, 0, 8, 41, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_256_CBC_SHA384, 0, 8, 9, 0, 8, 137, 0, 8, 73, 0, 9, 243, 80, 7, 4, 0, 8, 85, 0, 8, 21, 80, 8, 258, 83, 7, 43, 0, 8, Error.E_REG_SESSION_GET_FAILED, 0, 8, 53, 0, 9, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 81, 7, 13, 0, 8, 101, 0, 8, 37, 0, 9, CipherSuite.TLS_DHE_PSK_WITH_AES_256_GCM_SHA384, 0, 8, 5, 0, 8, 133, 0, 8, 69, 0, 9, 235, 80, 7, 8, 0, 8, 93, 0, 8, 29, 0, 9, CipherSuite.TLS_DH_anon_WITH_SEED_CBC_SHA, 84, 7, 83, 0, 8, 125, 0, 8, 61, 0, 9, 219, 82, 7, 23, 0, 8, 109, 0, 8, 45, 0, 9, CipherSuite.TLS_DH_DSS_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 13, 0, 8, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA, 0, 8, 77, 0, 9, 251, 80, 7, 3, 0, 8, 83, 0, 8, 19, 85, 8, CipherSuite.TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA256, 83, 7, 35, 0, 8, 115, 0, 8, 51, 0, 9, 199, 81, 7, 11, 0, 8, 99, 0, 8, 35, 0, 9, CipherSuite.TLS_DH_anon_WITH_AES_256_GCM_SHA384, 0, 8, 3, 0, 8, 131, 0, 8, 67, 0, 9, 231, 80, 7, 7, 0, 8, 91, 0, 8, 27, 0, 9, CipherSuite.TLS_DH_DSS_WITH_SEED_CBC_SHA, 84, 7, 67, 0, 8, 123, 0, 8, 59, 0, 9, 215, 82, 7, 19, 0, 8, 107, 0, 8, 43, 0, 9, CipherSuite.TLS_RSA_PSK_WITH_AES_256_CBC_SHA384, 0, 8, 11, 0, 8, 139, 0, 8, 75, 0, 9, 247, 80, 7, 5, 0, 8, 87, 0, 8, 23, 192, 8, 0, 83, 7, 51, 0, 8, 119, 0, 8, 55, 0, 9, HttpStatus.SC_MULTI_STATUS, 81, 7, 15, 0, 8, 103, 0, 8, 39, 0, 9, CipherSuite.TLS_PSK_WITH_AES_256_CBC_SHA384, 0, 8, 7, 0, 8, 135, 0, 8, 71, 0, 9, 239, 80, 7, 9, 0, 8, 95, 0, 8, 31, 0, 9, CipherSuite.TLS_DHE_RSA_WITH_AES_256_GCM_SHA384, 84, 7, 99, 0, 8, 127, 0, 8, 63, 0, 9, 223, 82, 7, 27, 0, 8, 111, 0, 8, 47, 0, 9, CipherSuite.TLS_DH_anon_WITH_CAMELLIA_128_CBC_SHA256, 0, 8, 15, 0, 8, CipherSuite.TLS_DHE_PSK_WITH_3DES_EDE_CBC_SHA, 0, 8, 79, 0, 9, 255};
    private int[] c;
    private int[] hn;
    private int[] r;
    private int[] u;
    private int[] v;
    private int[] x;

    InfTree() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:91:0x0265, code lost:
        r12 = r12 + 1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private int huft_build(int[] r25, int r26, int r27, int r28, int[] r29, int[] r30, int[] r31, int[] r32, int[] r33, int[] r34, int[] r35) {
        /*
            r24 = this;
            r5 = 0
            r6 = r27
        L_0x0003:
            r0 = r24
            int[] r7 = r0.c
            int r8 = r26 + r5
            r8 = r25[r8]
            r9 = r7[r8]
            int r9 = r9 + 1
            r7[r8] = r9
            int r5 = r5 + 1
            int r6 = r6 + -1
            if (r6 != 0) goto L_0x0003
            r0 = r24
            int[] r5 = r0.c
            r6 = 0
            r5 = r5[r6]
            r0 = r27
            if (r5 != r0) goto L_0x002c
            r5 = 0
            r6 = -1
            r31[r5] = r6
            r5 = 0
            r6 = 0
            r32[r5] = r6
            r5 = 0
        L_0x002b:
            return r5
        L_0x002c:
            r5 = 0
            r5 = r32[r5]
            r6 = 1
        L_0x0030:
            r7 = 15
            if (r6 > r7) goto L_0x003c
            r0 = r24
            int[] r7 = r0.c
            r7 = r7[r6]
            if (r7 == 0) goto L_0x0061
        L_0x003c:
            if (r5 >= r6) goto L_0x003f
            r5 = r6
        L_0x003f:
            r7 = 15
        L_0x0041:
            if (r7 == 0) goto L_0x004b
            r0 = r24
            int[] r8 = r0.c
            r8 = r8[r7]
            if (r8 == 0) goto L_0x0064
        L_0x004b:
            if (r5 <= r7) goto L_0x004e
            r5 = r7
        L_0x004e:
            r8 = 0
            r32[r8] = r5
            r8 = 1
            int r8 = r8 << r6
            r9 = r6
        L_0x0054:
            if (r9 >= r7) goto L_0x006c
            r0 = r24
            int[] r10 = r0.c
            r10 = r10[r9]
            int r8 = r8 - r10
            if (r8 >= 0) goto L_0x0067
            r5 = -3
            goto L_0x002b
        L_0x0061:
            int r6 = r6 + 1
            goto L_0x0030
        L_0x0064:
            int r7 = r7 + -1
            goto L_0x0041
        L_0x0067:
            int r9 = r9 + 1
            int r8 = r8 << 1
            goto L_0x0054
        L_0x006c:
            r0 = r24
            int[] r9 = r0.c
            r9 = r9[r7]
            int r17 = r8 - r9
            if (r17 >= 0) goto L_0x0078
            r5 = -3
            goto L_0x002b
        L_0x0078:
            r0 = r24
            int[] r8 = r0.c
            r9 = r8[r7]
            int r9 = r9 + r17
            r8[r7] = r9
            r0 = r24
            int[] r8 = r0.x
            r9 = 1
            r10 = 0
            r8[r9] = r10
            r9 = 1
            r8 = 2
            r11 = r7
        L_0x008d:
            int r11 = r11 + -1
            if (r11 == 0) goto L_0x00a3
            r0 = r24
            int[] r12 = r0.x
            r0 = r24
            int[] r13 = r0.c
            r13 = r13[r9]
            int r10 = r10 + r13
            r12[r8] = r10
            int r8 = r8 + 1
            int r9 = r9 + 1
            goto L_0x008d
        L_0x00a3:
            r9 = 0
            r8 = 0
        L_0x00a5:
            int r10 = r26 + r8
            r10 = r25[r10]
            if (r10 == 0) goto L_0x00b7
            r0 = r24
            int[] r11 = r0.x
            r12 = r11[r10]
            int r13 = r12 + 1
            r11[r10] = r13
            r35[r12] = r9
        L_0x00b7:
            int r8 = r8 + 1
            int r9 = r9 + 1
            r0 = r27
            if (r9 < r0) goto L_0x00a5
            r0 = r24
            int[] r8 = r0.x
            r18 = r8[r7]
            r0 = r24
            int[] r8 = r0.x
            r9 = 0
            r12 = 0
            r8[r9] = r12
            r11 = 0
            r13 = -1
            int r9 = -r5
            r0 = r24
            int[] r8 = r0.u
            r10 = 0
            r14 = 0
            r8[r10] = r14
            r10 = 0
            r8 = 0
            r23 = r8
            r8 = r11
            r11 = r12
            r12 = r6
            r6 = r23
        L_0x00e1:
            if (r12 > r7) goto L_0x0269
            r0 = r24
            int[] r14 = r0.c
            r14 = r14[r12]
        L_0x00e9:
            int r16 = r14 + -1
            if (r14 == 0) goto L_0x0265
            r14 = r10
            r10 = r13
            r13 = r6
        L_0x00f0:
            int r6 = r9 + r5
            if (r12 <= r6) goto L_0x01ad
            int r15 = r10 + 1
            int r14 = r9 + r5
            int r6 = r7 - r14
            if (r6 <= r5) goto L_0x012d
            r13 = r5
        L_0x00fd:
            r9 = 1
            int r6 = r12 - r14
            int r9 = r9 << r6
            int r10 = r16 + 1
            if (r9 <= r10) goto L_0x0120
            int r10 = r16 + 1
            int r9 = r9 - r10
            if (r6 >= r13) goto L_0x0120
            r10 = r9
            r9 = r12
        L_0x010c:
            int r6 = r6 + 1
            if (r6 >= r13) goto L_0x0120
            int r10 = r10 << 1
            r0 = r24
            int[] r0 = r0.c
            r19 = r0
            int r9 = r9 + 1
            r19 = r19[r9]
            r0 = r19
            if (r10 > r0) goto L_0x012f
        L_0x0120:
            r9 = 1
            int r9 = r9 << r6
            r10 = 0
            r10 = r34[r10]
            int r10 = r10 + r9
            r13 = 1440(0x5a0, float:2.018E-42)
            if (r10 <= r13) goto L_0x013a
            r5 = -3
            goto L_0x002b
        L_0x012d:
            r13 = r6
            goto L_0x00fd
        L_0x012f:
            r0 = r24
            int[] r0 = r0.c
            r19 = r0
            r19 = r19[r9]
            int r10 = r10 - r19
            goto L_0x010c
        L_0x013a:
            r0 = r24
            int[] r13 = r0.u
            r10 = 0
            r10 = r34[r10]
            r13[r15] = r10
            r13 = 0
            r19 = r34[r13]
            int r19 = r19 + r9
            r34[r13] = r19
            if (r15 == 0) goto L_0x01a4
            r0 = r24
            int[] r13 = r0.x
            r13[r15] = r11
            r0 = r24
            int[] r13 = r0.r
            r19 = 0
            byte r6 = (byte) r6
            r13[r19] = r6
            r0 = r24
            int[] r6 = r0.r
            r13 = 1
            byte r0 = (byte) r5
            r19 = r0
            r6[r13] = r19
            int r6 = r14 - r5
            int r6 = r11 >>> r6
            r0 = r24
            int[] r13 = r0.r
            r19 = 2
            r0 = r24
            int[] r0 = r0.u
            r20 = r0
            int r21 = r15 + -1
            r20 = r20[r21]
            int r20 = r10 - r20
            int r20 = r20 - r6
            r13[r19] = r20
            r0 = r24
            int[] r13 = r0.r
            r19 = 0
            r0 = r24
            int[] r0 = r0.u
            r20 = r0
            int r21 = r15 + -1
            r20 = r20[r21]
            int r6 = r6 + r20
            int r6 = r6 * 3
            r20 = 3
            r0 = r19
            r1 = r33
            r2 = r20
            java.lang.System.arraycopy(r13, r0, r1, r6, r2)
            r13 = r9
            r9 = r14
            r14 = r10
            r10 = r15
            goto L_0x00f0
        L_0x01a4:
            r6 = 0
            r31[r6] = r10
            r13 = r9
            r9 = r14
            r14 = r10
            r10 = r15
            goto L_0x00f0
        L_0x01ad:
            r0 = r24
            int[] r6 = r0.r
            r15 = 1
            int r19 = r12 - r9
            r0 = r19
            byte r0 = (byte) r0
            r19 = r0
            r6[r15] = r19
            r0 = r18
            if (r8 < r0) goto L_0x01ef
            r0 = r24
            int[] r6 = r0.r
            r15 = 0
            r19 = 192(0xc0, float:2.69E-43)
            r6[r15] = r19
            r6 = r8
        L_0x01c9:
            r8 = 1
            int r15 = r12 - r9
            int r15 = r8 << r15
            int r8 = r11 >>> r9
        L_0x01d0:
            if (r8 >= r13) goto L_0x023e
            r0 = r24
            int[] r0 = r0.r
            r19 = r0
            r20 = 0
            int r21 = r14 + r8
            int r21 = r21 * 3
            r22 = 3
            r0 = r19
            r1 = r20
            r2 = r33
            r3 = r21
            r4 = r22
            java.lang.System.arraycopy(r0, r1, r2, r3, r4)
            int r8 = r8 + r15
            goto L_0x01d0
        L_0x01ef:
            r6 = r35[r8]
            r0 = r28
            if (r6 >= r0) goto L_0x0217
            r0 = r24
            int[] r15 = r0.r
            r19 = 0
            r6 = r35[r8]
            r20 = 256(0x100, float:3.59E-43)
            r0 = r20
            if (r6 >= r0) goto L_0x0214
            r6 = 0
        L_0x0204:
            byte r6 = (byte) r6
            r15[r19] = r6
            r0 = r24
            int[] r15 = r0.r
            r19 = 2
            int r6 = r8 + 1
            r8 = r35[r8]
            r15[r19] = r8
            goto L_0x01c9
        L_0x0214:
            r6 = 96
            goto L_0x0204
        L_0x0217:
            r0 = r24
            int[] r6 = r0.r
            r15 = 0
            r19 = r35[r8]
            int r19 = r19 - r28
            r19 = r30[r19]
            int r19 = r19 + 16
            int r19 = r19 + 64
            r0 = r19
            byte r0 = (byte) r0
            r19 = r0
            r6[r15] = r19
            r0 = r24
            int[] r15 = r0.r
            r19 = 2
            int r6 = r8 + 1
            r8 = r35[r8]
            int r8 = r8 - r28
            r8 = r29[r8]
            r15[r19] = r8
            goto L_0x01c9
        L_0x023e:
            r8 = 1
            int r15 = r12 + -1
            int r8 = r8 << r15
        L_0x0242:
            r15 = r11 & r8
            if (r15 == 0) goto L_0x024a
            r11 = r11 ^ r8
            int r8 = r8 >>> 1
            goto L_0x0242
        L_0x024a:
            r11 = r11 ^ r8
            r8 = 1
            int r8 = r8 << r9
            int r8 = r8 + -1
            r23 = r9
            r9 = r8
            r8 = r23
        L_0x0254:
            r9 = r9 & r11
            r0 = r24
            int[] r15 = r0.x
            r15 = r15[r10]
            if (r9 == r15) goto L_0x0274
            int r10 = r10 + -1
            int r8 = r8 - r5
            r9 = 1
            int r9 = r9 << r8
            int r9 = r9 + -1
            goto L_0x0254
        L_0x0265:
            int r12 = r12 + 1
            goto L_0x00e1
        L_0x0269:
            if (r17 == 0) goto L_0x0271
            r5 = 1
            if (r7 == r5) goto L_0x0271
            r5 = -5
            goto L_0x002b
        L_0x0271:
            r5 = 0
            goto L_0x002b
        L_0x0274:
            r9 = r8
            r8 = r6
            r6 = r13
            r13 = r10
            r10 = r14
            r14 = r16
            goto L_0x00e9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jboss.netty.util.internal.jzlib.InfTree.huft_build(int[], int, int, int, int[], int[], int[], int[], int[], int[], int[]):int");
    }

    /* access modifiers changed from: 0000 */
    public int inflate_trees_bits(int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, ZStream zStream) {
        initWorkArea(19);
        this.hn[0] = 0;
        int huft_build = huft_build(iArr, 0, 19, 19, null, null, iArr3, iArr2, iArr4, this.hn, this.v);
        if (huft_build == -3) {
            zStream.msg = "oversubscribed dynamic bit lengths tree";
            return huft_build;
        } else if (huft_build != -5 && iArr2[0] != 0) {
            return huft_build;
        } else {
            zStream.msg = "incomplete dynamic bit lengths tree";
            return -3;
        }
    }

    /* access modifiers changed from: 0000 */
    public int inflate_trees_dynamic(int i, int i2, int[] iArr, int[] iArr2, int[] iArr3, int[] iArr4, int[] iArr5, int[] iArr6, ZStream zStream) {
        initWorkArea(288);
        this.hn[0] = 0;
        int huft_build = huft_build(iArr, 0, i, 257, cplens, cplext, iArr4, iArr2, iArr6, this.hn, this.v);
        if (huft_build == 0 && iArr2[0] != 0) {
            initWorkArea(288);
            int huft_build2 = huft_build(iArr, i, i2, 0, cpdist, cpdext, iArr5, iArr3, iArr6, this.hn, this.v);
            if (huft_build2 == 0 && (iArr3[0] != 0 || i <= 257)) {
                return 0;
            }
            if (huft_build2 == -3) {
                zStream.msg = "oversubscribed distance tree";
                return huft_build2;
            } else if (huft_build2 == -5) {
                zStream.msg = "incomplete distance tree";
                return -3;
            } else if (huft_build2 == -4) {
                return huft_build2;
            } else {
                zStream.msg = "empty distance tree with lengths";
                return -3;
            }
        } else if (huft_build == -3) {
            zStream.msg = "oversubscribed literal/length tree";
            return huft_build;
        } else if (huft_build == -4) {
            return huft_build;
        } else {
            zStream.msg = "incomplete literal/length tree";
            return -3;
        }
    }

    static int inflate_trees_fixed(int[] iArr, int[] iArr2, int[][] iArr3, int[][] iArr4) {
        iArr[0] = 9;
        iArr2[0] = 5;
        iArr3[0] = fixed_tl;
        iArr4[0] = fixed_td;
        return 0;
    }

    private void initWorkArea(int i) {
        if (this.hn == null) {
            this.hn = new int[1];
            this.v = new int[i];
            this.c = new int[16];
            this.r = new int[3];
            this.u = new int[15];
            this.x = new int[16];
            return;
        }
        if (this.v.length < i) {
            this.v = new int[i];
        } else {
            for (int i2 = 0; i2 < i; i2++) {
                this.v[i2] = 0;
            }
        }
        for (int i3 = 0; i3 < 16; i3++) {
            this.c[i3] = 0;
        }
        for (int i4 = 0; i4 < 3; i4++) {
            this.r[i4] = 0;
        }
        System.arraycopy(this.c, 0, this.u, 0, 15);
        System.arraycopy(this.c, 0, this.x, 0, 16);
    }
}
