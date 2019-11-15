package com.ifengyu.im.DB.entity;

import android.text.TextUtils;
import com.ifengyu.im.imservice.entity.SearchElement;
import com.ifengyu.im.utils.pinyin.PinYin.PinYinElement;

public class UserEntity extends PeerEntity {
    public static final int ITEM_TYPE_ADD = 1;
    public static final int ITEM_TYPE_DELETE = 2;
    public static final int ITEM_TYPE_NORMAL = 0;
    public String avatar;
    public long created;
    public int departmentId;
    public String email;
    public String expires_in;
    public int gender;
    public Long id;
    public int itemType = 0;
    public String key;
    public String mainName;
    public int peerId;
    public String phone;
    public int phoneVerified;
    public PinYinElement pinyinElement = new PinYinElement();
    public String pinyinName;
    public String realName;
    public SearchElement searchElement = new SearchElement();
    public int status;
    public String token;
    public long updated;

    public UserEntity(Long l, int i, String str, String str2, int i2, String str3, String str4, String str5, String str6, int i3, int i4, int i5, String str7, String str8, String str9, long j, long j2) {
        this.id = l;
        this.peerId = i;
        this.mainName = str;
        this.avatar = str2;
        this.gender = i2;
        this.pinyinName = str3;
        this.realName = str4;
        this.phone = str5;
        this.email = str6;
        this.departmentId = i3;
        this.status = i4;
        this.phoneVerified = i5;
        this.key = str7;
        this.token = str8;
        this.expires_in = str9;
        this.created = j;
        this.updated = j2;
    }

    public UserEntity() {
    }

    public Long getId() {
        return this.id;
    }

    public void setId(Long l) {
        this.id = l;
    }

    public int getPeerId() {
        return this.peerId;
    }

    public void setPeerId(int i) {
        this.peerId = i;
    }

    public int getGender() {
        return this.gender;
    }

    public void setGender(int i) {
        this.gender = i;
    }

    public String getMainName() {
        return this.mainName;
    }

    public void setMainName(String str) {
        this.mainName = str;
    }

    public String getPinyinName() {
        return this.pinyinName;
    }

    public void setPinyinName(String str) {
        this.pinyinName = str;
    }

    public String getRealName() {
        return this.realName;
    }

    public void setRealName(String str) {
        this.realName = str;
    }

    public String getAvatar() {
        return this.avatar;
    }

    public void setAvatar(String str) {
        this.avatar = str;
    }

    public String getPhone() {
        return this.phone;
    }

    public void setPhone(String str) {
        this.phone = str;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String str) {
        this.email = str;
    }

    public int getDepartmentId() {
        return this.departmentId;
    }

    public void setDepartmentId(int i) {
        this.departmentId = i;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int i) {
        this.status = i;
    }

    public long getCreated() {
        return this.created;
    }

    public void setCreated(long j) {
        this.created = j;
    }

    public long getUpdated() {
        return this.updated;
    }

    public void setUpdated(long j) {
        this.updated = j;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        UserEntity userEntity = (UserEntity) obj;
        if (this.peerId != userEntity.peerId || this.gender != userEntity.gender || this.departmentId != userEntity.departmentId || this.phoneVerified != userEntity.phoneVerified) {
            return false;
        }
        if (this.mainName != null) {
            if (!this.mainName.equals(userEntity.mainName)) {
                return false;
            }
        } else if (userEntity.mainName != null) {
            return false;
        }
        if (this.avatar != null) {
            if (!this.avatar.equals(userEntity.avatar)) {
                return false;
            }
        } else if (userEntity.avatar != null) {
            return false;
        }
        if (this.pinyinName != null) {
            if (!this.pinyinName.equals(userEntity.pinyinName)) {
                return false;
            }
        } else if (userEntity.pinyinName != null) {
            return false;
        }
        if (this.realName != null) {
            if (!this.realName.equals(userEntity.realName)) {
                return false;
            }
        } else if (userEntity.realName != null) {
            return false;
        }
        if (this.phone != null) {
            if (!this.phone.equals(userEntity.phone)) {
                return false;
            }
        } else if (userEntity.phone != null) {
            return false;
        }
        if (this.email != null) {
            z = this.email.equals(userEntity.email);
        } else if (userEntity.email != null) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        int hashCode = ((this.mainName != null ? this.mainName.hashCode() : 0) + (this.peerId * 31)) * 31;
        if (this.avatar != null) {
            i = this.avatar.hashCode();
        } else {
            i = 0;
        }
        int i6 = (((i + hashCode) * 31) + this.gender) * 31;
        if (this.pinyinName != null) {
            i2 = this.pinyinName.hashCode();
        } else {
            i2 = 0;
        }
        int i7 = (i2 + i6) * 31;
        if (this.realName != null) {
            i3 = this.realName.hashCode();
        } else {
            i3 = 0;
        }
        int i8 = (i3 + i7) * 31;
        if (this.phone != null) {
            i4 = this.phone.hashCode();
        } else {
            i4 = 0;
        }
        int i9 = (i4 + i8) * 31;
        if (this.email != null) {
            i5 = this.email.hashCode();
        }
        return ((((i9 + i5) * 31) + this.departmentId) * 31) + this.phoneVerified;
    }

    public String toString() {
        return "UserEntity{id=" + this.id + ", peerId=" + this.peerId + ", gender=" + this.gender + ", mainName='" + this.mainName + '\'' + ", pinyinName='" + this.pinyinName + '\'' + ", realName='" + this.realName + '\'' + ", avatar='" + this.avatar + '\'' + ", phone='" + this.phone + '\'' + ", email='" + this.email + '\'' + ", departmentId=" + this.departmentId + ", status=" + this.status + ", created=" + this.created + ", updated=" + this.updated + ", pinyinElement=" + this.pinyinElement + ", searchElement=" + this.searchElement + '}';
    }

    public PinYinElement getPinyinElement() {
        return this.pinyinElement;
    }

    public SearchElement getSearchElement() {
        return this.searchElement;
    }

    public String getSectionName() {
        if (TextUtils.isEmpty(this.pinyinElement.pinyin)) {
            return "";
        }
        return this.pinyinElement.pinyin.substring(0, 1);
    }

    public int getType() {
        return 1;
    }

    public int getPhoneVerified() {
        return this.phoneVerified;
    }

    public void setPhoneVerified(int i) {
        this.phoneVerified = i;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public String getToken() {
        return this.token;
    }

    public void setToken(String str) {
        this.token = str;
    }

    public String getExpires_in() {
        return this.expires_in;
    }

    public void setExpires_in(String str) {
        this.expires_in = str;
    }

    public int getItemType() {
        return this.itemType;
    }

    public void setItemType(int i) {
        this.itemType = i;
    }
}
