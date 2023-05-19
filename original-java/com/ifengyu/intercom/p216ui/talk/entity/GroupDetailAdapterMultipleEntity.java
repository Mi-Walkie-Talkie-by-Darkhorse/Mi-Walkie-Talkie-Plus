package com.ifengyu.intercom.p216ui.talk.entity;

import android.os.Parcel;
import android.os.Parcelable;
import com.shanlitech.p245et.model.Member;

/* renamed from: com.ifengyu.intercom.ui.talk.entity.GroupDetailAdapterMultipleEntity */
/* loaded from: classes2.dex */
public class GroupDetailAdapterMultipleEntity implements Comparable<GroupDetailAdapterMultipleEntity>, Parcelable {
    public static final Parcelable.Creator<GroupDetailAdapterMultipleEntity> CREATOR = new Parcelable.Creator<GroupDetailAdapterMultipleEntity>() { // from class: com.ifengyu.intercom.ui.talk.entity.GroupDetailAdapterMultipleEntity.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GroupDetailAdapterMultipleEntity createFromParcel(Parcel parcel) {
            return new GroupDetailAdapterMultipleEntity(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GroupDetailAdapterMultipleEntity[] newArray(int i) {
            return new GroupDetailAdapterMultipleEntity[i];
        }
    };
    public static final int TYPE_MEMBER = 1001;
    public static final int TYPE_OPERATE_ADD = 1002;
    public static final int TYPE_OPERATE_REMOVE = 1003;
    private boolean isOwner;
    private Member member;
    private int type;

    public GroupDetailAdapterMultipleEntity() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Member getMember() {
        return this.member;
    }

    public int getType() {
        return this.type;
    }

    public boolean isOwner() {
        return this.isOwner;
    }

    public void setMember(Member member) {
        this.member = member;
    }

    public void setOwner(boolean z) {
        this.isOwner = z;
    }

    public void setType(int i) {
        this.type = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.type);
        parcel.writeByte(this.isOwner ? (byte) 1 : (byte) 0);
        parcel.writeSerializable(this.member);
    }

    public GroupDetailAdapterMultipleEntity(int i) {
        this.type = i;
    }

    @Override // java.lang.Comparable
    public int compareTo(GroupDetailAdapterMultipleEntity groupDetailAdapterMultipleEntity) {
        if (getType() == 1002 || getType() == 1003) {
            return ((groupDetailAdapterMultipleEntity.getType() == 1002 || groupDetailAdapterMultipleEntity.getType() == 1003) && getType() == 1002) ? -1 : 1;
        } else if (groupDetailAdapterMultipleEntity.getType() == 1002 || groupDetailAdapterMultipleEntity.getType() == 1003) {
            return -1;
        } else {
            if (this.member != null && groupDetailAdapterMultipleEntity.getMember() != null) {
                if (this.isOwner) {
                    return -1;
                }
                if (groupDetailAdapterMultipleEntity.isOwner) {
                    return 1;
                }
                if (getType() == 1001 && groupDetailAdapterMultipleEntity.getType() == 1001) {
                    return getMember().getInGroupTimeSecond() - groupDetailAdapterMultipleEntity.getMember().getInGroupTimeSecond();
                }
            }
            return 0;
        }
    }

    public GroupDetailAdapterMultipleEntity(int i, boolean z, Member member) {
        this.type = i;
        this.isOwner = z;
        this.member = member;
    }

    protected GroupDetailAdapterMultipleEntity(Parcel parcel) {
        this.type = parcel.readInt();
        this.isOwner = parcel.readByte() != 0;
        this.member = (Member) parcel.readSerializable();
    }
}
