.class public Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;
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
            "Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# instance fields
.field public e:J

.field public f:J

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:J

.field public q:J

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/util/Map;
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

.field public w:I

.field public x:J

.field public y:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://rqd.uu.qq.com/rqd/sync"

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    const-string v0, "http://android.bugly.qq.com/rqd/async"

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    const-string v0, "http://android.bugly.qq.com/rqd/async"

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->e:J

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->f:J

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->h:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->i:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    iput-boolean v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->k:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->l:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->m:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->n:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->o:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->q:J

    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->w:I

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->x:J

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->y:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->f:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "S(@L@L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v1, "*^@K#K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const-wide/16 v4, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->e:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->f:J

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->h:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->i:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    iput-boolean v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->k:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->l:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->m:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->n:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->o:Z

    const-wide/16 v2, 0x7530

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->q:J

    sget-object v2, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    sget-object v2, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    sget-object v2, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->t:Ljava/lang/String;

    const/16 v2, 0xa

    iput v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->w:I

    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->x:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->y:J

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "S(@L@L"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "@)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->f:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_1
    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_2

    move v2, v0

    :goto_2
    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->i:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->v:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_3

    move v2, v0

    :goto_3
    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_4

    move v2, v0

    :goto_4
    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_5

    move v2, v0

    :goto_5
    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->n:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_6

    move v2, v0

    :goto_6
    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->o:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->q:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_7

    move v2, v0

    :goto_7
    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->l:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v0, :cond_8

    :goto_8
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->m:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->p:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->w:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->x:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->y:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    return-void

    :cond_0
    move v2, v1

    goto/16 :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5

    :cond_6
    move v2, v1

    goto :goto_6

    :cond_7
    move v2, v1

    goto :goto_7

    :cond_8
    move v0, v1

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_9
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->f:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->h:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->i:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->v:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->j:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->k:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->n:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->o:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->q:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->l:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->m:Z

    if-eqz v0, :cond_8

    :goto_8
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->p:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->w:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->x:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/strategy/StrategyBean;->y:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v1, v2

    goto :goto_8
.end method
