.class public final Lcom/amap/api/col/l3/lf;
.super Ljava/lang/Object;
.source "Req.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static K:Ljava/lang/String;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/kz;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/col/l3/kx;",
            ">;"
        }
    .end annotation
.end field

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:[B

.field public L:Ljava/lang/String;

.field private M:[B

.field private N:I

.field public a:Ljava/lang/String;

.field public b:S

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1"

    iput-object v0, p0, Lcom/amap/api/col/l3/lf;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/amap/api/col/l3/lf;->b:S

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->o:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->q:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->u:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->x:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->y:Ljava/lang/String;

    iput v0, p0, Lcom/amap/api/col/l3/lf;->z:I

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->B:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/lf;->C:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->D:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->E:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/lf;->F:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/col/l3/lf;->G:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->H:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->I:Ljava/lang/String;

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->J:[B

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->M:[B

    iput v0, p0, Lcom/amap/api/col/l3/lf;->N:I

    iput-object v1, p0, Lcom/amap/api/col/l3/lf;->L:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/lf;->B:Ljava/lang/String;

    const-string v1, "\\*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p2, v0, p2

    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "lac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    aget-object p1, p2, p1

    return-object p1

    :cond_0
    const-string v0, "cellid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    aget-object p1, p2, p1

    return-object p1

    :cond_1
    const-string v0, "signal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    aget-object p1, p2, p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)[B
    .locals 6

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-array v2, v1, [B

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    array-length v4, v0

    if-eq v4, v1, :cond_1

    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    const-string v5, "0"

    aput-object v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_3

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    aget-object v4, v0, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    :cond_2
    aget-object v4, v0, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getMacBa "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Req"

    invoke-static {v0, v1, p1}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "00:00:00:00:00:00"

    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/lf;->a(Ljava/lang/String;)[B

    move-result-object v2

    :cond_3
    return-object v2
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/lf;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "0"

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3/lf;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/col/l3/lf;->A:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/col/l3/lf;->A:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZLcom/amap/api/col/l3/la;Lcom/amap/api/col/l3/lb;Landroid/net/ConnectivityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3/fw;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/amap/api/col/l3/lj;->f()I

    move-result v4

    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->L:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string v0, "UC_nlp_20131029"

    const-string v5, "BKZCHMBBSSUK7U8GLUKHBB56CCFF78U"

    goto :goto_0

    :cond_0
    const-string v0, "api_serverSDK_130905"

    const-string v5, "S128DF1572465B890OE3F7A13167KLEI"

    :goto_0
    move-object v6, v5

    move-object v5, v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v2, Lcom/amap/api/col/l3/la;->a:I

    and-int/lit8 v10, v9, 0x3

    iget-object v11, v2, Lcom/amap/api/col/l3/la;->c:Landroid/telephony/TelephonyManager;

    iget-object v12, v2, Lcom/amap/api/col/l3/la;->b:Ljava/util/ArrayList;

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/col/l3/la;->a()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3/lb;->a()Ljava/util/ArrayList;

    move-result-object v14

    const-string v15, "1"

    const/4 v2, 0x2

    move-object/from16 p3, v15

    const-string v15, "0"

    if-ne v10, v2, :cond_1

    move-object/from16 v16, p3

    goto :goto_1

    :cond_1
    move-object/from16 v16, v15

    :goto_1
    const-string v2, "APS"

    if-eqz v11, :cond_5

    sget-object v0, Lcom/amap/api/col/l3/lg;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3/gb;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/lg;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v17, v4

    const-string v4, "getApsReq part4"

    invoke-static {v0, v2, v4}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    :goto_2
    move/from16 v17, v4

    :goto_3
    sget-object v0, Lcom/amap/api/col/l3/lg;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v4, "888888888888888"

    if-eqz v0, :cond_3

    sput-object v4, Lcom/amap/api/col/l3/lg;->d:Ljava/lang/String;

    :cond_3
    sget-object v0, Lcom/amap/api/col/l3/lg;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_1
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/lg;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v18, v3

    const-string v3, "getApsReq part2"

    invoke-static {v0, v2, v3}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    :cond_4
    :goto_4
    move-object/from16 v18, v3

    :goto_5
    sget-object v0, Lcom/amap/api/col/l3/lg;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    sput-object v4, Lcom/amap/api/col/l3/lg;->e:Ljava/lang/String;

    goto :goto_6

    :cond_5
    move-object/from16 v18, v3

    move/from16 v17, v4

    :cond_6
    :goto_6
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v4, v0

    const-string v0, "getApsReq part"

    invoke-static {v4, v2, v0}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7
    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3/lb;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/lb;->a(Landroid/net/wifi/WifiInfo;)Z

    move-result v4

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->a(Landroid/net/NetworkInfo;)I

    move-result v0

    const/4 v3, -0x1

    move-object/from16 v19, v15

    const-string v15, ""

    if-eq v0, v3, :cond_8

    invoke-static {v11}, Lcom/amap/api/col/l3/lj;->b(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_7

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3/lb;->e()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "2"

    goto :goto_8

    :cond_7
    move-object/from16 v3, p3

    goto :goto_8

    :cond_8
    move-object v0, v15

    move-object v3, v0

    :goto_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    move-object/from16 p3, v3

    const-string v3, "*"

    move-object/from16 p6, v0

    const-string v0, ","

    move-object/from16 v20, v15

    if-nez v11, :cond_e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "</signal>"

    move-object/from16 v21, v6

    const-string v6, "<signal>"

    move-object/from16 v22, v5

    const-string v5, "</mcc>"

    move-object/from16 v23, v14

    const-string v14, "<mcc>"

    move-object/from16 v24, v2

    const/4 v2, 0x1

    if-eq v10, v2, :cond_b

    const/4 v2, 0x2

    if-eq v10, v2, :cond_9

    move-object/from16 v25, v8

    move-object/from16 v2, v20

    goto/16 :goto_a

    :cond_9
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/col/l3/kz;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    invoke-virtual {v11, v2, v12}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->a:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<sid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->g:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</sid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<nid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->h:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</nid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<bid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->i:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</bid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->f:I

    if-lez v2, :cond_a

    iget v2, v10, Lcom/amap/api/col/l3/kz;->e:I

    if-lez v2, :cond_a

    const-string v2, "<lon>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->f:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</lon>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<lat>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->e:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</lat>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->j:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v8

    goto/16 :goto_a

    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/api/col/l3/kz;

    move-object/from16 v25, v8

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v11, v2, v8}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->a:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<mnc>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->b:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</mnc>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<lac>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->c:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</lac>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "<cellid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->d:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "</cellid>"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v10, Lcom/amap/api/col/l3/kz;->j:I

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    :goto_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_d

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/api/col/l3/kz;

    iget v8, v6, Lcom/amap/api/col/l3/kz;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/amap/api/col/l3/kz;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v6, Lcom/amap/api/col/l3/kz;->j:I

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    if-ge v5, v6, :cond_c

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_d
    :goto_a
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v11, v6, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_e
    move-object/from16 v24, v2

    move-object/from16 v22, v5

    move-object/from16 v21, v6

    move-object/from16 v25, v8

    move-object/from16 v23, v14

    move-object/from16 v2, v20

    :goto_b
    and-int/lit8 v5, v9, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_f

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    iget-object v5, v1, Lcom/amap/api/col/l3/lf;->C:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v1, Lcom/amap/api/col/l3/lf;->C:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_c

    :cond_f
    iget-object v5, v1, Lcom/amap/api/col/l3/lf;->C:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :goto_c
    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3/lb;->e()Z

    move-result v5

    if-eqz v5, :cond_14

    if-eqz v4, :cond_13

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3/lb;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v25

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3/lb;->f()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    const/16 v6, -0x80

    if-ge v4, v6, :cond_10

    :goto_d
    const/4 v4, 0x0

    goto :goto_e

    :cond_10
    const/16 v6, 0x7f

    if-le v4, v6, :cond_11

    goto :goto_d

    :cond_11
    :goto_e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x20

    :try_start_3
    invoke-virtual/range {v24 .. v24}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    const-string v8, "UTF-8"

    invoke-virtual {v6, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v6, v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_f

    :catch_1
    const/16 v6, 0x20

    :goto_f
    if-lt v6, v4, :cond_12

    const-string v0, "unkwn"

    :cond_12
    const-string v4, "."

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_13
    move-object/from16 v5, v25

    :goto_10
    if-eqz v23, :cond_15

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->F:Ljava/util/ArrayList;

    move-object/from16 v3, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_11

    :cond_14
    move-object/from16 v5, v25

    invoke-virtual/range {p5 .. p5}, Lcom/amap/api/col/l3/lb;->b()V

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_15
    :goto_11
    if-nez p2, :cond_16

    const/4 v3, 0x2

    iput-short v3, v1, Lcom/amap/api/col/l3/lf;->b:S

    goto :goto_12

    :cond_16
    const/4 v0, 0x0

    iput-short v0, v1, Lcom/amap/api/col/l3/lf;->b:S

    :goto_12
    move-object/from16 v3, v22

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->c:Ljava/lang/String;

    move-object/from16 v3, v21

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->d:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/col/l3/lj;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "android"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/amap/api/col/l3/lj;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->g:Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3/lj;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->h:Ljava/lang/String;

    move-object/from16 v15, v16

    iput-object v15, v1, Lcom/amap/api/col/l3/lf;->i:Ljava/lang/String;

    move-object/from16 v3, v19

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->j:Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->k:Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->l:Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->m:Ljava/lang/String;

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->n:Ljava/lang/String;

    move-object/from16 v3, v18

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->o:Ljava/lang/String;

    sget-object v0, Lcom/amap/api/col/l3/lg;->d:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->p:Ljava/lang/String;

    sget-object v0, Lcom/amap/api/col/l3/lg;->e:Ljava/lang/String;

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->q:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->s:Ljava/lang/String;

    move-object/from16 v3, p7

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->t:Ljava/lang/String;

    const-string v0, "3.6.0"

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->v:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/amap/api/col/l3/lf;->w:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->u:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->x:Ljava/lang/String;

    move-object/from16 v15, p3

    iput-object v15, v1, Lcom/amap/api/col/l3/lf;->y:Ljava/lang/String;

    iput v9, v1, Lcom/amap/api/col/l3/lf;->z:I

    iput-object v2, v1, Lcom/amap/api/col/l3/lf;->A:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->B:Ljava/lang/String;

    invoke-virtual/range {p4 .. p4}, Lcom/amap/api/col/l3/la;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->D:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/col/l3/lb;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->H:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->E:Ljava/lang/String;

    :try_start_4
    sget-object v0, Lcom/amap/api/col/l3/lf;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static/range {p1 .. p1}, Lcom/amap/api/col/l3/gb;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3/lf;->K:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_17
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v7, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {v5, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a()[B
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "buildV4Dot212"

    const-string v3, "Req"

    const-string v4, "GBK"

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v5, ""

    if-eqz v0, :cond_0

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->d:Ljava/lang/String;

    :cond_2
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->e:Ljava/lang/String;

    :cond_3
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->f:Ljava/lang/String;

    :cond_4
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->g:Ljava/lang/String;

    :cond_5
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->h:Ljava/lang/String;

    :cond_6
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->i:Ljava/lang/String;

    :cond_7
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v6, "2"

    const-string v7, "1"

    const-string v8, "0"

    if-eqz v0, :cond_8

    :goto_0
    iput-object v8, v1, Lcom/amap/api/col/l3/lf;->j:Ljava/lang/String;

    goto :goto_1

    :cond_8
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->j:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->j:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_2
    iput-object v8, v1, Lcom/amap/api/col/l3/lf;->k:Ljava/lang/String;

    goto :goto_3

    :cond_a
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->k:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->k:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2

    :cond_b
    :goto_3
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->l:Ljava/lang/String;

    :cond_c
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->m:Ljava/lang/String;

    :cond_d
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->n:Ljava/lang/String;

    :cond_e
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->o:Ljava/lang/String;

    :cond_f
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->p:Ljava/lang/String;

    :cond_10
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->q:Ljava/lang/String;

    :cond_11
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->r:Ljava/lang/String;

    :cond_12
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->s:Ljava/lang/String;

    :cond_13
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->t:Ljava/lang/String;

    :cond_14
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->u:Ljava/lang/String;

    :cond_15
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->v:Ljava/lang/String;

    :cond_16
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->w:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->w:Ljava/lang/String;

    :cond_17
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->x:Ljava/lang/String;

    :cond_18
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    :goto_4
    iput-object v8, v1, Lcom/amap/api/col/l3/lf;->y:Ljava/lang/String;

    goto :goto_5

    :cond_19
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->y:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->y:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_4

    :cond_1a
    :goto_5
    iget v0, v1, Lcom/amap/api/col/l3/lf;->z:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v0, :cond_1c

    const/16 v9, 0xf

    if-le v0, v9, :cond_1b

    goto :goto_6

    :cond_1b
    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    :goto_6
    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_1d

    iput v7, v1, Lcom/amap/api/col/l3/lf;->z:I

    :cond_1d
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->A:Ljava/lang/String;

    :cond_1e
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->B:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->B:Ljava/lang/String;

    :cond_1f
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->E:Ljava/lang/String;

    :cond_20
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->H:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->H:Ljava/lang/String;

    :cond_21
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    iput-object v5, v1, Lcom/amap/api/col/l3/lf;->I:Ljava/lang/String;

    :cond_22
    sget-object v0, Lcom/amap/api/col/l3/lf;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    sput-object v5, Lcom/amap/api/col/l3/lf;->K:Ljava/lang/String;

    :cond_23
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->J:[B

    if-nez v0, :cond_24

    new-array v0, v7, [B

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->J:[B

    :cond_24
    const/4 v5, 0x2

    new-array v9, v5, [B

    const/4 v10, 0x4

    new-array v11, v10, [B

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->J:[B

    const/16 v12, 0x1000

    if-eqz v0, :cond_25

    array-length v0, v0

    add-int/2addr v0, v6

    add-int/2addr v12, v0

    :cond_25
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->M:[B

    if-eqz v0, :cond_26

    iget v13, v1, Lcom/amap/api/col/l3/lf;->N:I

    if-le v12, v13, :cond_27

    :cond_26
    new-array v0, v12, [B

    iput-object v0, v1, Lcom/amap/api/col/l3/lf;->M:[B

    iput v12, v1, Lcom/amap/api/col/l3/lf;->N:I

    :cond_27
    move-object v12, v0

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v12, v7

    iget-short v0, v1, Lcom/amap/api/col/l3/lf;->b:S

    const/4 v13, 0x0

    invoke-static {v0, v13}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v0

    array-length v14, v0

    invoke-static {v0, v7, v12, v6, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/lit8 v14, v0, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->c:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v14, v0

    goto :goto_8

    :catchall_0
    move-exception v0

    const-string v15, "buildV4Dot2"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_8
    :try_start_1
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v14, v0

    goto :goto_9

    :catchall_1
    move-exception v0

    const-string v15, "buildV4Dot21"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_9
    :try_start_2
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->o:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/2addr v14, v0

    goto :goto_a

    :catchall_2
    move-exception v0

    const-string v15, "buildV4Dot22"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_a
    :try_start_3
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    add-int/2addr v14, v0

    goto :goto_b

    :catchall_3
    move-exception v0

    const-string v15, "buildV4Dot23"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_b
    :try_start_4
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->f:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    add-int/2addr v14, v0

    goto :goto_c

    :catchall_4
    move-exception v0

    const-string v15, "buildV4Dot24"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_c
    :try_start_5
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->g:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    add-int/2addr v14, v0

    goto :goto_d

    :catchall_5
    move-exception v0

    const-string v15, "buildV4Dot25"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_d
    :try_start_6
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->u:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    add-int/2addr v14, v0

    goto :goto_e

    :catchall_6
    move-exception v0

    const-string v15, "buildV4Dot26"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_e
    :try_start_7
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    add-int/2addr v14, v0

    goto :goto_f

    :catchall_7
    move-exception v0

    const-string v15, "buildV4Dot27"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_f
    :try_start_8
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->p:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    add-int/2addr v14, v0

    goto :goto_10

    :catchall_8
    move-exception v0

    const-string v15, "buildV4Dot28"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_10
    :try_start_9
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->q:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    add-int/2addr v14, v0

    goto :goto_11

    :catchall_9
    move-exception v0

    const-string v15, "buildV4Dot29"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_11
    :try_start_a
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    aput-byte v7, v12, v14

    goto :goto_12

    :cond_28
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->t:Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    add-int/2addr v14, v0

    goto :goto_13

    :catchall_a
    move-exception v0

    const-string v15, "buildV4Dot219"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    :goto_12
    add-int/2addr v14, v6

    :goto_13
    :try_start_b
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->v:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    add-int/2addr v14, v0

    goto :goto_14

    :catchall_b
    move-exception v0

    const-string v15, "buildV4Dot211"

    invoke-static {v0, v3, v15}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_14
    :try_start_c
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->w:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    add-int/2addr v14, v0

    goto :goto_15

    :catchall_c
    move-exception v0

    invoke-static {v0, v3, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_15
    :try_start_d
    sget-object v0, Lcom/amap/api/col/l3/lf;->K:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    aput-byte v7, v12, v14

    goto :goto_16

    :cond_29
    sget-object v0, Lcom/amap/api/col/l3/lf;->K:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v15, v0

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v0

    invoke-static {v0, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    add-int/2addr v14, v0

    goto :goto_17

    :catchall_d
    move-exception v0

    invoke-static {v0, v3, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    :goto_16
    add-int/2addr v14, v6

    :goto_17
    :try_start_e
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->x:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    add-int/2addr v14, v0

    goto :goto_18

    :catchall_e
    move-exception v0

    const-string v2, "buildV4Dot213"

    invoke-static {v0, v3, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    :goto_18
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->y:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v12, v14

    add-int/2addr v14, v6

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v12, v14

    add-int/2addr v14, v6

    iget v0, v1, Lcom/amap/api/col/l3/lf;->z:I

    and-int/lit8 v2, v0, 0x3

    int-to-byte v0, v0

    aput-byte v0, v12, v14

    add-int/2addr v14, v6

    const-string v0, "mcc"

    const-string v15, "signal"

    const/16 v13, -0x80

    const/16 v10, 0x7f

    if-ne v2, v6, :cond_2f

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    const-string v0, "mnc"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    const-string v0, "lac"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/lj;->b(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    invoke-static {v2, v7, v12, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v14, v2

    const-string v2, "cellid"

    invoke-direct {v1, v2}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/col/l3/lj;->c(Ljava/lang/String;)[B

    move-result-object v2

    array-length v5, v2

    invoke-static {v2, v7, v12, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v14, v2

    invoke-direct {v1, v15}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v10, :cond_2a

    :goto_19
    const/4 v2, 0x0

    goto :goto_1a

    :cond_2a
    if-ge v2, v13, :cond_2b

    goto :goto_19

    :cond_2b
    :goto_1a
    int-to-byte v2, v2

    aput-byte v2, v12, v14

    add-int/2addr v14, v6

    invoke-static {v7, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v2

    array-length v5, v2

    invoke-static {v2, v7, v12, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x2

    add-int/2addr v14, v2

    iget-object v2, v1, Lcom/amap/api/col/l3/lf;->B:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2c

    aput-byte v7, v12, v14

    add-int/2addr v14, v6

    goto/16 :goto_20

    :cond_2c
    iget-object v2, v1, Lcom/amap/api/col/l3/lf;->B:Ljava/lang/String;

    const-string v5, "\\*"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    int-to-byte v5, v2

    aput-byte v5, v12, v14

    add-int/2addr v14, v6

    const/4 v5, 0x0

    :goto_1b
    if-ge v5, v2, :cond_32

    invoke-direct {v1, v0, v5}, Lcom/amap/api/col/l3/lf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/amap/api/col/l3/lj;->b(Ljava/lang/String;)[B

    move-result-object v6

    array-length v13, v6

    invoke-static {v6, v7, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v14, v6

    const-string v6, "cellid"

    invoke-direct {v1, v6, v5}, Lcom/amap/api/col/l3/lf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/api/col/l3/lj;->c(Ljava/lang/String;)[B

    move-result-object v6

    array-length v13, v6

    invoke-static {v6, v7, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6

    add-int/2addr v14, v6

    invoke-direct {v1, v15, v5}, Lcom/amap/api/col/l3/lf;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v6, v10, :cond_2d

    :goto_1c
    const/4 v6, 0x0

    goto :goto_1d

    :cond_2d
    const/16 v13, -0x80

    if-ge v6, v13, :cond_2e

    goto :goto_1c

    :cond_2e
    :goto_1d
    int-to-byte v6, v6

    aput-byte v6, v12, v14

    const/4 v6, 0x1

    add-int/2addr v14, v6

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    const/16 v13, -0x80

    goto :goto_1b

    :cond_2f
    if-ne v2, v5, :cond_32

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    const-string v0, "sid"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    const-string v0, "nid"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    const-string v0, "bid"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->b(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    const-string v0, "lon"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->c(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    const-string v0, "lat"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3/lj;->c(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    invoke-direct {v1, v15}, Lcom/amap/api/col/l3/lf;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v10, :cond_30

    :goto_1e
    const/4 v0, 0x0

    goto :goto_1f

    :cond_30
    const/16 v2, -0x80

    if-ge v0, v2, :cond_31

    goto :goto_1e

    :cond_31
    :goto_1f
    int-to-byte v0, v0

    aput-byte v0, v12, v14

    const/4 v2, 0x1

    add-int/2addr v14, v2

    invoke-static {v7, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v0

    array-length v5, v0

    invoke-static {v0, v7, v12, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x2

    add-int/2addr v14, v5

    aput-byte v7, v12, v14

    add-int/2addr v14, v2

    :cond_32
    :goto_20
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->D:Ljava/lang/String;

    if-eqz v0, :cond_33

    iget v2, v1, Lcom/amap/api/col/l3/lf;->z:I

    const/16 v5, 0x8

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_33

    :try_start_f
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    const/16 v5, 0x3c

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-byte v5, v2

    aput-byte v5, v12, v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    add-int/2addr v14, v2

    goto :goto_21

    :catch_0
    :cond_33
    aput-byte v7, v12, v14

    const/4 v2, 0x1

    add-int/2addr v14, v2

    :goto_21
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->C:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v5, v1, Lcom/amap/api/col/l3/lf;->z:I

    const/4 v6, 0x4

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_3f

    if-lez v2, :cond_3f

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3/kz;

    iget-boolean v5, v5, Lcom/amap/api/col/l3/kz;->o:Z

    if-nez v5, :cond_34

    add-int/lit8 v2, v2, -0x1

    :cond_34
    int-to-byte v5, v2

    aput-byte v5, v12, v14

    const/4 v5, 0x1

    add-int/2addr v14, v5

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v2, :cond_3e

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amap/api/col/l3/kz;

    iget-boolean v15, v13, Lcom/amap/api/col/l3/kz;->o:Z

    if-eqz v15, :cond_3d

    iget v15, v13, Lcom/amap/api/col/l3/kz;->k:I

    const/16 v17, 0x63

    if-eq v15, v5, :cond_39

    const/4 v5, 0x3

    if-eq v15, v5, :cond_39

    const/4 v5, 0x4

    if-ne v15, v5, :cond_35

    goto/16 :goto_25

    :cond_35
    const/4 v5, 0x2

    if-ne v15, v5, :cond_3d

    int-to-byte v5, v15

    iget-boolean v15, v13, Lcom/amap/api/col/l3/kz;->n:Z

    if-eqz v15, :cond_36

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    :cond_36
    aput-byte v5, v12, v14

    add-int/lit8 v14, v14, 0x1

    iget v5, v13, Lcom/amap/api/col/l3/kz;->a:I

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->g:I

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->h:I

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->i:I

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->f:I

    invoke-static {v5, v11}, Lcom/amap/api/col/l3/lj;->b(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->e:I

    invoke-static {v5, v11}, Lcom/amap/api/col/l3/lj;->b(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->j:I

    if-le v5, v10, :cond_37

    :goto_23
    const/16 v5, 0x63

    goto :goto_24

    :cond_37
    const/16 v15, -0x80

    if-ge v5, v15, :cond_38

    goto :goto_23

    :cond_38
    :goto_24
    int-to-byte v5, v5

    aput-byte v5, v12, v14

    const/4 v5, 0x1

    add-int/2addr v14, v5

    iget-short v5, v13, Lcom/amap/api/col/l3/kz;->l:S

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v13, v5

    invoke-static {v5, v7, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    goto :goto_28

    :cond_39
    :goto_25
    iget v5, v13, Lcom/amap/api/col/l3/kz;->k:I

    int-to-byte v5, v5

    iget-boolean v15, v13, Lcom/amap/api/col/l3/kz;->n:Z

    if-eqz v15, :cond_3a

    or-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    :cond_3a
    aput-byte v5, v12, v14

    add-int/lit8 v14, v14, 0x1

    iget v5, v13, Lcom/amap/api/col/l3/kz;->a:I

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->b:I

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->c:I

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->d:I

    invoke-static {v5, v11}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v15, v5

    invoke-static {v5, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v14, v5

    iget v5, v13, Lcom/amap/api/col/l3/kz;->j:I

    if-le v5, v10, :cond_3b

    :goto_26
    const/16 v5, 0x63

    goto :goto_27

    :cond_3b
    const/16 v15, -0x80

    if-ge v5, v15, :cond_3c

    goto :goto_26

    :cond_3c
    :goto_27
    int-to-byte v5, v5

    aput-byte v5, v12, v14

    const/4 v5, 0x1

    add-int/2addr v14, v5

    iget-short v5, v13, Lcom/amap/api/col/l3/kz;->l:S

    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v5

    array-length v13, v5

    invoke-static {v5, v7, v12, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    :goto_28
    add-int/2addr v14, v5

    :cond_3d
    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x1

    goto/16 :goto_22

    :cond_3e
    const/4 v2, 0x1

    goto :goto_29

    :cond_3f
    aput-byte v7, v12, v14

    const/4 v2, 0x1

    add-int/2addr v14, v2

    :goto_29
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->E:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_40

    aput-byte v7, v12, v14

    :goto_2a
    add-int/2addr v14, v2

    goto :goto_2e

    :cond_40
    aput-byte v2, v12, v14

    add-int/2addr v14, v2

    :try_start_10
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->E:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v7

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v5, v0

    invoke-static {v0, v7, v12, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    add-int/2addr v14, v0

    const/4 v5, 0x2

    :try_start_11
    aget-object v0, v2, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v5, v0

    int-to-byte v5, v5

    aput-byte v5, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v5, v0

    invoke-static {v0, v7, v12, v14, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_f

    add-int/2addr v14, v0

    goto :goto_2b

    :catchall_f
    move-exception v0

    :try_start_12
    const-string v5, "buildV4Dot214"

    invoke-static {v0, v3, v5}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    aput-byte v7, v12, v14

    add-int/lit8 v14, v14, 0x1

    :goto_2b
    const/4 v5, 0x1

    aget-object v0, v2, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v10, :cond_41

    :goto_2c
    const/4 v0, 0x0

    goto :goto_2d

    :cond_41
    const/16 v2, -0x80

    if-ge v0, v2, :cond_42

    goto :goto_2c

    :cond_42
    :goto_2d
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v12, v14
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    const/4 v2, 0x1

    goto :goto_2a

    :catchall_10
    move-exception v0

    const-string v2, "buildV4Dot216"

    invoke-static {v0, v3, v2}, Lcom/amap/api/col/l3/lg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "00:00:00:00:00:00"

    invoke-direct {v1, v0}, Lcom/amap/api/col/l3/lf;->a(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v7, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    aput-byte v7, v12, v14

    const/4 v2, 0x1

    add-int/2addr v14, v2

    invoke-static {v8}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    aput-byte v0, v12, v14

    goto :goto_2a

    :goto_2e
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v5, 0x19

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_43

    aput-byte v7, v12, v14

    add-int/2addr v14, v2

    const/4 v10, 0x0

    goto/16 :goto_34

    :cond_43
    int-to-byte v5, v3

    aput-byte v5, v12, v14

    add-int/2addr v14, v2

    invoke-static {}, Lcom/amap/api/col/l3/lj;->c()I

    move-result v2

    const/16 v5, 0x11

    if-lt v2, v5, :cond_44

    const/4 v2, 0x1

    goto :goto_2f

    :cond_44
    const/4 v2, 0x0

    :goto_2f
    const-wide/16 v5, 0x0

    if-eqz v2, :cond_45

    invoke-static {}, Lcom/amap/api/col/l3/lj;->b()J

    move-result-wide v5

    const-wide/16 v17, 0x3e8

    div-long v5, v5, v17

    :cond_45
    const/4 v8, 0x0

    :goto_30
    if-ge v8, v3, :cond_4a

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/wifi/ScanResult;

    iget-object v13, v11, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-direct {v1, v13}, Lcom/amap/api/col/l3/lf;->a(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    invoke-static {v13, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13

    add-int/2addr v14, v13

    :try_start_13
    iget-object v13, v11, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    array-length v15, v13

    int-to-byte v15, v15

    aput-byte v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v15, v13

    invoke-static {v13, v7, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v13
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    add-int/2addr v14, v13

    const/4 v13, 0x1

    goto :goto_31

    :catch_1
    aput-byte v7, v12, v14

    const/4 v13, 0x1

    add-int/2addr v14, v13

    :goto_31
    iget v15, v11, Landroid/net/wifi/ScanResult;->level:I

    if-le v15, v10, :cond_46

    :goto_32
    const/4 v15, 0x0

    goto :goto_33

    :cond_46
    const/16 v10, -0x80

    if-ge v15, v10, :cond_47

    goto :goto_32

    :cond_47
    :goto_33
    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v10

    aput-byte v10, v12, v14

    add-int/2addr v14, v13

    move v13, v8

    if-eqz v2, :cond_48

    iget-wide v7, v11, Landroid/net/wifi/ScanResult;->timestamp:J

    sub-long v7, v5, v7

    const-wide/32 v18, 0xf4240

    div-long v7, v7, v18

    const-wide/16 v18, 0x1

    add-long v7, v7, v18

    long-to-int v8, v7

    if-gez v8, :cond_49

    :cond_48
    const/4 v8, 0x0

    :cond_49
    invoke-static {v8, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v7

    array-length v8, v7

    const/4 v10, 0x0

    invoke-static {v7, v10, v12, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v14, v7

    iget v7, v11, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v7

    array-length v8, v7

    invoke-static {v7, v10, v12, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v7, v7

    add-int/2addr v14, v7

    add-int/lit8 v8, v13, 0x1

    const/4 v7, 0x0

    const/16 v10, 0x7f

    goto :goto_30

    :cond_4a
    const/4 v10, 0x0

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->H:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v10, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v14, v0

    :goto_34
    aput-byte v10, v12, v14

    const/4 v2, 0x1

    add-int/2addr v14, v2

    :try_start_14
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->I:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    const/16 v3, 0x7f

    if-le v2, v3, :cond_4b

    const/4 v0, 0x0

    :cond_4b
    if-nez v0, :cond_4c

    const/4 v2, 0x0

    aput-byte v2, v12, v14

    const/4 v2, 0x1

    goto :goto_35

    :cond_4c
    array-length v2, v0

    int-to-byte v2, v2

    aput-byte v2, v12, v14

    add-int/lit8 v14, v14, 0x1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_11

    add-int/2addr v14, v0

    goto :goto_36

    :catchall_11
    const/4 v2, 0x0

    aput-byte v2, v12, v14

    const/4 v2, 0x1

    :goto_35
    add-int/2addr v14, v2

    :goto_36
    const/4 v2, 0x2

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    :try_start_15
    iget-object v2, v1, Lcom/amap/api/col/l3/lf;->L:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4d

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->L:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v0

    :cond_4d
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-static {v0, v5, v12, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_13

    add-int/2addr v14, v3

    if-nez v2, :cond_4e

    :try_start_16
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->L:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v2, v0

    invoke-static {v0, v5, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_12

    add-int/2addr v14, v0

    :catchall_12
    :cond_4e
    const/4 v2, 0x2

    goto :goto_37

    :catchall_13
    const/4 v2, 0x2

    add-int/2addr v14, v2

    :goto_37
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/high16 v5, 0x10000

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-nez v3, :cond_4f

    const/4 v5, 0x0

    :try_start_17
    invoke-static {v5, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v0

    invoke-static {v0, v5, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_14

    :catchall_14
    add-int/2addr v14, v2

    goto/16 :goto_3d

    :cond_4f
    const/4 v5, 0x0

    :try_start_18
    invoke-static {v3, v9}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v6

    invoke-static {v6, v5, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_15

    :catchall_15
    add-int/2addr v14, v2

    const/4 v2, 0x0

    :goto_38
    if-ge v2, v3, :cond_53

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/col/l3/kx;

    :try_start_19
    iget-object v6, v5, Lcom/amap/api/col/l3/kx;->c:[B

    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v6
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_16

    add-int/2addr v14, v6

    goto :goto_39

    :catchall_16
    add-int/lit8 v14, v14, 0x6

    :goto_39
    :try_start_1a
    iget-object v6, v5, Lcom/amap/api/col/l3/kx;->a:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    const/16 v8, 0x20

    if-le v7, v8, :cond_50

    goto :goto_3a

    :cond_50
    array-length v8, v6

    :goto_3a
    const/4 v7, 0x0

    invoke-static {v6, v7, v12, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_17

    :catchall_17
    add-int/lit8 v14, v14, 0x20

    :try_start_1b
    iget-object v6, v5, Lcom/amap/api/col/l3/kx;->d:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_18

    :catchall_18
    add-int/lit8 v14, v14, 0x4

    :try_start_1c
    iget-object v6, v5, Lcom/amap/api/col/l3/kx;->e:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_19

    :catchall_19
    add-int/lit8 v14, v14, 0x4

    :try_start_1d
    iget v6, v5, Lcom/amap/api/col/l3/kx;->g:I
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1a

    const/16 v7, 0x7f

    if-le v6, v7, :cond_51

    const/4 v6, 0x0

    :try_start_1e
    iput v6, v5, Lcom/amap/api/col/l3/kx;->g:I

    const/16 v9, -0x80

    goto :goto_3b

    :cond_51
    const/4 v6, 0x0

    iget v8, v5, Lcom/amap/api/col/l3/kx;->g:I
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1b

    const/16 v9, -0x80

    if-ge v8, v9, :cond_52

    :try_start_1f
    iput v6, v5, Lcom/amap/api/col/l3/kx;->g:I

    :cond_52
    :goto_3b
    iget v6, v5, Lcom/amap/api/col/l3/kx;->g:I

    int-to-byte v6, v6

    aput-byte v6, v12, v14
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1c

    goto :goto_3c

    :catchall_1a
    const/16 v7, 0x7f

    :catchall_1b
    const/16 v9, -0x80

    :catchall_1c
    :goto_3c
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x4

    :try_start_20
    new-array v8, v6, [B

    iget v6, v5, Lcom/amap/api/col/l3/kx;->f:I

    invoke-static {v6, v8}, Lcom/amap/api/col/l3/lj;->b(I[B)[B

    move-result-object v6

    array-length v8, v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v12, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1d

    :catchall_1d
    add-int/lit8 v14, v14, 0x4

    const/4 v6, 0x4

    :try_start_21
    new-array v8, v6, [B

    iget v5, v5, Lcom/amap/api/col/l3/kx;->i:I

    invoke-static {v5, v8}, Lcom/amap/api/col/l3/lj;->b(I[B)[B

    move-result-object v5

    array-length v8, v5

    const/4 v10, 0x0

    invoke-static {v5, v10, v12, v14, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1e

    :catchall_1e
    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_38

    :cond_53
    :goto_3d
    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->J:[B

    if-eqz v0, :cond_54

    array-length v0, v0

    goto :goto_3e

    :cond_54
    const/4 v0, 0x0

    :goto_3e
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/amap/api/col/l3/lj;->a(I[B)[B

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v12, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    add-int/2addr v14, v2

    if-lez v0, :cond_55

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->J:[B

    array-length v2, v0

    invoke-static {v0, v4, v12, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, v1, Lcom/amap/api/col/l3/lf;->J:[B

    array-length v0, v0

    add-int/2addr v14, v0

    :cond_55
    new-array v0, v14, [B

    invoke-static {v12, v4, v0, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    invoke-virtual {v2, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/amap/api/col/l3/lj;->a(J)[B

    move-result-object v2

    array-length v3, v2

    add-int/2addr v3, v14

    new-array v3, v3, [B

    invoke-static {v0, v4, v3, v4, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v2

    invoke-static {v2, v4, v3, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method
