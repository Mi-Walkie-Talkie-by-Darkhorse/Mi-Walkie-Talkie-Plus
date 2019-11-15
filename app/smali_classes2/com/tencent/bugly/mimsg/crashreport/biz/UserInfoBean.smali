.class public Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:J

.field public j:Ljava/lang/String;

.field public k:J

.field public l:Z

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:I

.field public p:I

.field public q:I

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->k:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->l:Z

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->p:I

    iput v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->q:I

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->k:J

    iput-boolean v1, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->l:Z

    const-string v2, "unknown"

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    iput v4, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->p:I

    iput v4, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->q:I

    iput-object v5, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    iput-object v5, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->f:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->q:I

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->o:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->e:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->h:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->p:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->q:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->r:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->s:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/biz/UserInfoBean;->o:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
