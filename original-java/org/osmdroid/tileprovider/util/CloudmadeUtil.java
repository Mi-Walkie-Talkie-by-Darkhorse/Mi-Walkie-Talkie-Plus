package org.osmdroid.tileprovider.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.provider.Settings.Secure;

public class CloudmadeUtil {
    private static final String CLOUDMADE_ID = "CLOUDMADE_ID";
    private static final String CLOUDMADE_KEY = "CLOUDMADE_KEY";
    private static final String CLOUDMADE_TOKEN = "CLOUDMADE_TOKEN";
    public static boolean DEBUGMODE = false;
    private static String mAndroidId = "android_id";
    private static String mKey = "";
    private static Editor mPreferenceEditor;
    private static String mToken = "";

    public static void retrieveCloudmadeKey(Context context) {
        mAndroidId = Secure.getString(context.getContentResolver(), "android_id");
        mKey = ManifestUtil.retrieveKey(context, CLOUDMADE_KEY);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        mPreferenceEditor = defaultSharedPreferences.edit();
        if (defaultSharedPreferences.getString(CLOUDMADE_ID, "").equals(mAndroidId)) {
            mToken = defaultSharedPreferences.getString(CLOUDMADE_TOKEN, "");
            if (mToken.length() > 0) {
                mPreferenceEditor = null;
                return;
            }
            return;
        }
        mPreferenceEditor.putString(CLOUDMADE_ID, mAndroidId);
        mPreferenceEditor.commit();
    }

    public static String getCloudmadeKey() {
        return mKey;
    }

    public static void setCloudmadeKey(String str) {
        mKey = str;
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x0115 A[SYNTHETIC, Splitter:B:44:0x0115] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:26:0x00e2=Splitter:B:26:0x00e2, B:46:0x0118=Splitter:B:46:0x0118} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static java.lang.String getCloudmadeToken() {
        /*
            r1 = 0
            java.lang.String r0 = mToken
            int r0 = r0.length()
            if (r0 != 0) goto L_0x00e3
            java.lang.String r2 = mToken
            monitor-enter(r2)
            java.lang.String r0 = mToken     // Catch:{ all -> 0x0119 }
            int r0 = r0.length()     // Catch:{ all -> 0x0119 }
            if (r0 != 0) goto L_0x00e2
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch:{ all -> 0x0119 }
            r0.<init>()     // Catch:{ all -> 0x0119 }
            java.lang.String r3 = "http://auth.cloudmade.com/token/"
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ all -> 0x0119 }
            java.lang.String r3 = mKey     // Catch:{ all -> 0x0119 }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ all -> 0x0119 }
            java.lang.String r3 = "?userid="
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ all -> 0x0119 }
            java.lang.String r3 = mAndroidId     // Catch:{ all -> 0x0119 }
            java.lang.StringBuilder r0 = r0.append(r3)     // Catch:{ all -> 0x0119 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0119 }
            java.net.URL r3 = new java.net.URL     // Catch:{ IOException -> 0x0125 }
            r3.<init>(r0)     // Catch:{ IOException -> 0x0125 }
            java.net.URLConnection r0 = r3.openConnection()     // Catch:{ IOException -> 0x0125 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ IOException -> 0x0125 }
            r1 = 1
            r0.setDoOutput(r1)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r1 = "POST"
            r0.setRequestMethod(r1)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r1 = "Content-Type"
            java.lang.String r3 = "application/x-www-form-urlencoded"
            r0.setRequestProperty(r1, r3)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            org.osmdroid.config.IConfigurationProvider r1 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r1 = r1.getUserAgentHttpHeader()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r3 = r3.getUserAgentValue()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r0.setRequestProperty(r1, r3)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r0.connect()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            boolean r1 = DEBUGMODE     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            if (r1 == 0) goto L_0x0086
            java.lang.String r1 = "OsmDroid"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r3.<init>()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r4 = "Response from Cloudmade auth: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r4 = r0.getResponseMessage()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r3 = r3.toString()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            android.util.Log.d(r1, r3)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
        L_0x0086:
            int r1 = r0.getResponseCode()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r3 = 200(0xc8, float:2.8E-43)
            if (r1 != r3) goto L_0x00dd
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.io.InputStreamReader r3 = new java.io.InputStreamReader     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.io.InputStream r4 = r0.getInputStream()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r3.<init>(r4)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r4 = 8192(0x2000, float:1.14794E-41)
            r1.<init>(r3, r4)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r1 = r1.readLine()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            boolean r3 = DEBUGMODE     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            if (r3 == 0) goto L_0x00be
            java.lang.String r3 = "OsmDroid"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r4.<init>()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r5 = "First line from Cloudmade auth: "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.StringBuilder r4 = r4.append(r1)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r4 = r4.toString()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            android.util.Log.d(r3, r4)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
        L_0x00be:
            java.lang.String r1 = r1.trim()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            mToken = r1     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r1 = mToken     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            int r1 = r1.length()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            if (r1 <= 0) goto L_0x00e6
            android.content.SharedPreferences$Editor r1 = mPreferenceEditor     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            java.lang.String r3 = "CLOUDMADE_TOKEN"
            java.lang.String r4 = mToken     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r1.putString(r3, r4)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            android.content.SharedPreferences$Editor r1 = mPreferenceEditor     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r1.commit()     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            r1 = 0
            mPreferenceEditor = r1     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
        L_0x00dd:
            if (r0 == 0) goto L_0x00e2
            r0.disconnect()     // Catch:{ Exception -> 0x011c }
        L_0x00e2:
            monitor-exit(r2)     // Catch:{ all -> 0x0119 }
        L_0x00e3:
            java.lang.String r0 = mToken
            return r0
        L_0x00e6:
            java.lang.String r1 = "OsmDroid"
            java.lang.String r3 = "No authorization token received from Cloudmade"
            android.util.Log.e(r1, r3)     // Catch:{ IOException -> 0x00ee, all -> 0x0120 }
            goto L_0x00dd
        L_0x00ee:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
        L_0x00f2:
            java.lang.String r3 = "OsmDroid"
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0112 }
            r4.<init>()     // Catch:{ all -> 0x0112 }
            java.lang.String r5 = "No authorization token received from Cloudmade: "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0112 }
            java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ all -> 0x0112 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0112 }
            android.util.Log.e(r3, r0)     // Catch:{ all -> 0x0112 }
            if (r1 == 0) goto L_0x00e2
            r1.disconnect()     // Catch:{ Exception -> 0x0110 }
            goto L_0x00e2
        L_0x0110:
            r0 = move-exception
            goto L_0x00e2
        L_0x0112:
            r0 = move-exception
        L_0x0113:
            if (r1 == 0) goto L_0x0118
            r1.disconnect()     // Catch:{ Exception -> 0x011e }
        L_0x0118:
            throw r0     // Catch:{ all -> 0x0119 }
        L_0x0119:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0119 }
            throw r0
        L_0x011c:
            r0 = move-exception
            goto L_0x00e2
        L_0x011e:
            r1 = move-exception
            goto L_0x0118
        L_0x0120:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x0113
        L_0x0125:
            r0 = move-exception
            goto L_0x00f2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.util.CloudmadeUtil.getCloudmadeToken():java.lang.String");
    }
}
