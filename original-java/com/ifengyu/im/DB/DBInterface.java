package com.ifengyu.im.DB;

import android.content.Context;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.DB.dao.DaoMaster;
import com.ifengyu.im.DB.dao.DaoMaster.DevOpenHelper;
import com.ifengyu.im.DB.dao.DaoSession;
import com.ifengyu.im.DB.dao.GroupEntityDao;
import com.ifengyu.im.DB.dao.MessageEntityDao;
import com.ifengyu.im.DB.dao.SessionEntityDao;
import com.ifengyu.im.DB.dao.UserEntityDao;
import com.ifengyu.im.DB.dao.UserEntityDao.Properties;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.model.SessionEntity;
import com.ifengyu.im.utils.Logger;
import java.util.List;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.c.i;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

public class DBInterface {
    private static DBInterface dbInterface = null;
    private Context context = null;
    private Logger logger = Logger.getLogger(DBInterface.class);
    private int loginUserId = 0;
    private DaoSession mReadDaoSession;
    private DaoSession mWriteDaoSession;
    private DevOpenHelper openHelper;

    public static DBInterface instance() {
        if (dbInterface == null) {
            synchronized (DBInterface.class) {
                if (dbInterface == null) {
                    dbInterface = new DBInterface();
                }
            }
        }
        return dbInterface;
    }

    private DBInterface() {
    }

    public void close() {
        if (this.openHelper != null) {
            this.openHelper.close();
            this.openHelper = null;
            this.context = null;
            this.loginUserId = 0;
        }
    }

    public void initDbHelp(Context context2, int i) {
        if (context2 == null || i <= 0) {
            throw new RuntimeException("#DBInterface# init DB exception!");
        } else if (this.context != context2 || this.loginUserId != i) {
            this.context = context2;
            this.loginUserId = i;
            close();
            this.logger.i("DB init,loginId:%d", Integer.valueOf(i));
            DevOpenHelper devOpenHelper = new DevOpenHelper(context2, "tt_" + i + ".db", null);
            this.openHelper = devOpenHelper;
            this.mReadDaoSession = initReadableDb(devOpenHelper);
            this.mWriteDaoSession = initWritableDb(devOpenHelper);
        }
    }

    private DaoSession initReadableDb(DevOpenHelper devOpenHelper) {
        return new DaoMaster(devOpenHelper.getReadableDb()).newSession(IdentityScopeType.None);
    }

    private DaoSession initWritableDb(DevOpenHelper devOpenHelper) {
        return new DaoMaster(devOpenHelper.getWritableDb()).newSession(IdentityScopeType.None);
    }

    private DaoSession openReadableDb() {
        isInitOk();
        return this.mReadDaoSession;
    }

    private DaoSession openWritableDb() {
        isInitOk();
        return this.mWriteDaoSession;
    }

    private void isInitOk() {
        if (this.openHelper == null || this.mReadDaoSession == null || this.mWriteDaoSession == null) {
            this.logger.e("DBInterface#isInit not success or start,cause by openHelper is null", new Object[0]);
            throw new RuntimeException("DBInterface#isInit not success or start,cause by openHelper is null");
        }
    }

    public List<UserEntity> loadAllUsers() {
        return openReadableDb().getUserEntityDao().loadAll();
    }

    public UserEntity getByUserName(String str) {
        return (UserEntity) openReadableDb().getUserEntityDao().queryBuilder().a(Properties.PinyinName.a(str), new i[0]).d();
    }

    public UserEntity getByLoginId(int i) {
        return (UserEntity) openReadableDb().getUserEntityDao().queryBuilder().a(Properties.PeerId.a(Integer.valueOf(i)), new i[0]).d();
    }

    public void insertOrUpdateUser(UserEntity userEntity) {
        UserEntityDao userEntityDao = openWritableDb().getUserEntityDao();
        List c = userEntityDao.queryBuilder().a(Properties.PeerId.a(Integer.valueOf(userEntity.getPeerId())), new i[0]).c();
        if (c.size() == 0) {
            userEntityDao.insertOrReplace(userEntity);
        } else if (c.size() == 1) {
            userEntity.setId(((UserEntity) c.get(0)).getId());
            userEntityDao.insertOrReplace(userEntity);
        } else {
            userEntityDao.deleteInTx((Iterable) c);
            userEntityDao.insertOrReplace(userEntity);
        }
    }

    public void batchInsertOrUpdateUser(List<UserEntity> list) {
        if (list.size() > 0) {
            UserEntityDao userEntityDao = openWritableDb().getUserEntityDao();
            userEntityDao.insertOrReplaceInTx((Iterable) list);
            for (UserEntity userEntity : list) {
                List c = userEntityDao.queryBuilder().a(Properties.PeerId.a(Integer.valueOf(userEntity.getPeerId())), new i[0]).c();
                if (c.size() == 0) {
                    userEntityDao.insertOrReplace(userEntity);
                } else if (c.size() == 1) {
                    userEntity.setId(((UserEntity) c.get(0)).getId());
                    userEntityDao.insertOrReplace(userEntity);
                } else {
                    userEntityDao.deleteInTx((Iterable) c);
                    userEntityDao.insertOrReplace(userEntity);
                }
            }
        }
    }

