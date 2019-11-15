package com.mi.mimsgsdk.database;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.mi.mimsgsdk.database.pojo.ChatMessage;

public class SingleMessageDao extends AbstractDaoImpl implements IMessageDao {
    private static final String TAG = "SingleMessageDao";
    private static volatile SingleMessageDao sInstance;
    protected final Object mLock = new Object();

    public Object getLock() {
        return this.mLock;
    }

    public static void setContext(Context context) {
        ChatMessageDbOpenHelper.setContext(context);
    }

    public static SingleMessageDao getInstance() {
        if (sInstance == null) {
            synchronized (SingleMessageDao.class) {
                if (sInstance == null) {
                    sInstance = new SingleMessageDao();
                }
            }
        }
        return sInstance;
    }

    protected SingleMessageDao() {
    }

    public String getTableName() {
        return ChatMessageDbOpenHelper.getSingleCallMessageTableName();
    }

    public String[] getTableColumns() {
        return ChatMessageDbOpenHelper.getSingleCallMessageTableColumns();
    }

    public SQLiteDatabase getWritableDatabase() {
        return ChatMessageDbOpenHelper.getInstance().getWritableDatabase();
    }

    public SQLiteDatabase getReadableDatabase() {
        return ChatMessageDbOpenHelper.getInstance().getReadableDatabase();
    }

    public void insert(ChatMessage chatMessage) {
        synchronized (this.mLock) {
            if (chatMessage != null) {
                getWritableDatabase().insert(getTableName(), null, chatMessage.toContentValues());
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:31:0x0072 A[SYNTHETIC, Splitter:B:31:0x0072] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<com.mi.mimsgsdk.database.pojo.ChatMessage> query(long r12) {
        /*
            r11 = this;
            r8 = 0
            java.util.ArrayList r9 = new java.util.ArrayList
            r9.<init>()
            java.lang.Object r10 = r11.mLock
            monitor-enter(r10)
            r0 = 0
            int r0 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r0 < 0) goto L_0x0049
            android.database.sqlite.SQLiteDatabase r0 = r11.getReadableDatabase()     // Catch:{ Exception -> 0x004b, all -> 0x006e }
            java.lang.String r1 = r11.getTableName()     // Catch:{ Exception -> 0x004b, all -> 0x006e }
            java.lang.String[] r2 = r11.getTableColumns()     // Catch:{ Exception -> 0x004b, all -> 0x006e }
            java.lang.String r3 = "msg_id =? "
            r4 = 1
            java.lang.String[] r4 = new java.lang.String[r4]     // Catch:{ Exception -> 0x004b, all -> 0x006e }
            r5 = 0
            java.lang.String r6 = java.lang.String.valueOf(r12)     // Catch:{ Exception -> 0x004b, all -> 0x006e }
            r4[r5] = r6     // Catch:{ Exception -> 0x004b, all -> 0x006e }
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ Exception -> 0x004b, all -> 0x006e }
            if (r1 == 0) goto L_0x0044
            boolean r0 = r1.moveToFirst()     // Catch:{ Exception -> 0x0078 }
            if (r0 == 0) goto L_0x0044
        L_0x0036:
            com.mi.mimsgsdk.database.pojo.ChatMessage r0 = new com.mi.mimsgsdk.database.pojo.ChatMessage     // Catch:{ Exception -> 0x0078 }
            r0.<init>(r1)     // Catch:{ Exception -> 0x0078 }
            r9.add(r0)     // Catch:{ Exception -> 0x0078 }
            boolean r0 = r1.moveToNext()     // Catch:{ Exception -> 0x0078 }
            if (r0 != 0) goto L_0x0036
        L_0x0044:
            if (r1 == 0) goto L_0x0049
            r1.close()     // Catch:{ all -> 0x006b }
        L_0x0049:
            monitor-exit(r10)     // Catch:{ all -> 0x006b }
            return r9
        L_0x004b:
            r0 = move-exception
            r1 = r8
        L_0x004d:
            java.lang.String r2 = "SingleMessageDao"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0076 }
            r3.<init>()     // Catch:{ all -> 0x0076 }
            java.lang.String r4 = "error in query, exception code is: "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ all -> 0x0076 }
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch:{ all -> 0x0076 }
            java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0076 }
            android.util.Log.e(r2, r0)     // Catch:{ all -> 0x0076 }
            if (r1 == 0) goto L_0x0049
            r1.close()     // Catch:{ all -> 0x006b }
            goto L_0x0049
        L_0x006b:
            r0 = move-exception
            monitor-exit(r10)     // Catch:{ all -> 0x006b }
            throw r0
        L_0x006e:
            r0 = move-exception
            r1 = r8
        L_0x0070:
            if (r1 == 0) goto L_0x0075
            r1.close()     // Catch:{ all -> 0x006b }
        L_0x0075:
            throw r0     // Catch:{ all -> 0x006b }
        L_0x0076:
            r0 = move-exception
            goto L_0x0070
        L_0x0078:
            r0 = move-exception
            goto L_0x004d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mi.mimsgsdk.database.SingleMessageDao.query(long):java.util.List");
    }
}
