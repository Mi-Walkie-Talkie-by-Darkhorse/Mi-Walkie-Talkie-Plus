package com.ifengyu.im.DB.dao;

import com.ifengyu.im.DB.entity.DepartmentEntity;
import com.ifengyu.im.DB.entity.GroupEntity;
import com.ifengyu.im.DB.entity.UserEntity;
import com.ifengyu.im.imservice.model.MessageEntity;
import com.ifengyu.im.imservice.model.SessionEntity;
import java.util.Map;
import org.greenrobot.greendao.b.a;
import org.greenrobot.greendao.c;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

public class DaoSession extends c {
    private final DepartmentEntityDao departmentEntityDao = new DepartmentEntityDao(this.departmentEntityDaoConfig, this);
    private final a departmentEntityDaoConfig;
    private final GroupEntityDao groupEntityDao = new GroupEntityDao(this.groupEntityDaoConfig, this);
    private final a groupEntityDaoConfig;
    private final MessageEntityDao messageEntityDao = new MessageEntityDao(this.messageEntityDaoConfig, this);
    private final a messageEntityDaoConfig;
    private final SessionEntityDao sessionEntityDao = new SessionEntityDao(this.sessionEntityDaoConfig, this);
    private final a sessionEntityDaoConfig;
    private final UserEntityDao userEntityDao = new UserEntityDao(this.userEntityDaoConfig, this);
    private final a userEntityDaoConfig;

    public DaoSession(org.greenrobot.greendao.a.a aVar, IdentityScopeType identityScopeType, Map<Class<? extends org.greenrobot.greendao.a<?, ?>>, a> map) {
        super(aVar);
        this.departmentEntityDaoConfig = ((a) map.get(DepartmentEntityDao.class)).clone();
        this.departmentEntityDaoConfig.a(identityScopeType);
        this.groupEntityDaoConfig = ((a) map.get(GroupEntityDao.class)).clone();
        this.groupEntityDaoConfig.a(identityScopeType);
        this.userEntityDaoConfig = ((a) map.get(UserEntityDao.class)).clone();
        this.userEntityDaoConfig.a(identityScopeType);
        this.messageEntityDaoConfig = ((a) map.get(MessageEntityDao.class)).clone();
        this.messageEntityDaoConfig.a(identityScopeType);
        this.sessionEntityDaoConfig = ((a) map.get(SessionEntityDao.class)).clone();
        this.sessionEntityDaoConfig.a(identityScopeType);
        registerDao(DepartmentEntity.class, this.departmentEntityDao);
        registerDao(GroupEntity.class, this.groupEntityDao);
        registerDao(UserEntity.class, this.userEntityDao);
        registerDao(MessageEntity.class, this.messageEntityDao);
        registerDao(SessionEntity.class, this.sessionEntityDao);
    }

    public void clear() {
        this.departmentEntityDaoConfig.c();
        this.groupEntityDaoConfig.c();
        this.userEntityDaoConfig.c();
        this.messageEntityDaoConfig.c();
        this.sessionEntityDaoConfig.c();
    }

    public DepartmentEntityDao getDepartmentEntityDao() {
        return this.departmentEntityDao;
    }

    public GroupEntityDao getGroupEntityDao() {
        return this.groupEntityDao;
    }

    public UserEntityDao getUserEntityDao() {
        return this.userEntityDao;
    }

    public MessageEntityDao getMessageEntityDao() {
        return this.messageEntityDao;
    }

    public SessionEntityDao getSessionEntityDao() {
        return this.sessionEntityDao;
    }
}
