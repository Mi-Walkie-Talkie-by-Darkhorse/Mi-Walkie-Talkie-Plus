package com.ifengyu.im.DB.entity;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import org.greenrobot.greendao.a;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.f;

public class GroupEntityDao extends a<GroupEntity, Long> {
    public static final String TABLENAME = "Group";

    public static class Properties {
        public static final f Avatar = new f(3, String.class, "avatar", false, "AVATAR");
        public static final f Created = new f(10, Long.TYPE, "created", false, "CREATED");
        public static final f CreatorId = new f(5, Integer.TYPE, "creatorId", false, "CREATOR_ID");
        public static final f GroupType = new f(4, Integer.TYPE, "groupType", false, "GROUP_TYPE");
        public static final f Id = new f(0, Long.class, "id", true, "_id");
        public static final f MainName = new f(2, String.class, "mainName", false, "MAIN_NAME");
        public static final f PeerId = new f(1, Integer.TYPE, "peerId", false, "PEER_ID");
        public static final f Status = new f(9, Integer.TYPE, "status", false, "STATUS");
        public static final f Updated = new f(11, Long.TYPE, "updated", false, "UPDATED");
        public static final f UserCnt = new f(6, Integer.TYPE, "userCnt", false, "USER_CNT");
        public static final f UserList = new f(7, String.class, "userList", false, "USER_LIST");
        public static final f Version = new f(8, Integer.TYPE, "version", false, "VERSION");
    }

    public GroupEntityDao(org.greenrobot.greendao.b.a aVar) {
        super(aVar);
    }

    public GroupEntityDao(org.greenrobot.greendao.b.a aVar, DaoSession daoSession) {
        super(aVar, daoSession);
    }

