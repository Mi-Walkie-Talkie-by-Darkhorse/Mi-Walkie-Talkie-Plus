.class public Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:J

.field public C:J

.field public D:J

.field public E:J

.field public F:J

.field public G:J

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:J

.field public M:Z

.field public N:Ljava/util/Map;
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

.field public O:I

.field public P:I

.field public Q:Ljava/util/Map;
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

.field public R:Ljava/util/Map;
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

.field public S:[B

.field public T:Ljava/lang/String;

.field public U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/mimsg/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/mimsg/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field public l:I

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:[B

.field public y:Ljava/util/Map;
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

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean$1;

    invoke-direct {v0}, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean$1;-><init>()V

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->a:J

    iput v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iput-boolean v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->j:Z

    iput-boolean v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->k:Z

    iput v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    iput v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->t:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->B:J

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->C:J

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->D:J

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->E:J

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->F:J

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->G:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->L:J

    iput-boolean v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->M:Z

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    iput v5, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->O:I

    iput v5, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->P:I

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->S:[B

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x1

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->a:J

    iput v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->b:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->j:Z

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->k:Z

    iput v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->l:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->t:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->B:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->C:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->D:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->E:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->F:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->G:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->L:J

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->M:Z

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    iput v6, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->O:I

    iput v6, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->P:I

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->S:[B

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    iput-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->d:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->j:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->k:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->B:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->L:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->M:Z

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->O:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->P:I

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->S:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 6

    const-wide/16 v4, 0x0

    check-cast p1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    iget-wide v2, p1, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v4

    if-gtz v2, :cond_1

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->d:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->j:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->k:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->p:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->q:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->r:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->t:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->u:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->y:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->z:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->B:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->C:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->D:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->E:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->F:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->G:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->H:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->V:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->I:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->J:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->K:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->L:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->M:Z

    if-eqz v0, :cond_3

    :goto_3
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->N:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->h:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->i:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/os/Parcel;Ljava/util/Map;)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->O:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->P:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->Q:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->R:Ljava/util/Map;

    invoke-static {p1, v0}, Lcom/tencent/bugly/mimsg/proguard/z;->b(Landroid/os/Parcel;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->S:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->x:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->T:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/crash/CrashDetailBean;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto/16 :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method
