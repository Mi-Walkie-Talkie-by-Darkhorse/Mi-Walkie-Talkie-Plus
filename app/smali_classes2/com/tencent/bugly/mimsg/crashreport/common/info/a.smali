.class public final Lcom/tencent/bugly/mimsg/crashreport/common/info/a;
.super Ljava/lang/Object;
.source "BUGLY"


# static fields
.field private static ab:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;


# instance fields
.field public A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public B:Z

.field public C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Lcom/tencent/bugly/mimsg/crashreport/a;

.field public E:Landroid/content/SharedPreferences;

.field private final F:Landroid/content/Context;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:J

.field private Q:J

.field private R:J

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Ljava/util/Map;
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

.field private V:Z

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/Boolean;

.field private Z:Ljava/lang/String;

.field public final a:J

.field private aa:Ljava/util/Map;
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

.field private ac:I

.field private ad:I

.field private ae:Ljava/util/Map;
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

.field private af:Ljava/util/Map;
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

.field private ag:Ljava/util/Map;
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

.field private ah:Z

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private final an:Ljava/lang/Object;

.field private final ao:Ljava/lang/Object;

.field private final ap:Ljava/lang/Object;

.field private final aq:Ljava/lang/Object;

.field private final ar:Ljava/lang/Object;

.field private final as:Ljava/lang/Object;

.field private final at:Ljava/lang/Object;

.field public final b:B

.field public c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public e:Z

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/lang/String;

.field public q:J

.field public r:J

.field public s:J

.field public t:J

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Z

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ab:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, -0x1

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->e:Z

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->I:Ljava/lang/String;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->K:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->L:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->M:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->N:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->O:Ljava/lang/String;

    iput-wide v6, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->P:J

    iput-wide v6, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Q:J

    iput-wide v6, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->R:J

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->T:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->U:Ljava/util/Map;

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->V:Z

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->W:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->X:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Y:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Z:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->n:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->aa:Ljava/util/Map;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->o:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ac:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ad:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->af:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ag:Ljava/util/Map;

    const-string v0, "unknown"

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->p:Ljava/lang/String;

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->q:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->r:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->s:J

    iput-wide v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->t:J

    iput-boolean v3, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->u:Z

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->v:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->w:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->x:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->y:Z

    iput-boolean v3, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->z:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->A:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ai:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->aj:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ak:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->al:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->am:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->B:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->C:Ljava/util/List;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->D:Lcom/tencent/bugly/mimsg/crashreport/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->an:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ao:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ap:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->aq:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ar:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->as:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->at:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->a:J

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    iput-byte v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->b:B

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->b(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->v:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->d:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->o:Ljava/util/List;

    const-string v0, "BUGLY_APPID"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->X:Ljava/lang/String;

    :cond_1
    const-string v0, "BUGLY_APP_VERSION"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->j:Ljava/lang/String;

    :cond_2
    const-string v0, "BUGLY_APP_CHANNEL"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->l:Ljava/lang/String;

    :cond_3
    const-string v0, "BUGLY_ENABLE_DEBUG"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->u:Z

    :cond_4
    const-string v0, "com.tencent.rdm.uuid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->x:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    :try_start_2
    const-string v0, "bugly_db_mimsg"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->z:Z

    const-string v0, "App is first time to be installed on the device."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_6
    :goto_2
    const-string v0, "BUGLY_COMMON_VALUES"

    invoke-static {v0, p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->E:Landroid/content/SharedPreferences;

    const-string v0, "com info create end"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-boolean v1, Lcom/tencent/bugly/mimsg/b;->c:Z

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static J()I
    .locals 1

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->c()I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/tencent/bugly/mimsg/crashreport/common/info/a;
    .locals 2

    const-class v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ab:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    invoke-direct {v0, p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ab:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    :cond_0
    sget-object v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ab:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized b()Lcom/tencent/bugly/mimsg/crashreport/common/info/a;
    .locals 2

    const-class v0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ab:Lcom/tencent/bugly/mimsg/crashreport/common/info/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    const-string v0, "2.6.5"

    return-object v0
.end method


# virtual methods
.method public final A()V
    .locals 2

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final B()I
    .locals 2

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final C()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final D()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->af:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->af:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final E()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->aq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ag:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ag:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final F()I
    .locals 2

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ar:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ac:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final G()I
    .locals 1

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ad:I

    return v0
.end method

.method public final H()Z
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized I()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/mimsg/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final K()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ai:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ai:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ai:Ljava/lang/String;

    return-object v0
.end method

.method public final L()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->aj:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->aj:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ak:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ak:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ak:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->al:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->al:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->al:Ljava/lang/String;

    return-object v0
.end method

.method public final P()J
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(I)V
    .locals 5

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ar:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ac:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ac:I

    const-string v2, "user scene tag %d changed to tag %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ac:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->X:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ao:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ah:Z

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->D:Lcom/tencent/bugly/mimsg/crashreport/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->D:Lcom/tencent/bugly/mimsg/crashreport/a;

    invoke-interface {v0, p1}, Lcom/tencent/bugly/mimsg/crashreport/a;->setNativeIsAppForeground(Z)Z

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ah:Z

    return v0
.end method

.method public final b(I)V
    .locals 4

    const/16 v1, 0x5e20

    iget v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ad:I

    if-eq v0, v1, :cond_0

    iput v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ad:I

    const-string v1, "server scene tag %d changed to tag %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget v3, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ad:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "10000"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->I:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->H:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->at:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->af:Ljava/util/Map;

    const-string v2, "E8"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "server key&value should not be empty %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->aq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ag:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 2

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->an:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized d(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->an:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G:Ljava/lang/String;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->G:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->X:Ljava/lang/String;

    goto :goto_0
.end method

.method public final f(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->as:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->I:Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/tencent/bugly/mimsg/proguard/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key should not be empty %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->H:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->H:Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->H:Ljava/lang/String;

    goto :goto_0
.end method

.method public final declared-synchronized i()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->J:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->K:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->V:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->L:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->L:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->L:Ljava/lang/String;

    goto :goto_0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->V:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->M:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->M:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->M:Ljava/lang/String;

    goto :goto_0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->V:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->N:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->N:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->N:Ljava/lang/String;

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->V:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->O:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->O:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->O:Ljava/lang/String;

    goto :goto_0
.end method

.method public final o()J
    .locals 4

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->P:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->P:J

    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->P:J

    return-wide v0
.end method

.method public final p()J
    .locals 4

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Q:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->f()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Q:J

    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Q:J

    return-wide v0
.end method

.method public final q()J
    .locals 4

    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->R:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->R:J

    :cond_0
    iget-wide v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->R:J

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->S:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->a(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->S:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->S:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->T:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->T:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    const-string v1, "BuglySdkInfos"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ao:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/Throwable;)Z

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->A:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v1, "["

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_2
    const-string v0, "SDK_INFO"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->am:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/AppInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->am:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->am:Ljava/lang/String;

    return-object v0
.end method

.method public final declared-synchronized v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/mimsg/crashreport/common/info/PlugInBean;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->W:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->W:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->W:Ljava/lang/String;

    return-object v0
.end method

.method public final x()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Y:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->h(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Y:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Y:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Z:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->F:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/mimsg/crashreport/common/info/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Z:Ljava/lang/String;

    const-string v0, "rom:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Z:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/tencent/bugly/mimsg/proguard/x;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->Z:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ap:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/tencent/bugly/mimsg/crashreport/common/info/a;->ae:Ljava/util/Map;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
