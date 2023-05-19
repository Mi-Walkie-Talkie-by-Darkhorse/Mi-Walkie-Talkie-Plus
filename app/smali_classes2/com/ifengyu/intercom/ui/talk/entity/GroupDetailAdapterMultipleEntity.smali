.class public Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;
.super Ljava/lang/Object;
.source "GroupDetailAdapterMultipleEntity.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_MEMBER:I = 0x3e9

.field public static final TYPE_OPERATE_ADD:I = 0x3ea

.field public static final TYPE_OPERATE_REMOVE:I = 0x3eb


# instance fields
.field private isOwner:Z

.field private member:Lcom/shanlitech/et/model/Member;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->type:I

    return-void
.end method

.method public constructor <init>(IZLcom/shanlitech/et/model/Member;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->type:I

    .line 6
    iput-boolean p2, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->isOwner:Z

    .line 7
    iput-object p3, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->member:Lcom/shanlitech/et/model/Member;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->type:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->isOwner:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Member;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->member:Lcom/shanlitech/et/model/Member;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;)I
    .locals 5

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/16 v3, 0x3eb

    const/16 v4, 0x3ea

    if-eq v0, v4, :cond_6

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result v0

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->member:Lcom/shanlitech/et/model/Member;

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 5
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->isOwner:Z

    if-eqz v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget-boolean v0, p1, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->isOwner:Z

    if-eqz v0, :cond_3

    return v2

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result v0

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/model/Member;->getInGroupTimeSecond()I

    move-result v0

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getMember()Lcom/shanlitech/et/model/Member;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shanlitech/et/model/Member;->getInGroupTimeSecond()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v1

    .line 9
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result p1

    if-ne p1, v3, :cond_7

    goto :goto_2

    :cond_7
    return v2

    .line 10
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->getType()I

    move-result p1

    if-ne p1, v4, :cond_9

    return v1

    :cond_9
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->compareTo(Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;)I

    move-result p1

    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMember()Lcom/shanlitech/et/model/Member;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->member:Lcom/shanlitech/et/model/Member;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->type:I

    return v0
.end method

.method public isOwner()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->isOwner:Z

    return v0
.end method

.method public setMember(Lcom/shanlitech/et/model/Member;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->member:Lcom/shanlitech/et/model/Member;

    return-void
.end method

.method public setOwner(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->isOwner:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-boolean p2, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->isOwner:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/ui/talk/entity/GroupDetailAdapterMultipleEntity;->member:Lcom/shanlitech/et/model/Member;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
