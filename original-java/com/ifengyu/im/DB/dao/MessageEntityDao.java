package com.ifengyu.im.DB.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.model.MessageEntity.AttachmentConverter;
import com.ifengyu.im.imservice.model.MsgAttachment;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class MessageEntityDao extends a<MessageEntity, Long> {
    public static final String TABLENAME = "MESSAGE_ENTITY";
    private final AttachmentConverter attachmentConverter = new AttachmentConverter();

    public static class Properties {
        public static final f AttachStatus = new f(12, Integer.TYPE, "attachStatus", false, "ATTACH_STATUS");
        public static final f Attachment = new f(11, String.class, HttpPostBodyUtil.ATTACHMENT, false, "ATTACHMENT");
        public static final f Content = new f(9, String.class, "content", false, "CONTENT");
        public static final f Direct = new f(8, Integer.TYPE, "direct", false, "DIRECT");
        public static final f FromId = new f(3, String.class, "fromId", false, "FROM_ID");
        public static final f Id = new f(0, Long.class, "id", true, "_id");
        public static final f MsgId = new f(1, Long.TYPE, "msgId", false, "MSG_ID");
        public static final f MsgSeq = new f(2, Long.TYPE, "msgSeq", false, "MSG_SEQ");
        public static final f MsgType = new f(6, Integer.TYPE, "msgType", false, "MSG_TYPE");
        public static final f SessionType = new f(5, Integer.TYPE, "sessionType", false, "SESSION_TYPE");
        public static final f Status = new f(7, Integer.TYPE, "status", false, "STATUS");
        public static final f Time = new f(10, Long.TYPE, Values.TIME, false, "TIME");
        public static final f ToId = new f(4, String.class, "toId", false, "TO_ID");
    }

    public MessageEntityDao(org.greenrobot.greendao.b.a aVar) {
        super(aVar);
    }

    public MessageEntityDao(org.greenrobot.greendao.b.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
    }

    public static void createTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"MESSAGE_ENTITY\" (\"_id\" INTEGER PRIMARY KEY ,\"MSG_ID\" INTEGER NOT NULL ,\"MSG_SEQ\" INTEGER NOT NULL ,\"FROM_ID\" TEXT,\"TO_ID\" TEXT,\"SESSION_TYPE\" INTEGER NOT NULL ,\"MSG_TYPE\" INTEGER NOT NULL ,\"STATUS\" INTEGER NOT NULL ,\"DIRECT\" INTEGER NOT NULL ,\"CONTENT\" TEXT,\"TIME\" INTEGER NOT NULL ,\"ATTACHMENT\" TEXT,\"ATTACH_STATUS\" INTEGER NOT NULL );");
    }

    public static void dropTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("DROP TABLE " + (z ? "IF EXISTS " : "") + "\"MESSAGE_ENTITY\"");
    }

    /* access modifiers changed from: protected */
    public final void bindValues(c cVar, MessageEntity messageEntity) {
        cVar.d();
        Long id = messageEntity.getId();
        if (id != null) {
            cVar.a(1, id.longValue());
        }
        cVar.a(2, messageEntity.getMsgId());
        cVar.a(3, messageEntity.getMsgSeq());
        String fromId = messageEntity.getFromId();
        if (fromId != null) {
            cVar.a(4, fromId);
        }
        String toId = messageEntity.getToId();
        if (toId != null) {
            cVar.a(5, toId);
        }
        cVar.a(6, (long) messageEntity.getSessionType());
        cVar.a(7, (long) messageEntity.getMsgType());
        cVar.a(8, (long) messageEntity.getStatus());
        cVar.a(9, (long) messageEntity.getDirect());
        String content = messageEntity.getContent();
        if (content != null) {
            cVar.a(10, content);
        }
        cVar.a(11, messageEntity.getTime());
        MsgAttachment attachment = messageEntity.getAttachment();
        if (attachment != null) {
            cVar.a(12, this.attachmentConverter.convertToDatabaseValue(attachment));
        }
        cVar.a(13, (long) messageEntity.getAttachStatus());
    }

    /* access modifiers changed from: protected */
    public final void bindValues(SQLiteStatement sQLiteStatement, MessageEntity messageEntity) {
        sQLiteStatement.clearBindings();
        Long id = messageEntity.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, messageEntity.getMsgId());
        sQLiteStatement.bindLong(3, messageEntity.getMsgSeq());
        String fromId = messageEntity.getFromId();
        if (fromId != null) {
            sQLiteStatement.bindString(4, fromId);
        }
        String toId = messageEntity.getToId();
        if (toId != null) {
            sQLiteStatement.bindString(5, toId);
        }
        sQLiteStatement.bindLong(6, (long) messageEntity.getSessionType());
        sQLiteStatement.bindLong(7, (long) messageEntity.getMsgType());
        sQLiteStatement.bindLong(8, (long) messageEntity.getStatus());
        sQLiteStatement.bindLong(9, (long) messageEntity.getDirect());
        String content = messageEntity.getContent();
        if (content != null) {
            sQLiteStatement.bindString(10, content);
        }
        sQLiteStatement.bindLong(11, messageEntity.getTime());
        MsgAttachment attachment = messageEntity.getAttachment();
        if (attachment != null) {
            sQLiteStatement.bindString(12, this.attachmentConverter.convertToDatabaseValue(attachment));
        }
        sQLiteStatement.bindLong(13, (long) messageEntity.getAttachStatus());
    }

    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    public MessageEntity readEntity(Cursor cursor, int i) {
        return new MessageEntity(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)), cursor.getLong(i + 1), cursor.getLong(i + 2), cursor.isNull(i + 3) ? null : cursor.getString(i + 3), cursor.isNull(i + 4) ? null : cursor.getString(i + 4), cursor.getInt(i + 5), cursor.getInt(i + 6), cursor.getInt(i + 7), cursor.getInt(i + 8), cursor.isNull(i + 9) ? null : cursor.getString(i + 9), cursor.getLong(i + 10), cursor.isNull(i + 11) ? null : this.attachmentConverter.convertToEntityProperty(cursor.getString(i + 11)), cursor.getInt(i + 12));
    }

    public void readEntity(Cursor cursor, MessageEntity messageEntity, int i) {
        MsgAttachment msgAttachment = null;
        messageEntity.setId(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        messageEntity.setMsgId(cursor.getLong(i + 1));
        messageEntity.setMsgSeq(cursor.getLong(i + 2));
        messageEntity.setFromId(cursor.isNull(i + 3) ? null : cursor.getString(i + 3));
        messageEntity.setToId(cursor.isNull(i + 4) ? null : cursor.getString(i + 4));
        messageEntity.setSessionType(cursor.getInt(i + 5));
        messageEntity.setMsgType(cursor.getInt(i + 6));
        messageEntity.setStatus(cursor.getInt(i + 7));
        messageEntity.setDirect(cursor.getInt(i + 8));
        messageEntity.setContent(cursor.isNull(i + 9) ? null : cursor.getString(i + 9));
        messageEntity.setTime(cursor.getLong(i + 10));
        if (!cursor.isNull(i + 11)) {
            msgAttachment = this.attachmentConverter.convertToEntityProperty(cursor.getString(i + 11));
        }
        messageEntity.setAttachment(msgAttachment);
        messageEntity.setAttachStatus(cursor.getInt(i + 12));
    }

    /* access modifiers changed from: protected */
    public final Long updateKeyAfterInsert(MessageEntity messageEntity, long j) {
        messageEntity.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    public Long getKey(MessageEntity messageEntity) {
        if (messageEntity != null) {
            return messageEntity.getId();
        }
        return null;
    }

    public boolean hasKey(MessageEntity messageEntity) {
        return messageEntity.getId() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