    public static void createTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("CREATE TABLE " + (z ? "IF NOT EXISTS " : "") + "\"Group\" (\"_id\" INTEGER PRIMARY KEY ,\"PEER_ID\" INTEGER NOT NULL ,\"MAIN_NAME\" TEXT,\"AVATAR\" TEXT,\"GROUP_TYPE\" INTEGER NOT NULL ,\"CREATOR_ID\" INTEGER NOT NULL ,\"USER_CNT\" INTEGER NOT NULL ,\"USER_LIST\" TEXT,\"VERSION\" INTEGER NOT NULL ,\"STATUS\" INTEGER NOT NULL ,\"CREATED\" INTEGER NOT NULL ,\"UPDATED\" INTEGER NOT NULL );");
    }

    public static void dropTable(org.greenrobot.greendao.a.a aVar, boolean z) {
        aVar.a("DROP TABLE " + (z ? "IF EXISTS " : "") + "\"Group\"");
    }

    /* access modifiers changed from: protected */
    public final void bindValues(c cVar, GroupEntity groupEntity) {
        cVar.d();
        Long id = groupEntity.getId();
        if (id != null) {
            cVar.a(1, id.longValue());
        }
        cVar.a(2, (long) groupEntity.getPeerId());
        String mainName = groupEntity.getMainName();
        if (mainName != null) {
            cVar.a(3, mainName);
        }
        String avatar = groupEntity.getAvatar();
        if (avatar != null) {
            cVar.a(4, avatar);
        }
        cVar.a(5, (long) groupEntity.getGroupType());
        cVar.a(6, (long) groupEntity.getCreatorId());
        cVar.a(7, (long) groupEntity.getUserCnt());
        String userList = groupEntity.getUserList();
        if (userList != null) {
            cVar.a(8, userList);
        }
        cVar.a(9, (long) groupEntity.getVersion());
        cVar.a(10, (long) groupEntity.getStatus());
        cVar.a(11, groupEntity.getCreated());
        cVar.a(12, groupEntity.getUpdated());
    }

    /* access modifiers changed from: protected */
    public final void bindValues(SQLiteStatement sQLiteStatement, GroupEntity groupEntity) {
        sQLiteStatement.clearBindings();
        Long id = groupEntity.getId();
        if (id != null) {
            sQLiteStatement.bindLong(1, id.longValue());
        }
        sQLiteStatement.bindLong(2, (long) groupEntity.getPeerId());
        String mainName = groupEntity.getMainName();
        if (mainName != null) {
            sQLiteStatement.bindString(3, mainName);
        }
        String avatar = groupEntity.getAvatar();
        if (avatar != null) {
            sQLiteStatement.bindString(4, avatar);
        }
        sQLiteStatement.bindLong(5, (long) groupEntity.getGroupType());
        sQLiteStatement.bindLong(6, (long) groupEntity.getCreatorId());
        sQLiteStatement.bindLong(7, (long) groupEntity.getUserCnt());
        String userList = groupEntity.getUserList();
        if (userList != null) {
            sQLiteStatement.bindString(8, userList);
        }
        sQLiteStatement.bindLong(9, (long) groupEntity.getVersion());
        sQLiteStatement.bindLong(10, (long) groupEntity.getStatus());
        sQLiteStatement.bindLong(11, groupEntity.getCreated());
        sQLiteStatement.bindLong(12, groupEntity.getUpdated());
    }

    public Long readKey(Cursor cursor, int i) {
        if (cursor.isNull(i + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i + 0));
    }

    public GroupEntity readEntity(Cursor cursor, int i) {
        Long valueOf;
        String string;
        String string2;
        String string3;
        if (cursor.isNull(i + 0)) {
            valueOf = null;
        } else {
            valueOf = Long.valueOf(cursor.getLong(i + 0));
        }
        int i2 = cursor.getInt(i + 1);
        if (cursor.isNull(i + 2)) {
            string = null;
        } else {
            string = cursor.getString(i + 2);
        }
        if (cursor.isNull(i + 3)) {
            string2 = null;
        } else {
            string2 = cursor.getString(i + 3);
        }
        int i3 = cursor.getInt(i + 4);
        int i4 = cursor.getInt(i + 5);
        int i5 = cursor.getInt(i + 6);
        if (cursor.isNull(i + 7)) {
            string3 = null;
        } else {
            string3 = cursor.getString(i + 7);
        }
        return new GroupEntity(valueOf, i2, string, string2, i3, i4, i5, string3, cursor.getInt(i + 8), cursor.getInt(i + 9), cursor.getLong(i + 10), cursor.getLong(i + 11));
    }

    public void readEntity(Cursor cursor, GroupEntity groupEntity, int i) {
        String str = null;
        groupEntity.setId(cursor.isNull(i + 0) ? null : Long.valueOf(cursor.getLong(i + 0)));
        groupEntity.setPeerId(cursor.getInt(i + 1));
        groupEntity.setMainName(cursor.isNull(i + 2) ? null : cursor.getString(i + 2));
        groupEntity.setAvatar(cursor.isNull(i + 3) ? null : cursor.getString(i + 3));
        groupEntity.setGroupType(cursor.getInt(i + 4));
        groupEntity.setCreatorId(cursor.getInt(i + 5));
        groupEntity.setUserCnt(cursor.getInt(i + 6));
        if (!cursor.isNull(i + 7)) {
            str = cursor.getString(i + 7);
        }
        groupEntity.setUserList(str);
        groupEntity.setVersion(cursor.getInt(i + 8));
        groupEntity.setStatus(cursor.getInt(i + 9));
        groupEntity.setCreated(cursor.getLong(i + 10));
        groupEntity.setUpdated(cursor.getLong(i + 11));
    }

    /* access modifiers changed from: protected */
    public final Long updateKeyAfterInsert(GroupEntity groupEntity, long j) {
        groupEntity.setId(Long.valueOf(j));
        return Long.valueOf(j);
    }

    public Long getKey(GroupEntity groupEntity) {
        if (groupEntity != null) {
            return groupEntity.getId();
        }
        return null;
    }

    public boolean hasKey(GroupEntity groupEntity) {
        return groupEntity.getId() != null;
    }

    /* access modifiers changed from: protected */
    public final boolean isEntityUpdateable() {
        return true;
    }
}
