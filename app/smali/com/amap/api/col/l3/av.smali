.class public final Lcom/amap/api/col/l3/av;
.super Lcom/amap/api/maps/offlinemap/OfflineMapCity;

# interfaces
.implements Lcom/amap/api/col/l3/be;
.implements Lcom/amap/api/col/l3/bu;


# static fields
.field public static final o:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/col/l3/av;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/amap/api/col/l3/bz;

.field public b:Lcom/amap/api/col/l3/bz;

.field public c:Lcom/amap/api/col/l3/bz;

.field public d:Lcom/amap/api/col/l3/bz;

.field public e:Lcom/amap/api/col/l3/bz;

.field public f:Lcom/amap/api/col/l3/bz;

.field public g:Lcom/amap/api/col/l3/bz;

.field public h:Lcom/amap/api/col/l3/bz;

.field public i:Lcom/amap/api/col/l3/bz;

.field public j:Lcom/amap/api/col/l3/bz;

.field public k:Lcom/amap/api/col/l3/bz;

.field l:Lcom/amap/api/col/l3/bz;

.field m:Landroid/content/Context;

.field n:Z

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amap/api/col/l3/av$2;

    invoke-direct {v0}, Lcom/amap/api/col/l3/av$2;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3/av;->o:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>()V

    new-instance v0, Lcom/amap/api/col/l3/cb;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/cb;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->a:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/ch;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ch;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cd;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/cd;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cf;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/cf;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->d:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cg;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/cg;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->e:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/ca;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ca;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->f:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/ce;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ce;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->g:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cc;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3/cc;-><init>(ILcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->h:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cc;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3/cc;-><init>(ILcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->i:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cc;

    const/16 v1, 0x66

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3/cc;-><init>(ILcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->j:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cc;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3/cc;-><init>(ILcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/av;->n:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/av;->r:J

    iput-object p1, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/amap/api/col/l3/av;->a(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V
    .locals 2

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/amap/api/col/l3/av;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setCity(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setAdcode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setSize(J)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setCode(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getJianpin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setJianpin(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/City;->setPinyin(Ljava/lang/String;)V

    sget-object p1, Lcom/amap/api/col/l3/aw;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip.tmp"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/av;->p:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;-><init>(Landroid/os/Parcel;)V

    new-instance v0, Lcom/amap/api/col/l3/cb;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/cb;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->a:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/ch;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ch;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cd;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/cd;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cf;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/cf;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->d:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cg;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/cg;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->e:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/ca;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ca;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->f:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/ce;

    invoke-direct {v0, p0}, Lcom/amap/api/col/l3/ce;-><init>(Lcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->g:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cc;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3/cc;-><init>(ILcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->h:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cc;

    const/16 v1, 0x65

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3/cc;-><init>(ILcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->i:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cc;

    const/16 v1, 0x66

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3/cc;-><init>(ILcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->j:Lcom/amap/api/col/l3/bz;

    new-instance v0, Lcom/amap/api/col/l3/cc;

    const/16 v1, 0x67

    invoke-direct {v0, v1, p0}, Lcom/amap/api/col/l3/cc;-><init>(ILcom/amap/api/col/l3/av;)V

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/av;->n:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/av;->r:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/col/l3/av;)J
    .locals 2

    iget-wide v0, p0, Lcom/amap/api/col/l3/av;->r:J

    return-wide v0
.end method

.method static synthetic a(Lcom/amap/api/col/l3/av;J)J
    .locals 0

    iput-wide p1, p0, Lcom/amap/api/col/l3/av;->r:J

    return-wide p1
.end method

.method private y()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->p:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private z()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3/av;->y()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    if-gez p1, :cond_8

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->h:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->j:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->i:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->g:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->a:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->f:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->d:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->e:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->h:Lcom/amap/api/col/l3/bz;

    iput-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    :cond_8
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(J)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/col/l3/av;->r:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    long-to-int p2, p1

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p1

    if-le p2, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3/av;->d()V

    :cond_0
    iput-wide v0, p0, Lcom/amap/api/col/l3/av;->r:J

    :cond_1
    return-void
.end method

.method public final a(JJ)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long p3, p3, v0

    div-long/2addr p3, p1

    long-to-int p1, p3

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    move-result p2

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3/av;->d()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/bv$a;)V
    .locals 2

    sget-object v0, Lcom/amap/api/col/l3/av$3;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x6

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3/av;->i:Lcom/amap/api/col/l3/bz;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bz;->b()I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bz;->b()I

    move-result p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3/av;->j:Lcom/amap/api/col/l3/bz;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bz;->b()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/l3/bz;->a(I)V

    return-void
.end method

.method public final a(Lcom/amap/api/col/l3/bz;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {p1}, Lcom/amap/api/col/l3/bz;->b()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    return-void
.end method

.method public final b(I)Lcom/amap/api/col/l3/bz;
    .locals 0

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/amap/api/col/l3/av;->h:Lcom/amap/api/col/l3/bz;

    return-object p1

    :pswitch_0
    iget-object p1, p0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lcom/amap/api/col/l3/av;->j:Lcom/amap/api/col/l3/bz;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lcom/amap/api/col/l3/av;->i:Lcom/amap/api/col/l3/bz;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->e:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amap/api/col/l3/av;->y()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/amap/api/col/l3/av;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "map/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/l3/em;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    :cond_2
    new-instance v2, Lcom/amap/api/col/l3/bn;

    invoke-direct {v2}, Lcom/amap/api/col/l3/bn;-><init>()V

    invoke-static {v3}, Lcom/amap/api/col/l3/bt;->a(Ljava/io/File;)J

    move-result-wide v7

    const-wide/16 v5, -0x1

    new-instance v9, Lcom/amap/api/col/l3/av$1;

    invoke-direct {v9, p0, p1, v3}, Lcom/amap/api/col/l3/av$1;-><init>(Lcom/amap/api/col/l3/av;Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual/range {v2 .. v9}, Lcom/amap/api/col/l3/bn;->a(Ljava/io/File;Ljava/io/File;JJLcom/amap/api/col/l3/bn$a;)J

    return-void

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3/av;->q()V

    return-void
.end method

.method public final c()Lcom/amap/api/col/l3/bz;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/aw;->c(Lcom/amap/api/col/l3/av;)V

    :cond_0
    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/aw;->e(Lcom/amap/api/col/l3/av;)V

    invoke-virtual {p0}, Lcom/amap/api/col/l3/av;->d()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CityOperation current State==>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bz;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->d:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->e()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->f()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->g:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v2, p0, Lcom/amap/api/col/l3/av;->h:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v2, p0, Lcom/amap/api/col/l3/av;->j:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v2, p0, Lcom/amap/api/col/l3/av;->i:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v2, p0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v2}, Lcom/amap/api/col/l3/bz;->b()I

    move-result v2

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->b()I

    move-result v0

    if-ne v2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->c()V

    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->d()V

    return-void

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/aw;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/aw;->a(Lcom/amap/api/col/l3/av;)V

    :cond_7
    iput-boolean v1, p0, Lcom/amap/api/col/l3/av;->n:Z

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->f()V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->k:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bz;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/bz;->a(I)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->a()V

    iget-boolean v0, p0, Lcom/amap/api/col/l3/av;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->c()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3/av;->n:Z

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->f:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->g()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/aw;->b(Lcom/amap/api/col/l3/av;)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/aw;->a(Landroid/content/Context;)Lcom/amap/api/col/l3/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/amap/api/col/l3/aw;->d(Lcom/amap/api/col/l3/av;)V

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/av;->r:J

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->b:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->d()V

    return-void
.end method

.method public final n()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->c:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->h()V

    return-void
.end method

.method public final o()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/av;->e()V

    return-void
.end method

.method public final p()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/col/l3/av;->r:J

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->e:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->d()V

    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->e:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->h:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v1}, Lcom/amap/api/col/l3/bz;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/bz;->a(I)V

    return-void
.end method

.method public final r()V
    .locals 0

    invoke-virtual {p0}, Lcom/amap/api/col/l3/av;->e()V

    return-void
.end method

.method public final s()Lcom/amap/api/col/l3/bg;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3/av;->l:Lcom/amap/api/col/l3/bz;

    invoke-virtual {v0}, Lcom/amap/api/col/l3/bz;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setState(I)V

    new-instance v0, Lcom/amap/api/col/l3/bg;

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->m:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/col/l3/bg;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapCity;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/bg;->a(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "vMapFileNames: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method public final t()Z
    .locals 1

    invoke-static {}, Lcom/amap/api/col/l3/bt;->a()J

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getcompleteCode()I

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    const/4 v0, 0x0

    return v0
.end method

.method public final u()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3/av;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/amap/api/col/l3/av;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/l3/av;->z()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
