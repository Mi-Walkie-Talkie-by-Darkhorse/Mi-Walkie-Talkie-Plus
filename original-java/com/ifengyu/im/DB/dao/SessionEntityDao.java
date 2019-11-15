package com.ifengyu.im.DB.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.im.imservice.model.SessionEntity;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class SessionEntityDao extends a<SessionEntity, Long> {
    public static final String TABLENAME = "SESSION_ENTITY";

    public static class Properties {
        public static final f Content = new f(7, String.class, "content", false, "CONTENT");
        public static final f Id = new f(0, Long.class, "id", true, "_id");
        public static final f LatestMsgData = new f(5, String.class, "latestMsgData", false, "LATEST_MSG_DATA");
        public static final f LatestMsgId = new f(4, Long.TYPE, "latestMsgId", false, "LATEST_MSG_ID");
        public static final f LatestMsgType = new f(3, Integer.TYPE, "latestMsgType", false, "LATEST_MSG_TYPE");
        public static final f SessionId = new f(1, String.class, "sessionId", false, "SESSION_ID");
        public static final f SessionKey = new f(10, String.class, "sessionKey", false, "SESSION_KEY");
        public static final f SessionType = new f(2, Integer.TYPE, "sessionType", false, "SESSION_TYPE");
        public static final f Tag = new f(9, Long.TYPE, "tag", false, "TAG");
        public static final f TalkId = new f(11, String.class, "talkId", false, "TALK_ID");
        public static final f Time = new f(8, Long.TYPE, Values.TIME, false, "TIME");
        public static final f UnreadCount = new f(6, Integer.TYPE, "unreadCount", false, "UNREAD_COUNT");
    }

    public SessionEntityDao(org.greenrobot.greendao.b.a aVar) {
        super(aVar);
    }

    public SessionEntityDao(org.greenrobot.greendao.b.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
    }

    public static void createTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"SESSION_ENTITY\" (\"_id\" INTEGER PRIMARY KEY ,\"SESSION_ID\" TEXT,\"SESSION_TYPE\" INTEGER NOT NULL ,\"LATEST_MSG_TYPE\" INTEGER NOT NULL ,\"LATEST_MSG_ID\" INTEGER NOT NULL ,\"LATEST_MSG_DATA\" TEXT,\"UNREAD_COUNT\" INTEGER NOT NULL ,\"CONTENT\" TEXT,\"TIME\" INTEGER NOT NULL ,\"TAG\" INTEGER NOT NULL ,\"SESSION_KEY\" TEXT,\"TALK_ID\" TEXT);");
    }

    public static void dropTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("DROP TABLE " + (z ? "IF EXISTS " : "") + "\"SESSION_ENTITY\"");
    }

    /* access modifiers changed from: protected */
    public final void bindValues(c cVar, SessionEntity sessionEntity) {
        cVar.d();
        Long id = sessionEntity.getId();
        if (id != null) {
            cVar.a(1, id.longValue());
        }
        String sessionId = sessionEntity.getSessionId();
        if (sessionId != null) {
            cVar.a(2, sessionId);
        }
        cVar.a(3, (long) sessionEntity.getSessionType());
        cVar.a(4, (long) sessionEntity.getLatestMsgType());
        cVar.a(5, sessionEntity.getLatestMsgId());
        String latestMsgData = sessionEntity.getLatestMsgData();
        if (latestMsgData != null) {
            cVar.a(6, latestMsgData);
        }
        cVar.a(7, (long) sessionEntity.getUnreadCount());
        String content = sessionEntity.getContent();
        if (content != null) {
            cVar.a(8, content);
        }
        cVar.a(9, sessionEntity.getTime());
        cVar.a(10, sessionEntity.getTag());
        String sessionKey = sessionEntity.getSessionKey();
        if (sessionKey != null) {
            cVar.a(11, sessionKey);
        }
        String talkId = sessionEntity.getTalkId();
        if (talkId != null) {
            cVar.a(12, talkId);
        }
    }

    /* access modifiers changed from: protected */
    public final void bindValues(SQLiteStatement sQLiteStatement, SessionEntity sessionEntity) {
        sQLiteStatement.clearBindings();
        Long id = sessionEntity.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        String sessionId = sessionEntity.getSessionId();
        if (sessionId != null) {
            sQLiteStatement.bindString(2, sessionId);
        }
        sQLiteStatement.bindLong(3, (long) sessionEntity.getSessionType());
        sQLiteStatement.bindLong(4, (long) sessionEntity.getLatestMsgType());
        sQLiteStatement.bindLong(5, sessionEntity.getLatestMsgId());
        String latestMsgData = sessionEntity.getLatestMsgData();
        if (latestMsgData != null) {
            sQLiteStatement.bindString(6, latestMsgData);
        }
        sQLiteStatement.bindLong(7, (long) sessionEntity.getUnreadCount());
        String content = sessionEntity.getContent();
        if (content != null) {
            sQLiteStatement.bindString(8, content);
        }
        sQLiteStatement.bindLong(9, sessionEntity.getTime());
        sQLiteStatement.bindLong(10, sessionEntity.getTag());
        String sessionKey = sessionEntity.getSessionKey();
        if (sessionKey != null) {
            sQLiteStatement.bindString(11, sessionKey);
        }
        String talkId = sessionEntity.getTalkId();
        if (talkId != null) {
            sQLiteStatement.bindString(12, talkId);
        }
    }

    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    public SessionEntity readEntity(Cursor cursor, int i) {
        return new SessionEntity(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)), cursor.isNull(i + 1) ? null : cursor.getString(i + 1), cursor.getInt(i + 2), cursor.getInt(i + 3), cursor.getLong(i + 4), cursor.isNull(i + 5) ? null : cursor.getString(i + 5), cursor.getInt(i + 6), cursor.isNull(i + 7) ? null : cursor.getString(i + 7), cursor.getLong(i + 8), cursor.getLong(i + 9), cursor.isNull(i + 10) ? null : cursor.getString(i + 10), cursor.isNull(i + 11) ? null : cursor.getString(i + 11));
    }

    public void readEntity(Cursor cursor, SessionEntity sessionEntity, int i) {
        String str = null;
        sessionEntity.setId(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        sessionEntity.setSessionId(cursor.isNull(i + 1) ? null : cursor.getString(i + 1));
        sessionEntity.setSessionType(cursor.getInt(i + 2));
        sessionEntity.setLatestMsgType(cursor.getInt(i + 3));
        sessionEntity.setLatestMsgId(cursor.getLong(i + 4));
        sessionEntity.setLatestMsgData(cursor.isNull(i + 5) ? null : cursor.getString(i + 5));
        sessionEntity.setUnreadCount(cursor.getInt(i + 6));
        sessionEntity.setContent(cursor.isNull(i + 7) ? null : cursor.getString(i + 7));
        sessionEntity.setTime(cursor.getLong(i + 8));
        sessionEntity.setTag(cursor.getLong(i + 9));
        sessionEntity.setSessionKey(cursor.isNull(i + 10) ? null : cursor.getString(i + 10));
        if (!cursor.isNull(i + 11)) {
            str = cursor.getString(i + 11);
        }
        sessionEntity.setTalkId(str);
    }

    /* access modifiers changed from: protected */
    public final Long updateKeyAfterInsert(SessionEntity sessionEntity, long j) {
        sessionEntity.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    public Long getKey(SessionEntity sessionEntity) {
        if (sessionEntity != null) {
            return sessionEntity.getId();
        }
        return null;
    }

    public boolean hasKey(SessionEntity sessionEntity) {
        return sessionEntity.getId() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
