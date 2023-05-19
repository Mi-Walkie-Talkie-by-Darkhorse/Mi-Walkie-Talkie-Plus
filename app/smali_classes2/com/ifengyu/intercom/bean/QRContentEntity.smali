.class public Lcom/ifengyu/intercom/bean/QRContentEntity;
.super Ljava/lang/Object;
.source "QRContentEntity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ifengyu/intercom/bean/QRContentEntity;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_GROUP:I = 0x2

.field public static final TYPE_USER:I = 0x1


# instance fields
.field private cid:J

.field private t:J

.field private typ:I

.field private uid:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/bean/QRContentEntity$1;

    invoke-direct {v0}, Lcom/ifengyu/intercom/bean/QRContentEntity$1;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/bean/QRContentEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->t:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->typ:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->cid:J

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->uid:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->cid:J

    return-wide v0
.end method

.method public getT()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->t:J

    return-wide v0
.end method

.method public getTyp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->typ:I

    return v0
.end method

.method public getUid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->uid:J

    return-wide v0
.end method

.method public setCid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->cid:J

    return-void
.end method

.method public setT(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->t:J

    return-void
.end method

.method public setTyp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->typ:I

    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->uid:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QREntity{t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", typ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->typ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->cid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->t:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget p2, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->typ:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->cid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4
    iget-wide v0, p0, Lcom/ifengyu/intercom/bean/QRContentEntity;->uid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