    public int getUserInfoLastTime() {
        UserEntity userEntity = (UserEntity) openReadableDb().getUserEntityDao().queryBuilder().b(Properties.Updated).a(1).d();
        if (userEntity == null) {
            return 0;
        }
        return (int) userEntity.getUpdated();
    }

    public List<GroupEntity> loadAllGroup() {
        return openReadableDb().getGroupEntityDao().loadAll();
    }

    public long insertOrUpdateGroup(GroupEntity groupEntity) {
        GroupEntityDao groupEntityDao = openWritableDb().getGroupEntityDao();
        List c = groupEntityDao.queryBuilder().a(GroupEntityDao.Properties.PeerId.a(Integer.valueOf(groupEntity.getPeerId())), new i[0]).c();
        if (c.size() == 0) {
            return groupEntityDao.insertOrReplace(groupEntity);
        }
        if (c.size() == 1) {
            groupEntity.setId(((GroupEntity) c.get(0)).getId());
            return groupEntityDao.insertOrReplace(groupEntity);
        }
        groupEntityDao.deleteInTx((Iterable) c);
        return groupEntityDao.insertOrReplace(groupEntity);
    }

    public void batchInsertOrUpdateGroup(List<GroupEntity> list) {
        if (list.size() > 0) {
            GroupEntityDao groupEntityDao = openWritableDb().getGroupEntityDao();
            for (GroupEntity groupEntity : list) {
                List c = groupEntityDao.queryBuilder().a(GroupEntityDao.Properties.PeerId.a(Integer.valueOf(groupEntity.getPeerId())), new i[0]).c();
                if (c.size() == 0) {
                    groupEntityDao.insertOrReplace(groupEntity);
                } else if (c.size() == 1) {
                    groupEntity.setId(((GroupEntity) c.get(0)).getId());
                    groupEntityDao.insertOrReplace(groupEntity);
                } else {
                    groupEntityDao.deleteInTx((Iterable) c);
                    groupEntityDao.insertOrReplace(groupEntity);
                }
            }
        }
    }

    public void deleteGroupByGroupId(int i) {
        openWritableDb().getGroupEntityDao().queryBuilder().a(GroupEntityDao.Properties.PeerId.a(Integer.valueOf(i)), new i[0]).b().b();
    }

    public List<SessionEntity> loadAllSession() {
        return openReadableDb().getSessionEntityDao().queryBuilder().b(SessionEntityDao.Properties.Time).c();
    }

    public void batchInsertOrUpdateSession(List<SessionEntity> list) {
        if (list.size() > 0) {
            openWritableDb().getSessionEntityDao().insertOrReplaceInTx((Iterable) list);
        }
    }

    public void deleteSession(String str) {
        openWritableDb().getSessionEntityDao().queryBuilder().a(SessionEntityDao.Properties.SessionKey.a(str), new i[0]).b().b();
    }

    public long insertOrUpdateMessage(MessageEntity messageEntity) {
        return openWritableDb().getMessageEntityDao().insertOrReplace(messageEntity);
    }

    public MessageEntity getMessageByMsgId(long j, String str, String str2, int i) {
        try {
            return (MessageEntity) openReadableDb().getMessageEntityDao().queryBuilder().a(MessageEntityDao.Properties.MsgId.a(Long.valueOf(j)), MessageEntityDao.Properties.FromId.a(str), MessageEntityDao.Properties.ToId.a(str2), MessageEntityDao.Properties.MsgType.a(Integer.valueOf(i))).d();
        } catch (DaoException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }

    public List<MessageEntity> getHistoryMsg(int i, String str, long j, int i2) {
        return openReadableDb().getMessageEntityDao().queryBuilder().a(MessageEntityDao.Properties.SessionType.a(Integer.valueOf(i)), MessageEntityDao.Properties.ToId.a(str), MessageEntityDao.Properties.Time.c(Long.valueOf(j))).b(MessageEntityDao.Properties.Time).a(i2).c();
    }

    public List<MessageEntity> getAllSystemMsg() {
        return openReadableDb().getMessageEntityDao().queryBuilder().a(MessageEntityDao.Properties.SessionType.a(Integer.valueOf(1)), MessageEntityDao.Properties.FromId.a("1"), MessageEntityDao.Properties.MsgType.a(Integer.valueOf(0))).b(MessageEntityDao.Properties.Time).c();
    }

    public MessageEntity queryMessageByContent(String str, String str2, String str3, int i) {
        try {
            return (MessageEntity) openReadableDb().getMessageEntityDao().queryBuilder().a(MessageEntityDao.Properties.FromId.a(str2), MessageEntityDao.Properties.Content.a(str), MessageEntityDao.Properties.ToId.a(str3), MessageEntityDao.Properties.MsgType.a(Integer.valueOf(i))).d();
        } catch (DaoException e) {
            ThrowableExtension.printStackTrace(e);
            return null;
        }
    }
}
